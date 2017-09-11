CREATE TABLE [dbo].[CategoryRelation]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SourceCategoryId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TargetCatalogId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TargetCategoryId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[CategoryRelation] ADD CONSTRAINT [PK_dbo.CategoryRelation] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_SourceCategoryId] ON [dbo].[CategoryRelation] ([SourceCategoryId])
GO
CREATE NONCLUSTERED INDEX [IX_TargetCatalogId] ON [dbo].[CategoryRelation] ([TargetCatalogId])
GO
CREATE NONCLUSTERED INDEX [IX_TargetCategoryId] ON [dbo].[CategoryRelation] ([TargetCategoryId])
GO
ALTER TABLE [dbo].[CategoryRelation] ADD CONSTRAINT [FK_dbo.CategoryRelation_dbo.Catalog_TargetCatalogId] FOREIGN KEY ([TargetCatalogId]) REFERENCES [dbo].[Catalog] ([Id])
GO
ALTER TABLE [dbo].[CategoryRelation] ADD CONSTRAINT [FK_dbo.CategoryRelation_dbo.Category_SourceCategoryId] FOREIGN KEY ([SourceCategoryId]) REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[CategoryRelation] ADD CONSTRAINT [FK_dbo.CategoryRelation_dbo.Category_TargetCategoryId] FOREIGN KEY ([TargetCategoryId]) REFERENCES [dbo].[Category] ([Id])
GO
