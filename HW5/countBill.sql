use hw5;
GO

--create a stored procedure to count the bill of a specific user with user's telNo
CREATE PROCEDURE countBill
    @telNo NVARCHAR(16)
AS
BEGIN
    DECLARE @totalTime INT;
    DECLARE @totalBill DECIMAL(10,2);
    DECLARE @billPerSec DECIMAL(3,2);

    SET @billPerSec = (
        SELECT c.bps
        FROM contracts c
        JOIN users u on c.cType = u.cType
        WHERE u.telNo = @telNo
    );

    SET @totalTime = (
        SELECT SUM(DATEDIFF(second, startTime, endTime))
        FROM communications
        WHERE telNo = @telNo
    );

    SET @totalBill = @totalTime * @billPerSec;
    SELECT @totalBill BILL;
END;
GO