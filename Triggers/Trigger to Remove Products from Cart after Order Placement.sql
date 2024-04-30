CREATE TRIGGER RemoveFromCart
ON Orders
AFTER INSERT
AS
BEGIN
    DELETE FROM cp
    FROM CartProduct cp
    INNER JOIN inserted i ON cp.CartProductID = i.CustomerID;
END;