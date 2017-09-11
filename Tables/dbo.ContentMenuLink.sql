CREATE TABLE [dbo].[ContentMenuLink]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Title] [nvarchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Url] [nvarchar] (2048) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Priority] [int] NOT NULL,
[MenuLinkListId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AssociatedObjectType] [nvarchar] (254) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AssociatedObjectId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AssociatedObjectName] [nvarchar] (254) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[ContentMenuLink] ADD CONSTRAINT [PK_dbo.ContentMenuLink] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_MenuLinkListId] ON [dbo].[ContentMenuLink] ([MenuLinkListId])
GO
ALTER TABLE [dbo].[ContentMenuLink] ADD CONSTRAINT [FK_dbo.ContentMenuLink_dbo.ContentMenuLinkList_MenuLinkListId] FOREIGN KEY ([MenuLinkListId]) REFERENCES [dbo].[ContentMenuLinkList] ([Id]) ON DELETE CASCADE
GO
