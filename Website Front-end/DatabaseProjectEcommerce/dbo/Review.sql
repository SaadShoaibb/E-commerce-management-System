CREATE TABLE [dbo].[Review] (
    [ReviewID]         INT     IDENTITY (1, 1) NOT NULL,
    [Rating]           TINYINT NOT NULL,
    [Comment]          TEXT    NULL,
    [CustomerID]       INT     NOT NULL,
    [OrderedProductID] INT     NOT NULL,
    PRIMARY KEY CLUSTERED ([ReviewID] ASC),
    FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customer] ([CustomerID]),
    FOREIGN KEY ([OrderedProductID]) REFERENCES [dbo].[OrderedProduct] ([OrderedProductID])
);


GO

