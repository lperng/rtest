CREATE TABLE [dbo].[PlatformRolePermission]
(
[Id] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RoleId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PermissionId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[PlatformRolePermission] ADD CONSTRAINT [PK_dbo.PlatformRolePermission] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_PermissionId] ON [dbo].[PlatformRolePermission] ([PermissionId])
GO
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[PlatformRolePermission] ([RoleId])
GO
ALTER TABLE [dbo].[PlatformRolePermission] ADD CONSTRAINT [FK_dbo.PlatformRolePermission_dbo.PlatformPermission_PermissionId] FOREIGN KEY ([PermissionId]) REFERENCES [dbo].[PlatformPermission] ([Id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlatformRolePermission] ADD CONSTRAINT [FK_dbo.PlatformRolePermission_dbo.PlatformRole_RoleId] FOREIGN KEY ([RoleId]) REFERENCES [dbo].[PlatformRole] ([Id]) ON DELETE CASCADE
GO
