CREATE TABLE [dbo].[Category]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[StartDate] [datetime] NOT NULL,
[EndDate] [datetime] NULL,
[Code] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Category__Code__1D7B6025] DEFAULT (''),
[IsActive] [bit] NOT NULL CONSTRAINT [DF__Category__IsActi__1E6F845E] DEFAULT ((0)),
[Priority] [int] NOT NULL CONSTRAINT [DF__Category__Priori__1F63A897] DEFAULT ((0)),
[TaxType] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CatalogId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__Category__Catalo__2057CCD0] DEFAULT (''),
[ParentCategoryId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL CONSTRAINT [DF__Category__Create__214BF109] DEFAULT ('1900-01-01T00:00:00.000'),
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[Category] ADD CONSTRAINT [PK_dbo.Category] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_CatalogId] ON [dbo].[Category] ([CatalogId])
GO
CREATE NONCLUSTERED INDEX [IX_ParentCategoryId] ON [dbo].[Category] ([ParentCategoryId])
GO
ALTER TABLE [dbo].[Category] ADD CONSTRAINT [FK_dbo.Category_dbo.Category_ParentCategoryId] FOREIGN KEY ([ParentCategoryId]) REFERENCES [dbo].[Category] ([Id])
GO
