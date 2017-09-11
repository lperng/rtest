CREATE TABLE [dbo].[LastModified]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Scope] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastModifiedDate] [datetime] NOT NULL
)
GO
ALTER TABLE [dbo].[LastModified] ADD CONSTRAINT [PK_dbo.LastModified] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_Scope] ON [dbo].[LastModified] ([Scope])
GO
