CREATE TABLE [dbo].[DynamicContentItem]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ContentTypeId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsMultilingual] [bit] NOT NULL,
[FolderId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ImageUrl] [nvarchar] (2048) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[DynamicContentItem] ADD CONSTRAINT [PK_dbo.DynamicContentItem] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_FolderId] ON [dbo].[DynamicContentItem] ([FolderId])
GO
ALTER TABLE [dbo].[DynamicContentItem] ADD CONSTRAINT [FK_dbo.DynamicContentItem_dbo.DynamicContentFolder_FolderId] FOREIGN KEY ([FolderId]) REFERENCES [dbo].[DynamicContentFolder] ([Id]) ON DELETE CASCADE
GO
