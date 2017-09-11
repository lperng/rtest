CREATE TABLE [dbo].[OrderShipment]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OrganizationId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FulfillmentCenterId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EmployeeId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ShipmentMethodCode] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[WeightUnit] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[VolumetricWeight] [decimal] (18, 2) NULL,
[CustomerOrderId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Weight] [decimal] (18, 2) NULL,
[MeasureUnit] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Height] [decimal] (18, 2) NULL,
[Length] [decimal] (18, 2) NULL,
[Width] [decimal] (18, 2) NULL,
[TaxType] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ShipmentMethodOption] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OrganizationName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FulfillmentCenterName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EmployeeName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DiscountAmount] [money] NOT NULL CONSTRAINT [DF__OrderShip__Disco__0AF29B96] DEFAULT ((0)),
[Price] [money] NOT NULL CONSTRAINT [DF__OrderShip__Price__16644E42] DEFAULT ((0)),
[PriceWithTax] [money] NOT NULL CONSTRAINT [DF__OrderShip__Price__1758727B] DEFAULT ((0)),
[DiscountAmountWithTax] [money] NOT NULL CONSTRAINT [DF__OrderShip__Disco__184C96B4] DEFAULT ((0)),
[Total] [money] NOT NULL CONSTRAINT [DF__OrderShip__Total__1940BAED] DEFAULT ((0)),
[TotalWithTax] [money] NOT NULL CONSTRAINT [DF__OrderShip__Total__1A34DF26] DEFAULT ((0)),
[TaxTotal] [money] NOT NULL CONSTRAINT [DF__OrderShip__TaxTo__1B29035F] DEFAULT ((0)),
[TaxPercentRate] [decimal] (18, 4) NOT NULL CONSTRAINT [DF__OrderShip__TaxPe__1C1D2798] DEFAULT ((0))
)
GO
ALTER TABLE [dbo].[OrderShipment] ADD CONSTRAINT [PK_dbo.OrderShipment] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_CustomerOrderId] ON [dbo].[OrderShipment] ([CustomerOrderId])
GO
CREATE NONCLUSTERED INDEX [IX_Id] ON [dbo].[OrderShipment] ([Id])
GO
ALTER TABLE [dbo].[OrderShipment] ADD CONSTRAINT [FK_dbo.OrderShipment_dbo.CustomerOrder_CustomerOrderId] FOREIGN KEY ([CustomerOrderId]) REFERENCES [dbo].[CustomerOrder] ([Id])
GO
ALTER TABLE [dbo].[OrderShipment] ADD CONSTRAINT [FK_dbo.OrderShipment_dbo.OrderOperation_Id] FOREIGN KEY ([Id]) REFERENCES [dbo].[OrderOperation] ([Id])
GO
