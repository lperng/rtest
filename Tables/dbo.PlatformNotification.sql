CREATE TABLE [dbo].[PlatformNotification]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsActive] [bit] NOT NULL,
[Type] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsSuccessSend] [bit] NOT NULL,
[Subject] [nvarchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Body] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Sender] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Recipient] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SendingGateway] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AttemptCount] [int] NOT NULL,
[MaxAttemptCount] [int] NOT NULL,
[LastFailAttemptMessage] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastFailAttemptDate] [datetime] NULL,
[StartSendingDate] [datetime] NULL,
[SentDate] [datetime] NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ObjectId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ObjectTypeId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Language] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[PlatformNotification] ADD CONSTRAINT [PK_dbo.PlatformNotification] PRIMARY KEY CLUSTERED  ([Id])
GO
