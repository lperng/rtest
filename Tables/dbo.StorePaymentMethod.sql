CREATE TABLE [dbo].[StorePaymentMethod]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Code] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Priority] [int] NOT NULL,
[Name] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LogoUrl] [nvarchar] (2048) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsActive] [bit] NOT NULL,
[StoreId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsAvailableForPartial] [bit] NOT NULL CONSTRAINT [DF__StorePaym__IsAva__52E34C9D] DEFAULT ((0))
)
GO
ALTER TABLE [dbo].[StorePaymentMethod] ADD CONSTRAINT [PK_dbo.StorePaymentMethod] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_StoreId] ON [dbo].[StorePaymentMethod] ([StoreId])
GO
ALTER TABLE [dbo].[StorePaymentMethod] ADD CONSTRAINT [FK_dbo.StorePaymentMethod_dbo.Store_StoreId] FOREIGN KEY ([StoreId]) REFERENCES [dbo].[Store] ([Id]) ON DELETE CASCADE
GO
