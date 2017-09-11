CREATE TABLE [dbo].[Phone]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Number] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Type] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
GO
ALTER TABLE [dbo].[Phone] ADD CONSTRAINT [PK_dbo.Phone] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_MemberId] ON [dbo].[Phone] ([MemberId])
GO
ALTER TABLE [dbo].[Phone] ADD CONSTRAINT [FK_dbo.Phone_dbo.Member_MemberId] FOREIGN KEY ([MemberId]) REFERENCES [dbo].[Member] ([Id]) ON DELETE CASCADE
GO
