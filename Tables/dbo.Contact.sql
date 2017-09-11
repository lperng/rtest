CREATE TABLE [dbo].[Contact]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FullName] [nvarchar] (254) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TimeZone] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DefaultLanguage] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BirthDate] [datetime] NULL,
[TaxpayerId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PreferredDelivery] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[PreferredCommunication] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Photo] [varbinary] (max) NULL,
[Salutation] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FirstName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MiddleName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[Contact] ADD CONSTRAINT [PK_dbo.Contact] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_Id] ON [dbo].[Contact] ([Id])
GO
ALTER TABLE [dbo].[Contact] ADD CONSTRAINT [FK_dbo.Contact_dbo.Member_Id] FOREIGN KEY ([Id]) REFERENCES [dbo].[Member] ([Id])
GO
