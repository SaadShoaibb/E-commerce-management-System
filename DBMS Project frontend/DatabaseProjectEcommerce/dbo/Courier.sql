CREATE TABLE [dbo].[Courier] (
    [CourierID] INT           IDENTITY (1, 1) NOT NULL,
    [Name]      VARCHAR (255) NOT NULL,
    [Contact]   VARCHAR (255) NOT NULL,
    PRIMARY KEY CLUSTERED ([CourierID] ASC)
);


GO

