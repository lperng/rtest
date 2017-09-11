CREATE TABLE [dbo].[PaymentPlan]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Interval] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IntervalCount] [int] NOT NULL,
[TrialPeriodDays] [int] NOT NULL,
[ProductId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[PaymentPlan] ADD CONSTRAINT [PK_dbo.PaymentPlan] PRIMARY KEY CLUSTERED  ([Id])
GO
