CREATE TABLE [dbo].[Vendor] (
    [VendorID] INT           IDENTITY (1, 1) NOT NULL,
    [Name]     VARCHAR (255) NOT NULL,
    [Address]  TEXT          NOT NULL,
    [Email]    VARCHAR (255) NOT NULL,
    [Password] VARCHAR (255) NOT NULL,
    [Contact]  VARCHAR (255) NOT NULL,
    PRIMARY KEY CLUSTERED ([VendorID] ASC)
);


GO

