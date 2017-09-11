CREATE TABLE [dbo].[PropertyAttribute]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PropertyAttributeName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PropertyAttributeValue] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Priority] [int] NOT NULL,
[PropertyId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[PropertyAttribute] ADD CONSTRAINT [PK_dbo.PropertyAttribute] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_PropertyId] ON [dbo].[PropertyAttribute] ([PropertyId])
GO
ALTER TABLE [dbo].[PropertyAttribute] ADD CONSTRAINT [FK_dbo.PropertyAttribute_dbo.Property_PropertyId] FOREIGN KEY ([PropertyId]) REFERENCES [dbo].[Property] ([Id]) ON DELETE CASCADE
GO
