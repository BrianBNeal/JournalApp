CREATE TABLE [dbo].[Entry]
(
	[Id] INT NOT NULL IDENTITY, 
    [Title] VARCHAR(255) NOT NULL, 
    [Text] TEXT NOT NULL, 
    [Date] DATETIME NOT NULL, 
    [AuthorId] INT NOT NULL, 
    CONSTRAINT [PK_Entry] PRIMARY KEY ([Id]),  
    CONSTRAINT [FK_Entry_Author] FOREIGN KEY ([AuthorId]) REFERENCES [User]([Id])
)
