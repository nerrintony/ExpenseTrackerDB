CREATE TABLE [dbo].[User]
(
	[Id] INT NOT NULL Identity(1,1) PRIMARY KEY,
	[FullName] Varchar(50) NOT NULL,
	[Email] Varchar(50) NOT NULL,
	[Password] Varchar(50) NOT NULL,
	[CreatedAt] Datetime NOT NULL,
)
