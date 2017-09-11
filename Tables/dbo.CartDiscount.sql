CREATE TABLE [dbo].[CartDiscount]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PromotionId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PromotionDescription] [nvarchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Currency] [nvarchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DiscountAmount] [money] NOT NULL,
[CouponCode] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ShoppingCartId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ShipmentId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LineItemId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DiscountAmountWithTax] [money] NOT NULL CONSTRAINT [DF__CartDisco__Disco__30592A6F] DEFAULT ((0)),
[PaymentId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[CartDiscount] ADD CONSTRAINT [PK_dbo.CartDiscount] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_LineItemId] ON [dbo].[CartDiscount] ([LineItemId])
GO
CREATE NONCLUSTERED INDEX [IX_PaymentId] ON [dbo].[CartDiscount] ([PaymentId])
GO
CREATE NONCLUSTERED INDEX [IX_ShipmentId] ON [dbo].[CartDiscount] ([ShipmentId])
GO
CREATE NONCLUSTERED INDEX [IX_ShoppingCartId] ON [dbo].[CartDiscount] ([ShoppingCartId])
GO
ALTER TABLE [dbo].[CartDiscount] ADD CONSTRAINT [FK_dbo.CartDiscount_dbo.Cart_ShoppingCartId] FOREIGN KEY ([ShoppingCartId]) REFERENCES [dbo].[Cart] ([Id])
GO
ALTER TABLE [dbo].[CartDiscount] ADD CONSTRAINT [FK_dbo.CartDiscount_dbo.CartLineItem_LineItemId] FOREIGN KEY ([LineItemId]) REFERENCES [dbo].[CartLineItem] ([Id])
GO
ALTER TABLE [dbo].[CartDiscount] ADD CONSTRAINT [FK_dbo.CartDiscount_dbo.CartPayment_PaymentId] FOREIGN KEY ([PaymentId]) REFERENCES [dbo].[CartPayment] ([Id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CartDiscount] ADD CONSTRAINT [FK_dbo.CartDiscount_dbo.CartShipment_ShipmentId] FOREIGN KEY ([ShipmentId]) REFERENCES [dbo].[CartShipment] ([Id])
GO
