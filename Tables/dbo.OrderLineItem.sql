CREATE TABLE [dbo].[OrderLineItem]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Currency] [nvarchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Price] [money] NOT NULL,
[DiscountAmount] [money] NOT NULL,
[Quantity] [int] NOT NULL,
[ProductId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CatalogId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CategoryId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Comment] [nvarchar] (2048) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsReccuring] [bit] NOT NULL,
[ImageUrl] [nvarchar] (1028) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsGift] [bit] NOT NULL,
[ShippingMethodCode] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FulfilmentLocationCode] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CustomerOrderId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WeightUnit] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Weight] [decimal] (18, 2) NULL,
[MeasureUnit] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Height] [decimal] (18, 2) NULL,
[Length] [decimal] (18, 2) NULL,
[Width] [decimal] (18, 2) NULL,
[TaxType] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsCancelled] [bit] NOT NULL CONSTRAINT [DF__OrderLine__IsCan__0169315C] DEFAULT ((0)),
[CancelledDate] [datetime] NULL,
[CancelReason] [nvarchar] (2048) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Sku] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__OrderLineIt__Sku__090A5324] DEFAULT (''),
[ProductType] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL CONSTRAINT [DF__OrderLine__Produ__09FE775D] DEFAULT (''),
[PriceId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PriceWithTax] [money] NOT NULL CONSTRAINT [DF__OrderLine__Price__1E05700A] DEFAULT ((0)),
[DiscountAmountWithTax] [money] NOT NULL CONSTRAINT [DF__OrderLine__Disco__1EF99443] DEFAULT ((0)),
[TaxTotal] [money] NOT NULL CONSTRAINT [DF__OrderLine__TaxTo__1FEDB87C] DEFAULT ((0)),
[TaxPercentRate] [decimal] (18, 4) NOT NULL CONSTRAINT [DF__OrderLine__TaxPe__20E1DCB5] DEFAULT ((0))
)
GO
ALTER TABLE [dbo].[OrderLineItem] ADD CONSTRAINT [PK_dbo.OrderLineItem] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_CustomerOrderId] ON [dbo].[OrderLineItem] ([CustomerOrderId])
GO
ALTER TABLE [dbo].[OrderLineItem] ADD CONSTRAINT [FK_dbo.OrderLineItem_dbo.CustomerOrder_CustomerOrderId] FOREIGN KEY ([CustomerOrderId]) REFERENCES [dbo].[CustomerOrder] ([Id])
GO
