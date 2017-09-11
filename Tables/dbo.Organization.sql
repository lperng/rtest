CREATE TABLE [dbo].[Organization]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OrgType] [int] NOT NULL,
[Description] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BusinessCategory] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[OwnerId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[Organization] ADD CONSTRAINT [PK_dbo.Organization] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_Id] ON [dbo].[Organization] ([Id])
GO
ALTER TABLE [dbo].[Organization] ADD CONSTRAINT [FK_dbo.Organization_dbo.Member_Id] FOREIGN KEY ([Id]) REFERENCES [dbo].[Member] ([Id])
GO
