CREATE TRIGGER UpdateOrderedProductQuantity
ON OrderedProduct
AFTER INSERT
AS
BEGIN
    UPDATE op
    SET op.Quantity = op.Quantity - i.Quantity
    FROM OrderedProduct op
    INNER JOIN inserted i ON op.OrderedProductID = i.OrderedProductID;
END;

