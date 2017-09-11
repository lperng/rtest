CREATE TABLE [dbo].[PlatformDynamicPropertyDictionaryItemName]
(
[Id] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DictionaryItemId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Locale] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name] [nvarchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[PlatformDynamicPropertyDictionaryItemName] ADD CONSTRAINT [PK_dbo.PlatformDynamicPropertyDictionaryItemName] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_PlatformDynamicPropertyDictionaryItemName_DictionaryItemId_Locale_Name] ON [dbo].[PlatformDynamicPropertyDictionaryItemName] ([DictionaryItemId], [Locale], [Name])
GO
ALTER TABLE [dbo].[PlatformDynamicPropertyDictionaryItemName] ADD CONSTRAINT [FK_dbo.PlatformDynamicPropertyDictionaryItemName_dbo.PlatformDynamicPropertyDictionaryItem_DictionaryItemId] FOREIGN KEY ([DictionaryItemId]) REFERENCES [dbo].[PlatformDynamicPropertyDictionaryItem] ([Id]) ON DELETE CASCADE
GO
