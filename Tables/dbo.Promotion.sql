CREATE TABLE [dbo].[Promotion]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[StoreId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CatalogId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [nvarchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsActive] [bit] NOT NULL,
[StartDate] [datetime] NOT NULL,
[EndDate] [datetime] NULL,
[Priority] [int] NOT NULL,
[IsExclusive] [bit] NOT NULL,
[PredicateSerialized] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PredicateVisualTreeSerialized] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RewardsSerialized] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PerCustomerLimit] [int] NOT NULL,
[TotalLimit] [int] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[Promotion] ADD CONSTRAINT [PK_dbo.Promotion] PRIMARY KEY CLUSTERED  ([Id])
GO
