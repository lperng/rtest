CREATE TABLE [dbo].[OrderOperation]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Number] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsApproved] [bit] NOT NULL,
[Status] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Comment] [nvarchar] (2048) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Currency] [nvarchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Sum] [money] NOT NULL,
[IsCancelled] [bit] NOT NULL,
[CancelledDate] [datetime] NULL,
[CancelReason] [nvarchar] (2048) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[OrderOperation] ADD CONSTRAINT [PK_dbo.OrderOperation] PRIMARY KEY CLUSTERED  ([Id])
GO
