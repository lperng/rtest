CREATE TABLE [dbo].[PlatformDynamicPropertyDictionaryItem]
(
[Id] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PropertyId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [nvarchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[PlatformDynamicPropertyDictionaryItem] ADD CONSTRAINT [PK_dbo.PlatformDynamicPropertyDictionaryItem] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_PlatformDynamicPropertyDictionaryItem_PropertyId_Name] ON [dbo].[PlatformDynamicPropertyDictionaryItem] ([PropertyId], [Name])
GO
ALTER TABLE [dbo].[PlatformDynamicPropertyDictionaryItem] ADD CONSTRAINT [FK_dbo.PlatformDynamicPropertyDictionaryItem_dbo.PlatformDynamicProperty_PropertyId] FOREIGN KEY ([PropertyId]) REFERENCES [dbo].[PlatformDynamicProperty] ([Id]) ON DELETE CASCADE
GO
