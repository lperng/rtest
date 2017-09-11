CREATE TABLE [dbo].[OrderPaymentGatewayTransaction]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Amount] [money] NOT NULL,
[Currency] [nvarchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsProcessed] [bit] NOT NULL,
[ProcessedDate] [datetime] NULL,
[ProcessError] [nvarchar] (2048) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProcessAttemptCount] [int] NOT NULL,
[RequestData] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ResponseData] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ResponseCode] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GatewayIpAddress] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Type] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Status] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Note] [nvarchar] (2048) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PaymentInId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[OrderPaymentGatewayTransaction] ADD CONSTRAINT [PK_dbo.OrderPaymentGatewayTransaction] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_PaymentInId] ON [dbo].[OrderPaymentGatewayTransaction] ([PaymentInId])
GO
ALTER TABLE [dbo].[OrderPaymentGatewayTransaction] ADD CONSTRAINT [FK_dbo.OrderPaymentGatewayTransaction_dbo.OrderPaymentIn_PaymentInId] FOREIGN KEY ([PaymentInId]) REFERENCES [dbo].[OrderPaymentIn] ([Id]) ON DELETE CASCADE
GO
