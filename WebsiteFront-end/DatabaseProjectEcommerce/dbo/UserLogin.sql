CREATE PROCEDURE dbo.UserLogin
    @Email varchar(255),
    @Password varchar(255)
AS
BEGIN
    SET NOCOUNT ON;

    DECLARE @CustomerID int;

    -- Check if the credentials are valid
    SELECT @CustomerID = CustomerID
    FROM Customer
    WHERE Email = @Email AND Password = @Password;

    -- Return CustomerID if valid, otherwise return -1
    IF @CustomerID IS NOT NULL
        SELECT @CustomerID;
    ELSE
        SELECT -1;
END;

GO

-- Sample values
DECLARE @Email varchar(255) = 'saads@gmail.com';
DECLARE @Password varchar(255) = 'saad123';

-- Execute the stored procedure
DECLARE @Result int;

EXEC @Result = dbo.UserLogin
    @Email = @Email,
    @Password = @Password;

-- Check the result
IF @Result >= 0
    PRINT 'Login successful. CustomerID: ' + CAST(@Result AS varchar(10));
ELSE
    PRINT 'Invalid credentials.';

