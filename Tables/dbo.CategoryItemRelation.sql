CREATE TABLE [dbo].[CategoryItemRelation]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Priority] [int] NOT NULL,
[ItemId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CategoryId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CatalogId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Discriminator] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[CategoryItemRelation] ADD CONSTRAINT [PK_dbo.CategoryItemRelation] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_CatalogId] ON [dbo].[CategoryItemRelation] ([CatalogId])
GO
CREATE NONCLUSTERED INDEX [IX_CategoryId] ON [dbo].[CategoryItemRelation] ([CategoryId])
GO
CREATE NONCLUSTERED INDEX [IX_ItemId] ON [dbo].[CategoryItemRelation] ([ItemId])
GO
ALTER TABLE [dbo].[CategoryItemRelation] ADD CONSTRAINT [FK_dbo.CategoryItemRelation_dbo.Catalog_CatalogId] FOREIGN KEY ([CatalogId]) REFERENCES [dbo].[Catalog] ([Id])
GO
ALTER TABLE [dbo].[CategoryItemRelation] ADD CONSTRAINT [FK_dbo.CategoryItemRelation_dbo.Category_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[CategoryItemRelation] ADD CONSTRAINT [FK_dbo.CategoryItemRelation_dbo.Item_ItemId] FOREIGN KEY ([ItemId]) REFERENCES [dbo].[Item] ([Id]) ON DELETE CASCADE
GO
