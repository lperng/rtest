CREATE TABLE [dbo].[CartShipmentItem]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BarCode] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Quantity] [int] NOT NULL,
[LineItemId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ShipmentId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[CartShipmentItem] ADD CONSTRAINT [PK_dbo.CartShipmentItem] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_LineItemId] ON [dbo].[CartShipmentItem] ([LineItemId])
GO
CREATE NONCLUSTERED INDEX [IX_ShipmentId] ON [dbo].[CartShipmentItem] ([ShipmentId])
GO
ALTER TABLE [dbo].[CartShipmentItem] ADD CONSTRAINT [FK_dbo.CartShipmentItem_dbo.CartLineItem_LineItemId] FOREIGN KEY ([LineItemId]) REFERENCES [dbo].[CartLineItem] ([Id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[CartShipmentItem] ADD CONSTRAINT [FK_dbo.CartShipmentItem_dbo.CartShipment_ShipmentId] FOREIGN KEY ([ShipmentId]) REFERENCES [dbo].[CartShipment] ([Id])
GO
