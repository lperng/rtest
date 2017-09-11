CREATE TABLE [dbo].[OrderTaxDetail]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Rate] [decimal] (18, 2) NOT NULL,
[Amount] [money] NOT NULL,
[Name] [nvarchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CustomerOrderId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ShipmentId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LineItemId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PaymentInId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[OrderTaxDetail] ADD CONSTRAINT [PK_dbo.OrderTaxDetail] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_CustomerOrderId] ON [dbo].[OrderTaxDetail] ([CustomerOrderId])
GO
CREATE NONCLUSTERED INDEX [IX_LineItemId] ON [dbo].[OrderTaxDetail] ([LineItemId])
GO
CREATE NONCLUSTERED INDEX [IX_PaymentInId] ON [dbo].[OrderTaxDetail] ([PaymentInId])
GO
CREATE NONCLUSTERED INDEX [IX_ShipmentId] ON [dbo].[OrderTaxDetail] ([ShipmentId])
GO
ALTER TABLE [dbo].[OrderTaxDetail] ADD CONSTRAINT [FK_dbo.OrderTaxDetail_dbo.CustomerOrder_CustomerOrderId] FOREIGN KEY ([CustomerOrderId]) REFERENCES [dbo].[CustomerOrder] ([Id])
GO
ALTER TABLE [dbo].[OrderTaxDetail] ADD CONSTRAINT [FK_dbo.OrderTaxDetail_dbo.OrderLineItem_LineItemId] FOREIGN KEY ([LineItemId]) REFERENCES [dbo].[OrderLineItem] ([Id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderTaxDetail] ADD CONSTRAINT [FK_dbo.OrderTaxDetail_dbo.OrderPaymentIn_PaymentInId] FOREIGN KEY ([PaymentInId]) REFERENCES [dbo].[OrderPaymentIn] ([Id])
GO
ALTER TABLE [dbo].[OrderTaxDetail] ADD CONSTRAINT [FK_dbo.OrderTaxDetail_dbo.OrderShipment_ShipmentId] FOREIGN KEY ([ShipmentId]) REFERENCES [dbo].[OrderShipment] ([Id])
GO
