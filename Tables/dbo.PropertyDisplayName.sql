CREATE TABLE [dbo].[PropertyDisplayName]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Locale] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name] [nvarchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PropertyId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
GO
ALTER TABLE [dbo].[PropertyDisplayName] ADD CONSTRAINT [PK_dbo.PropertyDisplayName] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_PropertyId] ON [dbo].[PropertyDisplayName] ([PropertyId])
GO
