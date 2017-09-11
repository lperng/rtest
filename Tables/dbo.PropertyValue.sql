CREATE TABLE [dbo].[PropertyValue]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Alias] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[KeyValue] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ValueType] [int] NOT NULL,
[ShortTextValue] [nvarchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LongTextValue] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DecimalValue] [decimal] (18, 2) NOT NULL,
[IntegerValue] [int] NOT NULL,
[BooleanValue] [bit] NOT NULL,
[DateTimeValue] [datetime] NULL,
[Locale] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ItemId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CatalogId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CategoryId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[PropertyValue] ADD CONSTRAINT [PK_dbo.PropertyValue] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_CatalogId] ON [dbo].[PropertyValue] ([CatalogId])
GO
CREATE NONCLUSTERED INDEX [IX_CategoryId] ON [dbo].[PropertyValue] ([CategoryId])
GO
CREATE NONCLUSTERED INDEX [IX_ItemId] ON [dbo].[PropertyValue] ([ItemId])
GO
ALTER TABLE [dbo].[PropertyValue] ADD CONSTRAINT [FK_dbo.PropertyValue_dbo.Catalog_CatalogId] FOREIGN KEY ([CatalogId]) REFERENCES [dbo].[Catalog] ([Id])
GO
ALTER TABLE [dbo].[PropertyValue] ADD CONSTRAINT [FK_dbo.PropertyValue_dbo.Category_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[PropertyValue] ADD CONSTRAINT [FK_dbo.PropertyValue_dbo.Item_ItemId] FOREIGN KEY ([ItemId]) REFERENCES [dbo].[Item] ([Id])
GO
