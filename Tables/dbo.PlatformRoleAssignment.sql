CREATE TABLE [dbo].[PlatformRoleAssignment]
(
[Id] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AccountId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RoleId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[PlatformRoleAssignment] ADD CONSTRAINT [PK_dbo.PlatformRoleAssignment] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_AccountId] ON [dbo].[PlatformRoleAssignment] ([AccountId])
GO
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[PlatformRoleAssignment] ([RoleId])
GO
ALTER TABLE [dbo].[PlatformRoleAssignment] ADD CONSTRAINT [FK_dbo.PlatformRoleAssignment_dbo.PlatformAccount_AccountId] FOREIGN KEY ([AccountId]) REFERENCES [dbo].[PlatformAccount] ([Id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlatformRoleAssignment] ADD CONSTRAINT [FK_dbo.PlatformRoleAssignment_dbo.PlatformRole_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[PlatformRole] ([Id]) ON DELETE CASCADE
GO
