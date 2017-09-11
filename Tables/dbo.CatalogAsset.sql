CREATE TABLE [dbo].[CatalogAsset]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Url] [nvarchar] (2083) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [nvarchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MimeType] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Size] [bigint] NOT NULL,
[LanguageCode] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ItemId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[CatalogAsset] ADD CONSTRAINT [PK_dbo.CatalogAsset] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_ItemId] ON [dbo].[CatalogAsset] ([ItemId])
GO
ALTER TABLE [dbo].[CatalogAsset] ADD CONSTRAINT [FK_dbo.CatalogAsset_dbo.Item_ItemId] FOREIGN KEY ([ItemId]) REFERENCES [dbo].[Item] ([Id]) ON DELETE CASCADE
GO
