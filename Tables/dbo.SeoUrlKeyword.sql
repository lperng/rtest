CREATE TABLE [dbo].[SeoUrlKeyword]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Language] [nvarchar] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Keyword] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsActive] [bit] NOT NULL,
[Title] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MetaDescription] [nvarchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MetaKeywords] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ImageAltDescription] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ObjectId] [nvarchar] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__SeoUrlKey__Objec__151B244E] DEFAULT (''),
[ObjectType] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__SeoUrlKey__Objec__160F4887] DEFAULT (''),
[StoreId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[SeoUrlKeyword] ADD CONSTRAINT [PK_dbo.SeoUrlKeyword] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [KeywordStoreId] ON [dbo].[SeoUrlKeyword] ([Keyword], [StoreId])
GO
CREATE NONCLUSTERED INDEX [ObjectIdAndObjectType] ON [dbo].[SeoUrlKeyword] ([ObjectId], [ObjectType])
GO
