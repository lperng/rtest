CREATE TABLE [dbo].[Property]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TargetType] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsKey] [bit] NOT NULL,
[IsSale] [bit] NOT NULL,
[IsEnum] [bit] NOT NULL,
[IsInput] [bit] NOT NULL,
[IsRequired] [bit] NOT NULL,
[IsMultiValue] [bit] NOT NULL,
[IsLocaleDependant] [bit] NOT NULL,
[AllowAlias] [bit] NOT NULL,
[PropertyValueType] [int] NOT NULL,
[CatalogId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CategoryId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[Property] ADD CONSTRAINT [PK_dbo.Property] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_CatalogId] ON [dbo].[Property] ([CatalogId])
GO
CREATE NONCLUSTERED INDEX [IX_CategoryId] ON [dbo].[Property] ([CategoryId])
GO
ALTER TABLE [dbo].[Property] ADD CONSTRAINT [FK_dbo.Property_dbo.Catalog_CatalogId] FOREIGN KEY ([CatalogId]) REFERENCES [dbo].[Catalog] ([Id])
GO
ALTER TABLE [dbo].[Property] ADD CONSTRAINT [FK_dbo.Property_dbo.Category_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Category] ([Id])
GO
