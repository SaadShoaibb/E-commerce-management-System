CREATE PROCEDURE PlaceOrder
    @CustomerID int,
    @AddressID int,
    @VendorCourierID int,
    @TrackingID varchar(255),
    @ProductID int,
    @Quantity int
AS
BEGIN
    DECLARE @VendorProductID int;

    -- Assuming you have a mechanism to get VendorProductID based on ProductID
    SELECT @VendorProductID = VendorProductID
    FROM VendorProduct
    WHERE ProductID = @ProductID;

    INSERT INTO Orders (CustomerID, OrderDate, AddressID, VendorCourierID, TrackingID)
    VALUES (@CustomerID, GETDATE(), @AddressID, @VendorCourierID, @TrackingID);

    DECLARE @OrderID int;
    SET @OrderID = SCOPE_IDENTITY();

    INSERT INTO OrderedProduct (VendorProductID, OrderID, Quantity)
    VALUES (@VendorProductID, @OrderID, @Quantity);
END;




-- Sample values
DECLARE @CustomerID int = ;            -- Replace with the actual CustomerID
DECLARE @AddressID int = 1;             -- Replace with the actual AddressID
DECLARE @VendorCourierID int = 1;       -- Replace with the actual VendorCourierID
DECLARE @TrackingID varchar(255) = 'XYZ123';  -- Replace with the actual TrackingID
DECLARE @ProductID int = 1;             -- Replace with the actual ProductID
DECLARE @Quantity int = 2;              -- Replace with the actual Quantity

-- Execute the stored procedure
EXEC PlaceOrder
    @CustomerID = @CustomerID,
    @AddressID = @AddressID,
    @VendorCourierID = @VendorCourierID,
    @TrackingID = @TrackingID,
    @ProductID = @ProductID,
    @Quantity = @Quantity;
