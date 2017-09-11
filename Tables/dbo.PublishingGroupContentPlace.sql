CREATE TABLE [dbo].[PublishingGroupContentPlace]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DynamicContentPublishingGroupId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DynamicContentPlaceId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[PublishingGroupContentPlace] ADD CONSTRAINT [PK_dbo.PublishingGroupContentPlace] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_DynamicContentPlaceId] ON [dbo].[PublishingGroupContentPlace] ([DynamicContentPlaceId])
GO
CREATE NONCLUSTERED INDEX [IX_DynamicContentPublishingGroupId] ON [dbo].[PublishingGroupContentPlace] ([DynamicContentPublishingGroupId])
GO
ALTER TABLE [dbo].[PublishingGroupContentPlace] ADD CONSTRAINT [FK_dbo.PublishingGroupContentPlace_dbo.DynamicContentPlace_DynamicContentPlaceId] FOREIGN KEY ([DynamicContentPlaceId]) REFERENCES [dbo].[DynamicContentPlace] ([Id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PublishingGroupContentPlace] ADD CONSTRAINT [FK_dbo.PublishingGroupContentPlace_dbo.DynamicContentPublishingGroup_DynamicContentPublishingGroupId] FOREIGN KEY ([DynamicContentPublishingGroupId]) REFERENCES [dbo].[DynamicContentPublishingGroup] ([Id]) ON DELETE CASCADE
GO
