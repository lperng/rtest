CREATE TABLE [dbo].[PlatformDynamicPropertyName]
(
[Id] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PropertyId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Locale] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[PlatformDynamicPropertyName] ADD CONSTRAINT [PK_dbo.PlatformDynamicPropertyName] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_PlatformDynamicPropertyName_PropertyId_Locale_Name] ON [dbo].[PlatformDynamicPropertyName] ([PropertyId], [Locale], [Name])
GO
ALTER TABLE [dbo].[PlatformDynamicPropertyName] ADD CONSTRAINT [FK_dbo.PlatformDynamicPropertyName_dbo.PlatformDynamicProperty_PropertyId] FOREIGN KEY ([PropertyId]) REFERENCES [dbo].[PlatformDynamicProperty] ([Id]) ON DELETE CASCADE
GO
