CREATE TABLE [dbo].[Transactions]
(
	[Id] INT NOT NULL PRIMARY KEY Identity(1,1),
	[UserID] INT NOT nULL, 
	[CategoryID] INT Not null,
	[Amount] Decimal(10,2) NOt null,
	[Type] VARCHAR(20) NOT NULL
        CHECK ([Type] IN ('income', 'expense')),
	[Description] Varchar(255),
	[TransactionDate] Date Not NUll,
	[CreatedAt] DATETIME NOT NULL DEFAULT GETDATE(),

	FOREIGN KEY (UserID) REFERENCES [User](id),
    FOREIGN KEY (CategoryID) REFERENCES Categories(id)
)
