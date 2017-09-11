CREATE TABLE [dbo].[Item]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [nvarchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[StartDate] [datetime] NOT NULL,
[EndDate] [datetime] NULL,
[IsActive] [bit] NOT NULL,
[IsBuyable] [bit] NOT NULL,
[AvailabilityRule] [int] NOT NULL,
[MinQuantity] [decimal] (18, 2) NOT NULL,
[MaxQuantity] [decimal] (18, 2) NOT NULL,
[TrackInventory] [bit] NOT NULL,
[Weight] [decimal] (18, 2) NULL,
[PackageType] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Code] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CatalogId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Discriminator] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ParentId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ManufacturerPartNumber] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Gtin] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProductType] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WeightUnit] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MeasureUnit] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Height] [decimal] (18, 2) NULL,
[Length] [decimal] (18, 2) NULL,
[Width] [decimal] (18, 2) NULL,
[EnableReview] [bit] NULL,
[MaxNumberOfDownload] [int] NULL,
[DownloadExpiration] [datetime] NULL,
[DownloadType] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[HasUserAgreement] [bit] NULL,
[ShippingType] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TaxType] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Vendor] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CategoryId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Priority] [int] NOT NULL CONSTRAINT [DF__Item__Priority__345EC57D] DEFAULT ((0))
)
GO
ALTER TABLE [dbo].[Item] ADD CONSTRAINT [PK_dbo.Item] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [CatalogIdAndParentId] ON [dbo].[Item] ([CatalogId], [ParentId])
GO
CREATE NONCLUSTERED INDEX [IX_CategoryId] ON [dbo].[Item] ([CategoryId])
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Code_CatalogId] ON [dbo].[Item] ([Code], [CatalogId])
GO
CREATE NONCLUSTERED INDEX [IX_ParentId] ON [dbo].[Item] ([ParentId]) INCLUDE ([Id])
GO
ALTER TABLE [dbo].[Item] ADD CONSTRAINT [FK_dbo.Item_dbo.Catalog_CatalogId] FOREIGN KEY ([CatalogId]) REFERENCES [dbo].[Catalog] ([Id])
GO
ALTER TABLE [dbo].[Item] ADD CONSTRAINT [FK_dbo.Item_dbo.Category_CategoryId] FOREIGN KEY ([CategoryId]) REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Item] ADD CONSTRAINT [FK_dbo.Item_dbo.Item_ParentId] FOREIGN KEY ([ParentId]) REFERENCES [dbo].[Item] ([Id])
GO
