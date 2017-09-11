CREATE TABLE [dbo].[StoreTaxProvider]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Code] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Priority] [int] NOT NULL,
[Name] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LogoUrl] [nvarchar] (2048) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsActive] [bit] NOT NULL,
[StoreId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
GO
ALTER TABLE [dbo].[StoreTaxProvider] ADD CONSTRAINT [PK_dbo.StoreTaxProvider] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_StoreId] ON [dbo].[StoreTaxProvider] ([StoreId])
GO
ALTER TABLE [dbo].[StoreTaxProvider] ADD CONSTRAINT [FK_dbo.StoreTaxProvider_dbo.Store_StoreId] FOREIGN KEY ([StoreId]) REFERENCES [dbo].[Store] ([Id]) ON DELETE CASCADE
GO
