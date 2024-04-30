CREATE PROCEDURE InsertCustomer
    @FirstName varchar(255),
    @LastName varchar(255),
    @DOB date,
    @Email varchar(255),
    @Password varchar(255),
    @Contact varchar(255)
AS
BEGIN
    INSERT INTO Customer (FirstName, LastName, DOB, Email, Password, Contact)
    VALUES (@FirstName, @LastName, @DOB, @Email, @Password, @Contact);
END;


-- Sample values
DECLARE @FirstName varchar(255) = 'Saad';
DECLARE @LastName varchar(255) = 'Shoaib';
DECLARE @DOB date = '2002-01-01';
DECLARE @Email varchar(255) = 'saads@gmail.com';
DECLARE @Password varchar(255) = 'saad123';
DECLARE @Contact varchar(255) = '123456789';

-- Execute the stored procedure
EXEC InsertCustomer
    @FirstName = @FirstName,
    @LastName = @LastName,
    @DOB = @DOB,
    @Email = @Email,
    @Password = @Password,
    @Contact = @Contact;


CREATE PROCEDURE 
UpdateCustomer
    @CustomerID int,
    @FirstName varchar(255),
    @LastName varchar(255),
    @DOB date,
    @Email varchar(255),
    @Contact varchar(255)
AS
BEGIN
    UPDATE Customer
    SET FirstName = @FirstName, LastName = @LastName, DOB = @DOB, Email = @Email, Contact = @Contact
    WHERE CustomerID = @CustomerID;
END;





CREATE PROCEDURE DeleteCustomer
    @CustomerID int
AS
BEGIN
    DELETE FROM Customer
    WHERE CustomerID = @CustomerID;
END;

