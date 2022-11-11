CREATE TABLE [dbo].[EntryMood]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
    [EntryId] INT NOT NULL, 
    [MoodId] INT NOT NULL, 
    CONSTRAINT [FK_EntryMood_Entry] FOREIGN KEY ([EntryId]) REFERENCES [Entry]([Id]), 
    CONSTRAINT [FK_EntryMood_Mood] FOREIGN KEY ([MoodId]) REFERENCES [Mood]([Id])
)
