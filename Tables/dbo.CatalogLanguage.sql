CREATE TABLE [dbo].[CatalogLanguage]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Language] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CatalogId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
GO
ALTER TABLE [dbo].[CatalogLanguage] ADD CONSTRAINT [PK_dbo.CatalogLanguage] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_CatalogId] ON [dbo].[CatalogLanguage] ([CatalogId])
GO
ALTER TABLE [dbo].[CatalogLanguage] ADD CONSTRAINT [FK_dbo.CatalogLanguage_dbo.Catalog_CatalogId] FOREIGN KEY ([CatalogId]) REFERENCES [dbo].[Catalog] ([Id])
GO
