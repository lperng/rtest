CREATE TABLE [dbo].[Association]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AssociationType] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Priority] [int] NOT NULL,
[ItemId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Discriminator] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AssociatedItemId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AssociatedCategoryId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Tags] [nvarchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Quantity] [int] NULL
)
GO
ALTER TABLE [dbo].[Association] ADD CONSTRAINT [PK_dbo.Association] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_AssociatedCategoryId] ON [dbo].[Association] ([AssociatedCategoryId])
GO
CREATE NONCLUSTERED INDEX [IX_AssociatedItemId] ON [dbo].[Association] ([AssociatedItemId])
GO
CREATE NONCLUSTERED INDEX [IX_ItemId] ON [dbo].[Association] ([ItemId])
GO
ALTER TABLE [dbo].[Association] ADD CONSTRAINT [FK_dbo.Association_dbo.Category_AssociatedCategoryId] FOREIGN KEY ([AssociatedCategoryId]) REFERENCES [dbo].[Category] ([Id])
GO
ALTER TABLE [dbo].[Association] ADD CONSTRAINT [FK_dbo.Association_dbo.Item_AssociatedItemId] FOREIGN KEY ([AssociatedItemId]) REFERENCES [dbo].[Item] ([Id])
GO
ALTER TABLE [dbo].[Association] ADD CONSTRAINT [FK_dbo.Association_dbo.Item_ItemId] FOREIGN KEY ([ItemId]) REFERENCES [dbo].[Item] ([Id])
GO
