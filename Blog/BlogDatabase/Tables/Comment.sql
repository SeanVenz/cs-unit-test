﻿CREATE TABLE [dbo].[Comment]
(
	[Id] INT NOT NULL PRIMARY KEY IDENTITY, 
	[UserId] INT NOT NULL, 
	[PostId] INT NOT NULL, 
	[Content] TEXT NOT NULL, 
	[DateTimeCreated] DATETIME NOT NULL, 
	[DateTimeUpdated] DATETIME NOT NULL, 
	CONSTRAINT [FK_CommentUser] FOREIGN KEY ([UserId]) REFERENCES [dbo].[User]([Id]) ON DELETE CASCADE,
	CONSTRAINT [FK_CommentPost] FOREIGN KEY ([PostId]) REFERENCES [dbo].[Post]([Id]) ON DELETE CASCADE
)
GO