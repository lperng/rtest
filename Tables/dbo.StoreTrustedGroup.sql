CREATE TABLE [dbo].[StoreTrustedGroup]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GroupName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[StoreId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
GO
ALTER TABLE [dbo].[StoreTrustedGroup] ADD CONSTRAINT [PK_dbo.StoreTrustedGroup] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_StoreId] ON [dbo].[StoreTrustedGroup] ([StoreId])
GO
ALTER TABLE [dbo].[StoreTrustedGroup] ADD CONSTRAINT [FK_dbo.StoreTrustedGroup_dbo.Store_StoreId] FOREIGN KEY ([StoreId]) REFERENCES [dbo].[Store] ([Id]) ON DELETE CASCADE
GO
