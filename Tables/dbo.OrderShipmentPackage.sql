CREATE TABLE [dbo].[OrderShipmentPackage]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BarCode] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PackageType] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WeightUnit] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Weight] [decimal] (18, 2) NULL,
[MeasureUnit] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Height] [decimal] (18, 2) NULL,
[Length] [decimal] (18, 2) NULL,
[Width] [decimal] (18, 2) NULL,
[ShipmentId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[OrderShipmentPackage] ADD CONSTRAINT [PK_dbo.OrderShipmentPackage] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_ShipmentId] ON [dbo].[OrderShipmentPackage] ([ShipmentId])
GO
ALTER TABLE [dbo].[OrderShipmentPackage] ADD CONSTRAINT [FK_dbo.OrderShipmentPackage_dbo.OrderShipment_ShipmentId] FOREIGN KEY ([ShipmentId]) REFERENCES [dbo].[OrderShipment] ([Id])
GO
