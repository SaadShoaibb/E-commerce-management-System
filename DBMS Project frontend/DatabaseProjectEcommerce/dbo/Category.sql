CREATE TABLE [dbo].[Category] (
    [CategoryID]   INT           IDENTITY (1, 1) NOT NULL,
    [CategoryName] VARCHAR (255) NOT NULL,
    PRIMARY KEY CLUSTERED ([CategoryID] ASC)
);


GO

select * from Category