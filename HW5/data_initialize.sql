use hw5;

--insert sample data to contracts
INSERT INTO contracts(cType, bps) VALUES('A', 0.1);
INSERT INTO contracts(cType, bps) VALUES('B', 0.15);
GO

--insert sample data to users
INSERT INTO users(telNo, cType, contractStart, cutDate) VALUES('0930', 'A', convert(date, '2020-01-30'), 30);
INSERT INTO users(telNo, cType, contractStart, cutDate) VALUES('0933', 'B', convert(date, '2023-06-25'), 25);
GO

--insert sample data to communications
INSERT INTO communications(telNo, outTel, startTime, endTime)
VALUES('0930', '0928', convert(datetime, '2023-11-01 13:00:05'), convert(datetime, '2023-11-01 13:31:34'));
INSERT INTO communications(telNo, outTel, startTime, endTime)
VALUES('0933', '0927', convert(datetime, '2023-11-03 16:08:42'), convert(datetime, '2023-11-03 16:51:23'));
INSERT INTO communications(telNo, outTel, startTime, endTime)
VALUES('0930', '0920', convert(datetime, '2023-11-04 15:00:33'), convert(datetime, '2023-11-04 15:54:55'));
GO