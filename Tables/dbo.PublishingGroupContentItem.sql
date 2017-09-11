CREATE TABLE [dbo].[PublishingGroupContentItem]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DynamicContentPublishingGroupId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DynamicContentItemId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[PublishingGroupContentItem] ADD CONSTRAINT [PK_dbo.PublishingGroupContentItem] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_DynamicContentItemId] ON [dbo].[PublishingGroupContentItem] ([DynamicContentItemId])
GO
CREATE NONCLUSTERED INDEX [IX_DynamicContentPublishingGroupId] ON [dbo].[PublishingGroupContentItem] ([DynamicContentPublishingGroupId])
GO
ALTER TABLE [dbo].[PublishingGroupContentItem] ADD CONSTRAINT [FK_dbo.PublishingGroupContentItem_dbo.DynamicContentItem_DynamicContentItemId] FOREIGN KEY ([DynamicContentItemId]) REFERENCES [dbo].[DynamicContentItem] ([Id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PublishingGroupContentItem] ADD CONSTRAINT [FK_dbo.PublishingGroupContentItem_dbo.DynamicContentPublishingGroup_DynamicContentPublishingGroupId] FOREIGN KEY ([DynamicContentPublishingGroupId]) REFERENCES [dbo].[DynamicContentPublishingGroup] ([Id]) ON DELETE CASCADE
GO
