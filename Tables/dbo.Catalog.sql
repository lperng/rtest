CREATE TABLE [dbo].[Catalog]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DefaultLanguage] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[OwnerId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Virtual] [bit] NOT NULL CONSTRAINT [DF__Catalog__Virtual__2610A626] DEFAULT ((0))
)
GO
ALTER TABLE [dbo].[Catalog] ADD CONSTRAINT [PK_dbo.Catalog] PRIMARY KEY CLUSTERED  ([Id])
GO
