CREATE TABLE [dbo].[Vendor]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SiteUrl] [nvarchar] (2048) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LogoUrl] [nvarchar] (2048) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[GroupName] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[Vendor] ADD CONSTRAINT [PK_dbo.Vendor] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_Id] ON [dbo].[Vendor] ([Id])
GO
ALTER TABLE [dbo].[Vendor] ADD CONSTRAINT [FK_dbo.Vendor_dbo.Member_Id] FOREIGN KEY ([Id]) REFERENCES [dbo].[Member] ([Id])
GO
