CREATE TABLE [dbo].[SitemapItem]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Title] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ImageUrl] [nvarchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ObjectId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ObjectType] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SitemapId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UrlTemplate] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[SitemapItem] ADD CONSTRAINT [PK_dbo.SitemapItem] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_SitemapId] ON [dbo].[SitemapItem] ([SitemapId])
GO
ALTER TABLE [dbo].[SitemapItem] ADD CONSTRAINT [FK_dbo.SitemapItem_dbo.Sitemap_SitemapId] FOREIGN KEY ([SitemapId]) REFERENCES [dbo].[Sitemap] ([Id]) ON DELETE CASCADE
GO
