CREATE TABLE [dbo].[Customer] (
    [CustomerID] INT           IDENTITY (1, 1) NOT NULL,
    [FirstName]  VARCHAR (255) NOT NULL,
    [LastName]   VARCHAR (255) NOT NULL,
    [DOB]        DATE          NOT NULL,
    [Email]      VARCHAR (255) NOT NULL,
    [Password]   VARCHAR (255) NOT NULL,
    [Contact]    VARCHAR (255) NOT NULL,
    PRIMARY KEY CLUSTERED ([CustomerID] ASC)
);


GO

