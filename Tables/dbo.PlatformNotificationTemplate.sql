CREATE TABLE [dbo].[PlatformNotificationTemplate]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ObjectId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[NotificationTypeId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Subject] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[TemplateEngine] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Body] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ObjectTypeId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Language] [nvarchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsDefault] [bit] NOT NULL CONSTRAINT [DF__PlatformN__IsDef__5EBF139D] DEFAULT ((0)),
[Sender] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Recipient] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[PlatformNotificationTemplate] ADD CONSTRAINT [PK_dbo.PlatformNotificationTemplate] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_PlatformNotificationTemplate_NotificationTypeId_ObjectTypeId_ObjectId_Language] ON [dbo].[PlatformNotificationTemplate] ([NotificationTypeId], [ObjectId], [ObjectTypeId], [Language])
GO
