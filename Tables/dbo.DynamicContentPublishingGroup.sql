CREATE TABLE [dbo].[DynamicContentPublishingGroup]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Priority] [int] NOT NULL,
[IsActive] [bit] NOT NULL,
[StartDate] [datetime] NULL,
[EndDate] [datetime] NULL,
[ConditionExpression] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PredicateVisualTreeSerialized] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StoreId] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[DynamicContentPublishingGroup] ADD CONSTRAINT [PK_dbo.DynamicContentPublishingGroup] PRIMARY KEY CLUSTERED  ([Id])
GO
