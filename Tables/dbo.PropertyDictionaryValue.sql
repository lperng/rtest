CREATE TABLE [dbo].[PropertyDictionaryValue]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Alias] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Value] [nvarchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Locale] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PropertyId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
GO
ALTER TABLE [dbo].[PropertyDictionaryValue] ADD CONSTRAINT [PK_dbo.PropertyDictionaryValue] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_PropertyId] ON [dbo].[PropertyDictionaryValue] ([PropertyId])
GO
ALTER TABLE [dbo].[PropertyDictionaryValue] ADD CONSTRAINT [FK_dbo.PropertyDictionaryValue_dbo.Property_PropertyId] FOREIGN KEY ([PropertyId]) REFERENCES [dbo].[Property] ([Id]) ON DELETE CASCADE
GO
