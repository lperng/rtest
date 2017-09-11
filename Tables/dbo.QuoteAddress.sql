CREATE TABLE [dbo].[QuoteAddress]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AddressType] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Organization] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CountryCode] [nvarchar] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CountryName] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[City] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PostalCode] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Line1] [nvarchar] (2048) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Line2] [nvarchar] (2048) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RegionId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RegionName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FirstName] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LastName] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Phone] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Email] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[QuoteRequestId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
)
GO
ALTER TABLE [dbo].[QuoteAddress] ADD CONSTRAINT [PK_dbo.QuoteAddress] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_QuoteRequestId] ON [dbo].[QuoteAddress] ([QuoteRequestId])
GO
ALTER TABLE [dbo].[QuoteAddress] ADD CONSTRAINT [FK_dbo.QuoteAddress_dbo.QuoteRequest_QuoteRequestId] FOREIGN KEY ([QuoteRequestId]) REFERENCES [dbo].[QuoteRequest] ([Id]) ON DELETE CASCADE
GO
