CREATE TABLE [dbo].[Categories]
(
	[Id] INT NOT NULL PRIMARY KEY Identity(1,1),
	[UserID] INT Not Null,
	[Name] Varchar(50) Not null,
	[Type] VARCHAR(20) NOT NULL
        CHECK ([Type] IN ('income', 'expense')),
	[CreatedAt] DATETIME NOT NULL DEFAULT GETDATE(),

	CONSTRAINT FK_Categories_User
        FOREIGN KEY ([UserID]) REFERENCES [dbo].[User]([Id])
)
