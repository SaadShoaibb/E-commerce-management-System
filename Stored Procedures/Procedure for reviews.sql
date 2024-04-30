CREATE PROCEDURE SubmitReview
    @Rating tinyint,
    @Comment text,
    @CustomerID int,
    @OrderedProductID int
AS
BEGIN
    INSERT INTO Review (Rating, Comment, CustomerID, OrderedProductID)
    VALUES (@Rating, @Comment, @CustomerID, @OrderedProductID);
END;

EXEC SubmitReview
    @Rating = 5,
    @Comment = 'Great product!',
    @CustomerID = 1,
    @OrderedProductID = 123;