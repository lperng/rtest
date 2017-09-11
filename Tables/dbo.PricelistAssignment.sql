CREATE TABLE [dbo].[PricelistAssignment]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [nvarchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Priority] [int] NOT NULL,
[StartDate] [datetime] NULL,
[EndDate] [datetime] NULL,
[ConditionExpression] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PredicateVisualTreeSerialized] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CatalogId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PricelistId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[PricelistAssignment] ADD CONSTRAINT [PK_dbo.PricelistAssignment] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_PricelistId] ON [dbo].[PricelistAssignment] ([PricelistId])
GO
ALTER TABLE [dbo].[PricelistAssignment] ADD CONSTRAINT [FK_dbo.PricelistAssignment_dbo.Pricelist_PricelistId] FOREIGN KEY ([PricelistId]) REFERENCES [dbo].[Pricelist] ([Id]) ON DELETE CASCADE
GO
