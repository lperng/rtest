CREATE TABLE [dbo].[Member]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberType] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[Member] ADD CONSTRAINT [PK_dbo.Member] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_MemberType] ON [dbo].[Member] ([MemberType])
GO
CREATE NONCLUSTERED INDEX [IX_Name] ON [dbo].[Member] ([Name])
GO
