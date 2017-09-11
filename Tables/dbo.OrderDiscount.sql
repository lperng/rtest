CREATE TABLE [dbo].[OrderDiscount]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PromotionId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PromotionDescription] [nvarchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Currency] [nvarchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DiscountAmount] [money] NOT NULL,
[CouponCode] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CouponInvalidDescription] [nvarchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CustomerOrderId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ShipmentId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LineItemId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DiscountAmountWithTax] [money] NOT NULL CONSTRAINT [DF__OrderDisc__Disco__1D114BD1] DEFAULT ((0)),
[PaymentInId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[OrderDiscount] ADD CONSTRAINT [PK_dbo.OrderDiscount] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_CustomerOrderId] ON [dbo].[OrderDiscount] ([CustomerOrderId])
GO
CREATE NONCLUSTERED INDEX [IX_LineItemId] ON [dbo].[OrderDiscount] ([LineItemId])
GO
CREATE NONCLUSTERED INDEX [IX_PaymentInId] ON [dbo].[OrderDiscount] ([PaymentInId])
GO
CREATE NONCLUSTERED INDEX [IX_ShipmentId] ON [dbo].[OrderDiscount] ([ShipmentId])
GO
ALTER TABLE [dbo].[OrderDiscount] ADD CONSTRAINT [FK_dbo.OrderDiscount_dbo.CustomerOrder_CustomerOrderId] FOREIGN KEY ([CustomerOrderId]) REFERENCES [dbo].[CustomerOrder] ([Id])
GO
ALTER TABLE [dbo].[OrderDiscount] ADD CONSTRAINT [FK_dbo.OrderDiscount_dbo.OrderLineItem_LineItemId] FOREIGN KEY ([LineItemId]) REFERENCES [dbo].[OrderLineItem] ([Id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderDiscount] ADD CONSTRAINT [FK_dbo.OrderDiscount_dbo.OrderPaymentIn_PaymentInId] FOREIGN KEY ([PaymentInId]) REFERENCES [dbo].[OrderPaymentIn] ([Id])
GO
ALTER TABLE [dbo].[OrderDiscount] ADD CONSTRAINT [FK_dbo.OrderDiscount_dbo.OrderShipment_ShipmentId] FOREIGN KEY ([ShipmentId]) REFERENCES [dbo].[OrderShipment] ([Id])
GO
