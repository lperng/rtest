CREATE TABLE [dbo].[CartPayment]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OuterId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Currency] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Amount] [money] NOT NULL,
[Purpose] [nvarchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ShoppingCartId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PaymentGatewayCode] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TaxType] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Price] [money] NOT NULL CONSTRAINT [DF__CartPayme__Price__38EE7070] DEFAULT ((0)),
[PriceWithTax] [money] NOT NULL CONSTRAINT [DF__CartPayme__Price__39E294A9] DEFAULT ((0)),
[DiscountAmount] [money] NOT NULL CONSTRAINT [DF__CartPayme__Disco__3AD6B8E2] DEFAULT ((0)),
[DiscountAmountWithTax] [money] NOT NULL CONSTRAINT [DF__CartPayme__Disco__3BCADD1B] DEFAULT ((0)),
[Total] [money] NOT NULL CONSTRAINT [DF__CartPayme__Total__3CBF0154] DEFAULT ((0)),
[TotalWithTax] [money] NOT NULL CONSTRAINT [DF__CartPayme__Total__3DB3258D] DEFAULT ((0)),
[TaxTotal] [money] NOT NULL CONSTRAINT [DF__CartPayme__TaxTo__3EA749C6] DEFAULT ((0)),
[TaxPercentRate] [decimal] (18, 4) NOT NULL CONSTRAINT [DF__CartPayme__TaxPe__3F9B6DFF] DEFAULT ((0))
)
GO
ALTER TABLE [dbo].[CartPayment] ADD CONSTRAINT [PK_dbo.CartPayment] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_ShoppingCartId] ON [dbo].[CartPayment] ([ShoppingCartId])
GO
ALTER TABLE [dbo].[CartPayment] ADD CONSTRAINT [FK_dbo.CartPayment_dbo.Cart_ShoppingCartId] FOREIGN KEY ([ShoppingCartId]) REFERENCES [dbo].[Cart] ([Id]) ON DELETE CASCADE
GO
