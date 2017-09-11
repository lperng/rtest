CREATE TABLE [dbo].[PropertyValidationRule]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsUnique] [bit] NOT NULL,
[CharCountMin] [int] NULL,
[CharCountMax] [int] NULL,
[RegExp] [nvarchar] (2048) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PropertyId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
GO
ALTER TABLE [dbo].[PropertyValidationRule] ADD CONSTRAINT [PK_dbo.PropertyValidationRule] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_PropertyId] ON [dbo].[PropertyValidationRule] ([PropertyId])
GO
ALTER TABLE [dbo].[PropertyValidationRule] ADD CONSTRAINT [FK_dbo.PropertyValidationRule_dbo.Property_PropertyId] FOREIGN KEY ([PropertyId]) REFERENCES [dbo].[Property] ([Id]) ON DELETE CASCADE
GO
