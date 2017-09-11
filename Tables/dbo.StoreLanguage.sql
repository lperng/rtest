CREATE TABLE [dbo].[StoreLanguage]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LanguageCode] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[StoreId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
GO
ALTER TABLE [dbo].[StoreLanguage] ADD CONSTRAINT [PK_dbo.StoreLanguage] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_StoreId] ON [dbo].[StoreLanguage] ([StoreId])
GO
ALTER TABLE [dbo].[StoreLanguage] ADD CONSTRAINT [FK_dbo.StoreLanguage_dbo.Store_StoreId] FOREIGN KEY ([StoreId]) REFERENCES [dbo].[Store] ([Id]) ON DELETE CASCADE
GO
