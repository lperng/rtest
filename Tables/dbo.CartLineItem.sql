CREATE TABLE [dbo].[CartLineItem]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Currency] [nvarchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProductId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CatalogId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CategoryId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Quantity] [int] NOT NULL,
[FulfilmentLocationCode] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ShipmentMethodCode] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RequiredShipping] [bit] NOT NULL,
[ImageUrl] [nvarchar] (1028) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsGift] [bit] NOT NULL,
[LanguageCode] [nvarchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Comment] [nvarchar] (2048) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsReccuring] [bit] NOT NULL,
[TaxIncluded] [bit] NOT NULL,
[WeightUnit] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VolumetricWeight] [decimal] (18, 2) NULL,
[ListPrice] [money] NOT NULL,
[SalePrice] [money] NOT NULL,
[TaxTotal] [money] NOT NULL,
[ShoppingCartId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Weight] [decimal] (18, 2) NULL,
[MeasureUnit] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Height] [decimal] (18, 2) NULL,
[Length] [decimal] (18, 2) NULL,
[Width] [decimal] (18, 2) NULL,
[TaxType] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Sku] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__CartLineIte__Sku__1A69E950] DEFAULT (''),
[ProductType] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__CartLineI__Produ__2022C2A6] DEFAULT (''),
[PriceId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ValidationType] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ListPriceWithTax] [money] NOT NULL CONSTRAINT [DF__CartLineI__ListP__314D4EA8] DEFAULT ((0)),
[SalePriceWithTax] [money] NOT NULL CONSTRAINT [DF__CartLineI__SaleP__324172E1] DEFAULT ((0)),
[DiscountAmount] [money] NOT NULL CONSTRAINT [DF__CartLineI__Disco__3335971A] DEFAULT ((0)),
[DiscountAmountWithTax] [money] NOT NULL CONSTRAINT [DF__CartLineI__Disco__3429BB53] DEFAULT ((0)),
[TaxPercentRate] [decimal] (18, 4) NOT NULL CONSTRAINT [DF__CartLineI__TaxPe__351DDF8C] DEFAULT ((0)),
[IsReadOnly] [bit] NOT NULL CONSTRAINT [DF__CartLineI__IsRea__361203C5] DEFAULT ((0)),
[Fee] [money] NOT NULL CONSTRAINT [DF__CartLineIte__Fee__4460231C] DEFAULT ((0)),
[FeeWithTax] [money] NOT NULL CONSTRAINT [DF__CartLineI__FeeWi__45544755] DEFAULT ((0))
)
GO
ALTER TABLE [dbo].[CartLineItem] ADD CONSTRAINT [PK_dbo.CartLineItem] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_ShoppingCartId] ON [dbo].[CartLineItem] ([ShoppingCartId])
GO
ALTER TABLE [dbo].[CartLineItem] ADD CONSTRAINT [FK_dbo.CartLineItem_dbo.Cart_ShoppingCartId] FOREIGN KEY ([ShoppingCartId]) REFERENCES [dbo].[Cart] ([Id]) ON DELETE CASCADE
GO
