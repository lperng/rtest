CREATE TABLE [dbo].[MemberGroup]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Group] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
GO
ALTER TABLE [dbo].[MemberGroup] ADD CONSTRAINT [PK_dbo.MemberGroup] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_Group] ON [dbo].[MemberGroup] ([Group])
GO
CREATE NONCLUSTERED INDEX [IX_MemberId] ON [dbo].[MemberGroup] ([MemberId])
GO
ALTER TABLE [dbo].[MemberGroup] ADD CONSTRAINT [FK_dbo.MemberGroup_dbo.Member_MemberId] FOREIGN KEY ([MemberId]) REFERENCES [dbo].[Member] ([Id]) ON DELETE CASCADE
GO
