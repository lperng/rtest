CREATE TABLE [dbo].[Store]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Description] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Url] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[StoreState] [int] NOT NULL,
[TimeZone] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Country] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Region] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DefaultLanguage] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DefaultCurrency] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Catalog] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreditCardSavePolicy] [int] NOT NULL,
[SecureUrl] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Email] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[AdminEmail] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DisplayOutOfStock] [bit] NOT NULL,
[FulfillmentCenterId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ReturnsFulfillmentCenterId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[Store] ADD CONSTRAINT [PK_dbo.Store] PRIMARY KEY CLUSTERED  ([Id])
GO
