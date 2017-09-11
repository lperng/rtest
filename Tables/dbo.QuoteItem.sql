CREATE TABLE [dbo].[QuoteItem]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Currency] [nvarchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ProductId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CatalogId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CategoryId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Comment] [nvarchar] (2048) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ImageUrl] [nvarchar] (1028) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[QuoteRequestId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ListPrice] [money] NOT NULL CONSTRAINT [DF__QuoteItem__ListP__3F6663D5] DEFAULT ((0)),
[SalePrice] [money] NOT NULL CONSTRAINT [DF__QuoteItem__SaleP__405A880E] DEFAULT ((0)),
[TaxType] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Sku] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL CONSTRAINT [DF__QuoteItem__Sku__451F3D2B] DEFAULT ('')
)
GO
ALTER TABLE [dbo].[QuoteItem] ADD CONSTRAINT [PK_dbo.QuoteItem] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_QuoteRequestId] ON [dbo].[QuoteItem] ([QuoteRequestId])
GO
ALTER TABLE [dbo].[QuoteItem] ADD CONSTRAINT [FK_dbo.QuoteItem_dbo.QuoteRequest_QuoteRequestId] FOREIGN KEY ([QuoteRequestId]) REFERENCES [dbo].[QuoteRequest] ([Id]) ON DELETE CASCADE
GO
