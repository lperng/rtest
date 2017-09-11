CREATE TABLE [dbo].[PlatformPermissionScope]
(
[Id] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Scope] [nvarchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RolePermissionId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Type] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Label] [nvarchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[PlatformPermissionScope] ADD CONSTRAINT [PK_dbo.PlatformPermissionScope] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_RolePermissionId] ON [dbo].[PlatformPermissionScope] ([RolePermissionId])
GO
ALTER TABLE [dbo].[PlatformPermissionScope] ADD CONSTRAINT [FK_dbo.PlatformPermissionScope_dbo.PlatformRolePermission_RolePermissionId] FOREIGN KEY ([RolePermissionId]) REFERENCES [dbo].[PlatformRolePermission] ([Id]) ON DELETE CASCADE
GO
