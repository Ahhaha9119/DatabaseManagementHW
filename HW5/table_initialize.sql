use hw5;

DROP TABLE IF EXISTS contracts;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS communications;
GO

CREATE TABLE contracts(
    cType NVARCHAR(8) PRIMARY KEY,
    bps DECIMAL(3,2)
);
GO

CREATE TABLE users(
    telNo NVARCHAR(16) PRIMARY KEY,
    cType NVARCHAR(8) FOREIGN KEY REFERENCES contracts(cType),
    contractStart DATE,
    cutDate INT
);
GO


CREATE TABLE communications(
    comID INT IDENTITY(1,1) PRIMARY KEY,
    telNo NVARCHAR(16) FOREIGN KEY REFERENCES users(telNo),
    outTel NVARCHAR(16) NOT NULL,
    startTime DATETIME,
    endTime DATETIME
);
GO
