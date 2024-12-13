-- #startRegion : Insert User
CREATE PROCEDURE InsertUser
    @UserId NVARCHAR(50),
    @UserName NVARCHAR(50),
    @AccountNumber INT,
    @EmailAddress NVARCHAR(50),
    @PhoneNumber NVARCHAR(15),
    @Date DATETIME
AS
BEGIN
    INSERT INTO Users (UserId, UserName, AccountNumber, EmailAddress, PhoneNumber, Date)
    VALUES (@UserId, @UserName, @AccountNumber, @EmailAddress, @PhoneNumber, @Date)
END
-- #Endregion

-- #startRegion : Update User
CREATE PROCEDURE UpdateUser
    @UserId NVARCHAR(50),
    @UserName NVARCHAR(50),
    @AccountNumber INT,
    @EmailAddress NVARCHAR(50),
    @PhoneNumber NVARCHAR(15),
    @Date DATETIME
AS
BEGIN
    UPDATE Users
    SET UserName = @UserName,
        AccountNumber = @AccountNumber,
        EmailAddress = @EmailAddress,
        PhoneNumber = @PhoneNumber,
        Date = @Date
    WHERE UserId = @UserId
END
-- #Endregion

-- #startRegion : Delete User
CREATE PROCEDURE DeleteUser
    @UserId NVARCHAR(50)
AS
BEGIN
    DELETE FROM Users
    WHERE UserId = @UserId
END
-- #Endregion


-- #startRegion : Get User by Id
CREATE PROCEDURE GetUserById
    @UserId NVARCHAR(50)
AS
BEGIN
    SELECT UserId, UserName, AccountNumber, EmailAddress, PhoneNumber, Date
    FROM Users
    WHERE UserId = @UserId
END
-- #Endregion

-- #startRegion : Get All Users
CREATE PROCEDURE GetUsers
    -- @UserId NVARCHAR(50)
AS
BEGIN
    SELECT UserId, UserName, AccountNumber, EmailAddress, PhoneNumber, Date
    FROM Users
    -- WHERE UserId = @UserId
END
-- #Endregion