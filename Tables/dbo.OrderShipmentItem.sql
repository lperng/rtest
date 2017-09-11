CREATE TABLE [dbo].[OrderShipmentItem]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BarCode] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Quantity] [int] NOT NULL,
[LineItemId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ShipmentId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ShipmentPackageId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[OrderShipmentItem] ADD CONSTRAINT [PK_dbo.OrderShipmentItem] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_LineItemId] ON [dbo].[OrderShipmentItem] ([LineItemId])
GO
CREATE NONCLUSTERED INDEX [IX_ShipmentId] ON [dbo].[OrderShipmentItem] ([ShipmentId])
GO
CREATE NONCLUSTERED INDEX [IX_ShipmentPackageId] ON [dbo].[OrderShipmentItem] ([ShipmentPackageId])
GO
ALTER TABLE [dbo].[OrderShipmentItem] ADD CONSTRAINT [FK_dbo.OrderShipmentItem_dbo.OrderLineItem_LineItemId] FOREIGN KEY ([LineItemId]) REFERENCES [dbo].[OrderLineItem] ([Id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderShipmentItem] ADD CONSTRAINT [FK_dbo.OrderShipmentItem_dbo.OrderShipmentPackage_ShipmentPackageId] FOREIGN KEY ([ShipmentPackageId]) REFERENCES [dbo].[OrderShipmentPackage] ([Id]) ON DELETE CASCADE
GO
