CREATE TABLE [dbo].[PromotionUsage]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ObjectId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ObjectType] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CouponCode] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PromotionId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[PromotionUsage] ADD CONSTRAINT [PK_dbo.PromotionUsage] PRIMARY KEY CLUSTERED  ([Id])
GO
ALTER TABLE [dbo].[PromotionUsage] ADD CONSTRAINT [FK_dbo.PromotionUsage_dbo.Promotion_PromotionId] FOREIGN KEY ([PromotionId]) REFERENCES [dbo].[Promotion] ([Id]) ON DELETE CASCADE
GO
