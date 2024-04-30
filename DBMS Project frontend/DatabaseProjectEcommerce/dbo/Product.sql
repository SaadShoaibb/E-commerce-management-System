CREATE TABLE [dbo].[Product] (
    [ProductID]   INT           IDENTITY (1, 1) NOT NULL,
    [ProductName] VARCHAR (255) NOT NULL,
    [CategoryID]  INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([ProductID] ASC),
    FOREIGN KEY ([CategoryID]) REFERENCES [dbo].[Category] ([CategoryID])
);


GO

select * from Category