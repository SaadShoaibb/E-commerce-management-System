CREATE TABLE [dbo].[VendorProduct] (
    [VendorProductID] INT             IDENTITY (1, 1) NOT NULL,
    [VendorID]        INT             NOT NULL,
    [ProductID]       INT             NOT NULL,
    [Price]           DECIMAL (19, 2) NOT NULL,
    [Quantity]        INT             NOT NULL,
    [Description]     TEXT            NOT NULL,
    PRIMARY KEY CLUSTERED ([VendorProductID] ASC),
    FOREIGN KEY ([ProductID]) REFERENCES [dbo].[Product] ([ProductID]),
    FOREIGN KEY ([VendorID]) REFERENCES [dbo].[Vendor] ([VendorID])
);


GO

