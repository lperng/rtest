CREATE TABLE [dbo].[StoreFulfillmentCenter]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Type] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FulfillmentCenterId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[StoreId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
GO
ALTER TABLE [dbo].[StoreFulfillmentCenter] ADD CONSTRAINT [PK_dbo.StoreFulfillmentCenter] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_StoreId] ON [dbo].[StoreFulfillmentCenter] ([StoreId])
GO
ALTER TABLE [dbo].[StoreFulfillmentCenter] ADD CONSTRAINT [FK_dbo.StoreFulfillmentCenter_dbo.Store_StoreId] FOREIGN KEY ([StoreId]) REFERENCES [dbo].[Store] ([Id]) ON DELETE CASCADE
GO
