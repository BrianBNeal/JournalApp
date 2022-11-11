/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

--USER
IF NOT EXISTS(SELECT 1 FROM [User])
BEGIN
    INSERT INTO [User]
        (FirstName, LastName, UserName, FirebaseUID)
    VALUES ('Brian', 'Neal', 'brianbneal@gmail.com', 'oBcmoafWnXPRMF0Y7ApltJIR1Co2')
END;

--TAG
IF NOT EXISTS(SELECT 1 FROM Tag)
BEGIN
    INSERT INTO Tag
        ([Name])
    VALUES ('C#'),
        ('SQL'),
        ('Web'),
        ('API'),
        ('JavaScript')
END;

--MOOD
IF NOT EXISTS(SELECT 1 FROM Mood)
BEGIN
    INSERT INTO Mood
        ([Name])
    VALUES ('Good'),
        ('Interested'),
        ('Bored'),
        ('Confused'),
        ('Excited'),
        ('Not Sure Yet')
END;

--ENTRY
IF NOT EXISTS(SELECT 1 FROM [Entry])
BEGIN
    INSERT INTO [Entry]
        (Title, [Text], [Date], AuthorId)
    VALUES ('First Entry', 'This is the first entry. The first of MANY!!!', GETDATE(), 1)
END;

--ENTRY TAGS
IF NOT EXISTS(SELECT 1 FROM EntryTag)
BEGIN
    INSERT INTO EntryTag
        (EntryId, TagId)
    VALUES (1,1),
        (1,2),
        (1,3),
        (1,4)
END;

--ENTRY MOODS
IF NOT EXISTS(SELECT 1 FROM EntryMood)
BEGIN
    INSERT INTO EntryMood
        (EntryId, MoodId)
    VALUES (1,1),
        (1,2),
        (1,5)
END;
