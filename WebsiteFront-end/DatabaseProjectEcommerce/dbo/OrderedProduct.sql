CREATE TABLE [dbo].[OrderedProduct] (
    [OrderedProductID] INT IDENTITY (1, 1) NOT NULL,
    [VendorProductID]  INT NOT NULL,
    [OrderID]          INT NOT NULL,
    [Quantity]         INT NOT NULL,
    PRIMARY KEY CLUSTERED ([OrderedProductID] ASC),
    FOREIGN KEY ([OrderID]) REFERENCES [dbo].[Orders] ([OrderID]),
    FOREIGN KEY ([VendorProductID]) REFERENCES [dbo].[VendorProduct] ([VendorProductID])
);


GO

