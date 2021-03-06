CREATE TABLE [dbo].[QuoteRequest]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Number] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[StoreId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[StoreName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ChannelId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OrganizationId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OrganizationName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsAnonymous] [bit] NOT NULL,
[CustomerId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CustomerName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EmployeeId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EmployeeName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ExpirationDate] [datetime] NULL,
[ReminderDate] [datetime] NULL,
[EnableNotification] [bit] NOT NULL,
[IsLocked] [bit] NOT NULL,
[Status] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Comment] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[InnerComment] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Currency] [nvarchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LanguageCode] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Coupon] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ShipmentMethodCode] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ShipmentMethodOption] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsCancelled] [bit] NOT NULL,
[CancelledDate] [datetime] NULL,
[CancelReason] [nvarchar] (2048) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ManualSubTotal] [money] NOT NULL CONSTRAINT [DF__QuoteRequ__Manua__414EAC47] DEFAULT ((0)),
[ManualRelDiscountAmount] [decimal] (18, 2) NOT NULL CONSTRAINT [DF__QuoteRequ__Manua__4242D080] DEFAULT ((0)),
[Tag] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsSubmitted] [bit] NOT NULL CONSTRAINT [DF__QuoteRequ__IsSub__4336F4B9] DEFAULT ((0)),
[ManualShippingTotal] [money] NOT NULL CONSTRAINT [DF__QuoteRequ__Manua__442B18F2] DEFAULT ((0))
)
GO
ALTER TABLE [dbo].[QuoteRequest] ADD CONSTRAINT [PK_dbo.QuoteRequest] PRIMARY KEY CLUSTERED  ([Id])
GO
