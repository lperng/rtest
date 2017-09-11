CREATE TABLE [dbo].[StoreCurrency]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CurrencyCode] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[StoreId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
GO
ALTER TABLE [dbo].[StoreCurrency] ADD CONSTRAINT [PK_dbo.StoreCurrency] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_StoreId] ON [dbo].[StoreCurrency] ([StoreId])
GO
ALTER TABLE [dbo].[StoreCurrency] ADD CONSTRAINT [FK_dbo.StoreCurrency_dbo.Store_StoreId] FOREIGN KEY ([StoreId]) REFERENCES [dbo].[Store] ([Id]) ON DELETE CASCADE
GO
