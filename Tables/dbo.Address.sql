CREATE TABLE [dbo].[Address]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [nvarchar] (2048) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FirstName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Line1] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Line2] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[City] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CountryCode] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[StateProvince] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CountryName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PostalCode] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RegionId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[RegionName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Type] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DaytimePhoneNumber] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[EveningPhoneNumber] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FaxNumber] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Email] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Organization] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MemberId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[Address] ADD CONSTRAINT [PK_dbo.Address] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_MemberId] ON [dbo].[Address] ([MemberId])
GO
ALTER TABLE [dbo].[Address] ADD CONSTRAINT [FK_dbo.Address_dbo.Member_MemberId] FOREIGN KEY ([MemberId]) REFERENCES [dbo].[Member] ([Id]) ON DELETE CASCADE
GO
