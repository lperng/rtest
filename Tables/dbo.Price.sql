CREATE TABLE [dbo].[Price]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Sale] [decimal] (18, 2) NULL,
[List] [decimal] (18, 2) NOT NULL,
[ProductId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ProductName] [nvarchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MinQuantity] [decimal] (18, 2) NOT NULL,
[PricelistId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[Price] ADD CONSTRAINT [PK_dbo.Price] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_PricelistId] ON [dbo].[Price] ([PricelistId])
GO
ALTER TABLE [dbo].[Price] ADD CONSTRAINT [FK_dbo.Price_dbo.Pricelist_PricelistId] FOREIGN KEY ([PricelistId]) REFERENCES [dbo].[Pricelist] ([Id]) ON DELETE CASCADE
GO
