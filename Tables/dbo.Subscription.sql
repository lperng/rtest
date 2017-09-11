CREATE TABLE [dbo].[Subscription]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[StoreId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CustomerId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CustomerName] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Number] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Balance] [money] NOT NULL,
[Interval] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IntervalCount] [int] NOT NULL,
[TrialPeriodDays] [int] NOT NULL,
[StartDate] [datetime] NULL,
[EndDate] [datetime] NULL,
[TrialSart] [datetime] NULL,
[TrialEnd] [datetime] NULL,
[CurrentPeriodStart] [datetime] NULL,
[CurrentPeriodEnd] [datetime] NULL,
[Status] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsCancelled] [bit] NOT NULL,
[CancelledDate] [datetime] NULL,
[CancelReason] [nvarchar] (2048) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CustomerOrderPrototypeId] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[Subscription] ADD CONSTRAINT [PK_dbo.Subscription] PRIMARY KEY CLUSTERED  ([Id])
GO
