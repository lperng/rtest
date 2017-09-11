CREATE TABLE [dbo].[PlatformAccount]
(
[Id] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[StoreId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[UserName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AccountState] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsAdministrator] [bit] NOT NULL CONSTRAINT [DF__PlatformA__IsAdm__74AE54BC] DEFAULT ((0)),
[UserType] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[PlatformAccount] ADD CONSTRAINT [PK_dbo.PlatformAccount] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_UserName] ON [dbo].[PlatformAccount] ([UserName])
GO
