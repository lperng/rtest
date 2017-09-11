CREATE TABLE [dbo].[OrderAddress]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AddressType] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Organization] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CountryCode] [nvarchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CountryName] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[City] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PostalCode] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Line1] [nvarchar] (2048) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Line2] [nvarchar] (2048) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RegionId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RegionName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FirstName] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LastName] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Phone] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Email] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CustomerOrderId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ShipmentId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PaymentInId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[OrderAddress] ADD CONSTRAINT [PK_dbo.OrderAddress] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_CustomerOrderId] ON [dbo].[OrderAddress] ([CustomerOrderId])
GO
CREATE NONCLUSTERED INDEX [IX_PaymentInId] ON [dbo].[OrderAddress] ([PaymentInId])
GO
CREATE NONCLUSTERED INDEX [IX_ShipmentId] ON [dbo].[OrderAddress] ([ShipmentId])
GO
ALTER TABLE [dbo].[OrderAddress] ADD CONSTRAINT [FK_dbo.OrderAddress_dbo.CustomerOrder_CustomerOrderId] FOREIGN KEY ([CustomerOrderId]) REFERENCES [dbo].[CustomerOrder] ([Id])
GO
ALTER TABLE [dbo].[OrderAddress] ADD CONSTRAINT [FK_dbo.OrderAddress_dbo.OrderPaymentIn_PaymentInId] FOREIGN KEY ([PaymentInId]) REFERENCES [dbo].[OrderPaymentIn] ([Id])
GO
ALTER TABLE [dbo].[OrderAddress] ADD CONSTRAINT [FK_dbo.OrderAddress_dbo.OrderShipment_ShipmentId] FOREIGN KEY ([ShipmentId]) REFERENCES [dbo].[OrderShipment] ([Id])
GO
