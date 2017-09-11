CREATE TABLE [dbo].[CartTaxDetail]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Rate] [decimal] (18, 2) NOT NULL,
[Amount] [money] NOT NULL,
[Name] [nvarchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ShoppingCartId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ShipmentId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LineItemId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PaymentId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[CartTaxDetail] ADD CONSTRAINT [PK_dbo.CartTaxDetail] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_LineItemId] ON [dbo].[CartTaxDetail] ([LineItemId])
GO
CREATE NONCLUSTERED INDEX [IX_PaymentId] ON [dbo].[CartTaxDetail] ([PaymentId])
GO
CREATE NONCLUSTERED INDEX [IX_ShipmentId] ON [dbo].[CartTaxDetail] ([ShipmentId])
GO
CREATE NONCLUSTERED INDEX [IX_ShoppingCartId] ON [dbo].[CartTaxDetail] ([ShoppingCartId])
GO
ALTER TABLE [dbo].[CartTaxDetail] ADD CONSTRAINT [FK_dbo.CartTaxDetail_dbo.Cart_ShoppingCartId] FOREIGN KEY ([ShoppingCartId]) REFERENCES [dbo].[Cart] ([Id])
GO
ALTER TABLE [dbo].[CartTaxDetail] ADD CONSTRAINT [FK_dbo.CartTaxDetail_dbo.CartLineItem_LineItemId] FOREIGN KEY ([LineItemId]) REFERENCES [dbo].[CartLineItem] ([Id])
GO
ALTER TABLE [dbo].[CartTaxDetail] ADD CONSTRAINT [FK_dbo.CartTaxDetail_dbo.CartPayment_PaymentId] FOREIGN KEY ([PaymentId]) REFERENCES [dbo].[CartPayment] ([Id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CartTaxDetail] ADD CONSTRAINT [FK_dbo.CartTaxDetail_dbo.CartShipment_ShipmentId] FOREIGN KEY ([ShipmentId]) REFERENCES [dbo].[CartShipment] ([Id])
GO
