CREATE TABLE [dbo].[VendorCourier] (
    [VendorCourierID] INT IDENTITY (1, 1) NOT NULL,
    [VendorID]        INT NOT NULL,
    [CourierID]       INT NOT NULL,
    PRIMARY KEY CLUSTERED ([VendorCourierID] ASC),
    FOREIGN KEY ([CourierID]) REFERENCES [dbo].[Courier] ([CourierID]),
    FOREIGN KEY ([VendorID]) REFERENCES [dbo].[Vendor] ([VendorID])
);


GO

