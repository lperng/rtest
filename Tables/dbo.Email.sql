CREATE TABLE [dbo].[Email]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Address] [nvarchar] (254) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsValidated] [bit] NOT NULL,
[Type] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
GO
ALTER TABLE [dbo].[Email] ADD CONSTRAINT [PK_dbo.Email] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_Address] ON [dbo].[Email] ([Address])
GO
CREATE NONCLUSTERED INDEX [IX_MemberId] ON [dbo].[Email] ([MemberId])
GO
ALTER TABLE [dbo].[Email] ADD CONSTRAINT [FK_dbo.Email_dbo.Member_MemberId] FOREIGN KEY ([MemberId]) REFERENCES [dbo].[Member] ([Id]) ON DELETE CASCADE
GO
