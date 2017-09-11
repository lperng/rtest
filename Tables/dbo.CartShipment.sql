CREATE TABLE [dbo].[CartShipment]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ShipmentMethodCode] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FulfilmentCenterId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Currency] [nvarchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WeightUnit] [nvarchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WeightValue] [decimal] (18, 2) NULL,
[VolumetricWeight] [decimal] (18, 2) NULL,
[DimensionUnit] [nvarchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DimensionHeight] [decimal] (18, 2) NULL,
[DimensionLength] [decimal] (18, 2) NULL,
[DimensionWidth] [decimal] (18, 2) NULL,
[TaxIncluded] [bit] NOT NULL,
[TaxTotal] [money] NOT NULL,
[ShoppingCartId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TaxType] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ShipmentMethodOption] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Total] [money] NOT NULL CONSTRAINT [DF__CartShipm__Total__24E777C3] DEFAULT ((0)),
[Price] [money] NOT NULL CONSTRAINT [DF__CartShipm__Price__2AA05119] DEFAULT ((0)),
[PriceWithTax] [money] NOT NULL CONSTRAINT [DF__CartShipm__Price__2B947552] DEFAULT ((0)),
[DiscountAmount] [money] NOT NULL CONSTRAINT [DF__CartShipm__Disco__2C88998B] DEFAULT ((0)),
[DiscountAmountWithTax] [money] NOT NULL CONSTRAINT [DF__CartShipm__Disco__2D7CBDC4] DEFAULT ((0)),
[TaxPercentRate] [decimal] (18, 4) NOT NULL CONSTRAINT [DF__CartShipm__TaxPe__2E70E1FD] DEFAULT ((0)),
[TotalWithTax] [money] NOT NULL CONSTRAINT [DF__CartShipm__Total__2F650636] DEFAULT ((0)),
[Fee] [money] NOT NULL CONSTRAINT [DF__CartShipmen__Fee__46486B8E] DEFAULT ((0)),
[FeeWithTax] [money] NOT NULL CONSTRAINT [DF__CartShipm__FeeWi__473C8FC7] DEFAULT ((0))
)
GO
ALTER TABLE [dbo].[CartShipment] ADD CONSTRAINT [PK_dbo.CartShipment] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_ShoppingCartId] ON [dbo].[CartShipment] ([ShoppingCartId])
GO
ALTER TABLE [dbo].[CartShipment] ADD CONSTRAINT [FK_dbo.CartShipment_dbo.Cart_ShoppingCartId] FOREIGN KEY ([ShoppingCartId]) REFERENCES [dbo].[Cart] ([Id]) ON DELETE CASCADE
GO
