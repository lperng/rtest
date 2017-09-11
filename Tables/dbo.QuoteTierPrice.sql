CREATE TABLE [dbo].[QuoteTierPrice]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Price] [money] NOT NULL,
[Quantity] [bigint] NOT NULL,
[QuoteItemId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
GO
ALTER TABLE [dbo].[QuoteTierPrice] ADD CONSTRAINT [PK_dbo.QuoteTierPrice] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_QuoteItemId] ON [dbo].[QuoteTierPrice] ([QuoteItemId])
GO
ALTER TABLE [dbo].[QuoteTierPrice] ADD CONSTRAINT [FK_dbo.QuoteTierPrice_dbo.QuoteItem_QuoteItemId] FOREIGN KEY ([QuoteItemId]) REFERENCES [dbo].[QuoteItem] ([Id]) ON DELETE CASCADE
GO
