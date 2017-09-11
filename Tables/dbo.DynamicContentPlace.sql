CREATE TABLE [dbo].[DynamicContentPlace]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ImageUrl] [nvarchar] (2048) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FolderId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[DynamicContentPlace] ADD CONSTRAINT [PK_dbo.DynamicContentPlace] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_FolderId] ON [dbo].[DynamicContentPlace] ([FolderId])
GO
ALTER TABLE [dbo].[DynamicContentPlace] ADD CONSTRAINT [FK_dbo.DynamicContentPlace_dbo.DynamicContentFolder_FolderId] FOREIGN KEY ([FolderId]) REFERENCES [dbo].[DynamicContentFolder] ([Id]) ON DELETE CASCADE
GO
