CREATE TABLE [dbo].[Address] (
    [AddressID]  INT           IDENTITY (1, 1) NOT NULL,
    [HouseNo]    VARCHAR (255) NOT NULL,
    [Street]     INT           NOT NULL,
    [CustomerID] INT           NOT NULL,
    [ZipCodeID]  INT           NOT NULL,
    [Area]       VARCHAR (255) NOT NULL,
    PRIMARY KEY CLUSTERED ([AddressID] ASC),
    FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customer] ([CustomerID]),
    FOREIGN KEY ([ZipCodeID]) REFERENCES [dbo].[ZipCode] ([ZipCodeID])
);


GO

