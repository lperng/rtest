CREATE TABLE [dbo].[CustomerOrder]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CustomerId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[StoreId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ChannelId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OrganizationId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EmployeeId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CustomerName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StoreName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OrganizationName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EmployeeName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DiscountAmount] [money] NOT NULL CONSTRAINT [DF__CustomerO__Disco__0BE6BFCF] DEFAULT ((0)),
[TaxTotal] [money] NOT NULL CONSTRAINT [DF__CustomerO__TaxTo__0CDAE408] DEFAULT ((0)),
[Total] [money] NOT NULL CONSTRAINT [DF__CustomerO__Total__0DCF0841] DEFAULT ((0)),
[SubTotal] [money] NOT NULL CONSTRAINT [DF__CustomerO__SubTo__0EC32C7A] DEFAULT ((0)),
[SubTotalWithTax] [money] NOT NULL CONSTRAINT [DF__CustomerO__SubTo__0FB750B3] DEFAULT ((0)),
[ShippingTotal] [money] NOT NULL CONSTRAINT [DF__CustomerO__Shipp__10AB74EC] DEFAULT ((0)),
[ShippingTotalWithTax] [money] NOT NULL CONSTRAINT [DF__CustomerO__Shipp__119F9925] DEFAULT ((0)),
[HandlingTotal] [money] NOT NULL CONSTRAINT [DF__CustomerO__Handl__1293BD5E] DEFAULT ((0)),
[HandlingTotalWithTax] [money] NOT NULL CONSTRAINT [DF__CustomerO__Handl__1387E197] DEFAULT ((0)),
[DiscountTotal] [money] NOT NULL CONSTRAINT [DF__CustomerO__Disco__147C05D0] DEFAULT ((0)),
[DiscountTotalWithTax] [money] NOT NULL CONSTRAINT [DF__CustomerO__Disco__15702A09] DEFAULT ((0)),
[PaymentTotal] [money] NOT NULL CONSTRAINT [DF__CustomerO__Payme__21D600EE] DEFAULT ((0)),
[PaymentTotalWithTax] [money] NOT NULL CONSTRAINT [DF__CustomerO__Payme__22CA2527] DEFAULT ((0)),
[SubscriptionId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SubscriptionNumber] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsPrototype] [bit] NOT NULL CONSTRAINT [DF__CustomerO__IsPro__2D47B39A] DEFAULT ((0)),
[LanguageCode] [nvarchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ShoppingCartId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TaxPercentRate] [decimal] (18, 4) NOT NULL CONSTRAINT [DF__CustomerO__TaxPe__3118447E] DEFAULT ((0))
)
GO
ALTER TABLE [dbo].[CustomerOrder] ADD CONSTRAINT [PK_dbo.CustomerOrder] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_Id] ON [dbo].[CustomerOrder] ([Id])
GO
ALTER TABLE [dbo].[CustomerOrder] ADD CONSTRAINT [FK_dbo.CustomerOrder_dbo.OrderOperation_Id] FOREIGN KEY ([Id]) REFERENCES [dbo].[OrderOperation] ([Id])
GO
