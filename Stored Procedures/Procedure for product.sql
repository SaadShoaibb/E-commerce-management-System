
CREATE PROCEDURE InsertProduct
    @ProductName varchar(255),
    @CategoryID int
AS
BEGIN
    INSERT INTO Product (ProductName, CategoryID)
    VALUES (@ProductName, @CategoryID);
END;


CREATE PROCEDURE 
UpdateProduct
    @ProductID int,
    @ProductName varchar(255),
    @CategoryID int
AS
BEGIN
    UPDATE Product
    SET ProductName = @ProductName, CategoryID = @CategoryID
    WHERE ProductID = @ProductID;
END;



CREATE PROCEDURE
 DeleteProduct
    @ProductID int
AS
BEGIN
    DELETE FROM Product
    WHERE ProductID = @ProductID;
END;


-- Execute InsertProduct
EXEC InsertProduct
    @ProductName = 'NewProduct',
    @CategoryID = 2;

-- Execute UpdateProduct
EXEC UpdateProduct
    @ProductID = 1,
    @ProductName = 'UpdatedProduct',
    @CategoryID = 3;
