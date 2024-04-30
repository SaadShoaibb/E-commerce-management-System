CREATE TRIGGER 
UpdateProductStock
ON OrderedProduct
AFTER INSERT
AS
BEGIN
    UPDATE vp
    SET Quantity = CASE
                        WHEN vp.Quantity - i.Quantity >= 0 THEN vp.Quantity - i.Quantity
                        ELSE 0  -- Set to 0 if the quantity would go negative
                    END
    FROM VendorProduct vp
    JOIN inserted i ON vp.VendorProductID = i.VendorProductID;
END;
