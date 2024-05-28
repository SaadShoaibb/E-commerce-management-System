CREATE TABLE [dbo].[CartProduct] (
    [CartProductID]   INT IDENTITY (1, 1) NOT NULL,
    [VendorProductID] INT NOT NULL,
    [Quantity]        INT NOT NULL,
    [CartID]          INT NOT NULL,
    PRIMARY KEY CLUSTERED ([CartProductID] ASC),
    FOREIGN KEY ([CartID]) REFERENCES [dbo].[Cart] ([CartID]),
    FOREIGN KEY ([VendorProductID]) REFERENCES [dbo].[VendorProduct] ([VendorProductID])
);


GO

