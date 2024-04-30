CREATE TABLE [dbo].[ZipCode] (
    [ZipCodeID]  INT IDENTITY (1, 1) NOT NULL,
    [CityID]     INT NOT NULL,
    [ProvinceID] INT NOT NULL,
    [CountryID]  INT NOT NULL,
    PRIMARY KEY CLUSTERED ([ZipCodeID] ASC),
    FOREIGN KEY ([CityID]) REFERENCES [dbo].[City] ([CityID]),
    FOREIGN KEY ([CountryID]) REFERENCES [dbo].[Country] ([CountryID]),
    FOREIGN KEY ([ProvinceID]) REFERENCES [dbo].[Province] ([ProvinceID])
);


GO

