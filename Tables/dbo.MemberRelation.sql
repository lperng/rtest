CREATE TABLE [dbo].[MemberRelation]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AncestorSequence] [int] NOT NULL,
[AncestorId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DescendantId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RelationType] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[MemberRelation] ADD CONSTRAINT [PK_dbo.MemberRelation] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_AncestorId] ON [dbo].[MemberRelation] ([AncestorId])
GO
CREATE NONCLUSTERED INDEX [IX_DescendantId] ON [dbo].[MemberRelation] ([DescendantId])
GO
ALTER TABLE [dbo].[MemberRelation] ADD CONSTRAINT [FK_dbo.MemberRelation_dbo.Member_AncestorId] FOREIGN KEY ([AncestorId]) REFERENCES [dbo].[Member] ([Id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[MemberRelation] ADD CONSTRAINT [FK_dbo.MemberRelation_dbo.Member_DescendantId] FOREIGN KEY ([DescendantId]) REFERENCES [dbo].[Member] ([Id])
GO
