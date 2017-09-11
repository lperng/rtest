CREATE TABLE [dbo].[Inventory]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FulfillmentCenterId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[InStockQuantity] [decimal] (18, 2) NOT NULL,
[ReservedQuantity] [decimal] (18, 2) NOT NULL,
[ReorderMinQuantity] [decimal] (18, 2) NOT NULL,
[PreorderQuantity] [decimal] (18, 2) NOT NULL,
[BackorderQuantity] [decimal] (18, 2) NOT NULL,
[AllowBackorder] [bit] NOT NULL,
[AllowPreorder] [bit] NOT NULL,
[Status] [int] NOT NULL,
[PreorderAvailabilityDate] [datetime] NULL,
[BackorderAvailabilityDate] [datetime] NULL,
[Sku] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[Inventory] ADD CONSTRAINT [PK_dbo.Inventory] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_Sku] ON [dbo].[Inventory] ([Sku])
GO
