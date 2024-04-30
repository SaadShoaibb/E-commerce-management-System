CREATE TABLE [dbo].[Cart] (
    [CartID]      INT  IDENTITY (1, 1) NOT NULL,
    [DateCreated] DATE NOT NULL,
    [CustomerID]  INT  NOT NULL,
    PRIMARY KEY CLUSTERED ([CartID] ASC),
    FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customer] ([CustomerID])
);


GO

select * from cart