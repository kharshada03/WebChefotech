CREATE TABLE [dbo].[Table]
(
	[Id] INT NOT NULL PRIMARY KEY, 
    [Name] NVARCHAR(50) NULL, 
    [Contactno] NUMERIC(10) NULL, 
    [Emailid] VARCHAR(50) NULL, 
    [Gender] CHAR(10) NULL, 
    [Country] NVARCHAR(50) NULL, 
    [Bio] NVARCHAR(MAX) NULL, 
    [Orders] CHAR(10) NULL, 
    [ Speciality] NVARCHAR(MAX) NULL, 
    [MenuOrder] NVARCHAR(MAX) NULL, 
    [FoodPrice] NUMERIC NULL, 
    [Username] NVARCHAR(10) NULL, 
    [Password] NVARCHAR(10) NULL
)
