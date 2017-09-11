CREATE TABLE [dbo].[OrderPaymentIn]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OrganizationId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CustomerId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IncomingDate] [datetime] NULL,
[OuterId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Purpose] [nvarchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GatewayCode] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CustomerOrderId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ShipmentId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OrganizationName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CustomerName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AuthorizedDate] [datetime] NULL,
[CapturedDate] [datetime] NULL,
[VoidedDate] [datetime] NULL,
[TaxType] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Price] [money] NOT NULL CONSTRAINT [DF__OrderPaym__Price__23BE4960] DEFAULT ((0)),
[PriceWithTax] [money] NOT NULL CONSTRAINT [DF__OrderPaym__Price__24B26D99] DEFAULT ((0)),
[DiscountAmount] [money] NOT NULL CONSTRAINT [DF__OrderPaym__Disco__25A691D2] DEFAULT ((0)),
[DiscountAmountWithTax] [money] NOT NULL CONSTRAINT [DF__OrderPaym__Disco__269AB60B] DEFAULT ((0)),
[Total] [money] NOT NULL CONSTRAINT [DF__OrderPaym__Total__278EDA44] DEFAULT ((0)),
[TotalWithTax] [money] NOT NULL CONSTRAINT [DF__OrderPaym__Total__2882FE7D] DEFAULT ((0)),
[TaxTotal] [money] NOT NULL CONSTRAINT [DF__OrderPaym__TaxTo__297722B6] DEFAULT ((0)),
[TaxPercentRate] [decimal] (18, 4) NOT NULL CONSTRAINT [DF__OrderPaym__TaxPe__2A6B46EF] DEFAULT ((0))
)
GO
ALTER TABLE [dbo].[OrderPaymentIn] ADD CONSTRAINT [PK_dbo.OrderPaymentIn] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_CustomerOrderId] ON [dbo].[OrderPaymentIn] ([CustomerOrderId])
GO
CREATE NONCLUSTERED INDEX [IX_Id] ON [dbo].[OrderPaymentIn] ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_ShipmentId] ON [dbo].[OrderPaymentIn] ([ShipmentId])
GO
ALTER TABLE [dbo].[OrderPaymentIn] ADD CONSTRAINT [FK_dbo.OrderPaymentIn_dbo.CustomerOrder_CustomerOrderId] FOREIGN KEY ([CustomerOrderId]) REFERENCES [dbo].[CustomerOrder] ([Id])
GO
ALTER TABLE [dbo].[OrderPaymentIn] ADD CONSTRAINT [FK_dbo.OrderPaymentIn_dbo.OrderOperation_Id] FOREIGN KEY ([Id]) REFERENCES [dbo].[OrderOperation] ([Id])
GO
ALTER TABLE [dbo].[OrderPaymentIn] ADD CONSTRAINT [FK_dbo.OrderPaymentIn_dbo.OrderShipment_ShipmentId] FOREIGN KEY ([ShipmentId]) REFERENCES [dbo].[OrderShipment] ([Id])
GO
