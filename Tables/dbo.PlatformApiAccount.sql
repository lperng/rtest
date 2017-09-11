CREATE TABLE [dbo].[PlatformApiAccount]
(
[Id] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ApiAccountType] [int] NOT NULL,
[AccountId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AppId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SecretKey] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsActive] [bit] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[PlatformApiAccount] ADD CONSTRAINT [PK_dbo.PlatformApiAccount] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_AccountId] ON [dbo].[PlatformApiAccount] ([AccountId])
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_AppId] ON [dbo].[PlatformApiAccount] ([AppId])
GO
ALTER TABLE [dbo].[PlatformApiAccount] ADD CONSTRAINT [FK_dbo.PlatformApiAccount_dbo.PlatformAccount_AccountId] FOREIGN KEY ([AccountId]) REFERENCES [dbo].[PlatformAccount] ([Id]) ON DELETE CASCADE
GO
