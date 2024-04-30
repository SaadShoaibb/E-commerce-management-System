CREATE TABLE [dbo].[Orders] (
    [OrderID]         INT           IDENTITY (1, 1) NOT NULL,
    [CustomerID]      INT           NOT NULL,
    [OrderDate]       DATE          NOT NULL,
    [AddressID]       INT           NOT NULL,
    [VendorCourierID] INT           NOT NULL,
    [TrackingID]      VARCHAR (255) NOT NULL,
    PRIMARY KEY CLUSTERED ([OrderID] ASC),
    FOREIGN KEY ([AddressID]) REFERENCES [dbo].[Address] ([AddressID]),
    FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customer] ([CustomerID]),
    FOREIGN KEY ([VendorCourierID]) REFERENCES [dbo].[VendorCourier] ([VendorCourierID])
);


GO

