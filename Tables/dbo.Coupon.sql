CREATE TABLE [dbo].[Coupon]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Code] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PromotionId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MaxUsesNumber] [int] NOT NULL CONSTRAINT [DF__Coupon__MaxUsesN__79FD19BE] DEFAULT ((0)),
[ExpirationDate] [datetime] NULL
)
GO
ALTER TABLE [dbo].[Coupon] ADD CONSTRAINT [PK_dbo.Coupon] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_CodeAndPromotionId] ON [dbo].[Coupon] ([Code], [PromotionId])
GO
ALTER TABLE [dbo].[Coupon] ADD CONSTRAINT [FK_dbo.Coupon_dbo.Promotion_PromotionId] FOREIGN KEY ([PromotionId]) REFERENCES [dbo].[Promotion] ([Id]) ON DELETE CASCADE
GO
