CREATE TABLE [dbo].[CatalogImage]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Url] [nvarchar] (2083) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [nvarchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LanguageCode] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Group] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SortOrder] [int] NOT NULL,
[ItemId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CategoryId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[CatalogImage] ADD CONSTRAINT [PK_dbo.CatalogImage] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_CategoryId] ON [dbo].[CatalogImage] ([CategoryId])
GO
CREATE NONCLUSTERED INDEX [IX_ItemId] ON [dbo].[CatalogImage] ([ItemId])
GO
ALTER TABLE [dbo].[CatalogImage] ADD CONSTRAINT [FK_dbo.CatalogImage_dbo.Category_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Category] ([Id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CatalogImage] ADD CONSTRAINT [FK_dbo.CatalogImage_dbo.Item_ItemId] FOREIGN KEY ([ItemId]) REFERENCES [dbo].[Item] ([Id]) ON DELETE CASCADE
GO
