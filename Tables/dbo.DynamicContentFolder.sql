CREATE TABLE [dbo].[DynamicContentFolder]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ImageUrl] [nvarchar] (2048) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ParentFolderId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[DynamicContentFolder] ADD CONSTRAINT [PK_dbo.DynamicContentFolder] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_ParentFolderId] ON [dbo].[DynamicContentFolder] ([ParentFolderId])
GO
ALTER TABLE [dbo].[DynamicContentFolder] ADD CONSTRAINT [FK_dbo.DynamicContentFolder_dbo.DynamicContentFolder_ParentFolderId] FOREIGN KEY ([ParentFolderId]) REFERENCES [dbo].[DynamicContentFolder] ([Id])
GO
