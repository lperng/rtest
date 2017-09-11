CREATE TABLE [dbo].[CartAddress]
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
[ShoppingCartId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ShipmentId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PaymentId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[CartAddress] ADD CONSTRAINT [PK_dbo.CartAddress] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_PaymentId] ON [dbo].[CartAddress] ([PaymentId])
GO
CREATE NONCLUSTERED INDEX [IX_ShipmentId] ON [dbo].[CartAddress] ([ShipmentId])
GO
CREATE NONCLUSTERED INDEX [IX_ShoppingCartId] ON [dbo].[CartAddress] ([ShoppingCartId])
GO
ALTER TABLE [dbo].[CartAddress] ADD CONSTRAINT [FK_dbo.CartAddress_dbo.Cart_ShoppingCartId] FOREIGN KEY ([ShoppingCartId]) REFERENCES [dbo].[Cart] ([Id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CartAddress] ADD CONSTRAINT [FK_dbo.CartAddress_dbo.CartPayment_PaymentId] FOREIGN KEY ([PaymentId]) REFERENCES [dbo].[CartPayment] ([Id])
GO
ALTER TABLE [dbo].[CartAddress] ADD CONSTRAINT [FK_dbo.CartAddress_dbo.CartShipment_ShipmentId] FOREIGN KEY ([ShipmentId]) REFERENCES [dbo].[CartShipment] ([Id])
GO
