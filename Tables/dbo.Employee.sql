CREATE TABLE [dbo].[Employee]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Type] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[IsActive] [bit] NOT NULL,
[FirstName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MiddleName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastName] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[FullName] [nvarchar] (254) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TimeZone] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DefaultLanguage] [nvarchar] (32) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[BirthDate] [datetime] NULL,
[PhotoUrl] [nvarchar] (2083) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[Employee] ADD CONSTRAINT [PK_dbo.Employee] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_Id] ON [dbo].[Employee] ([Id])
GO
ALTER TABLE [dbo].[Employee] ADD CONSTRAINT [FK_dbo.Employee_dbo.Member_Id] FOREIGN KEY ([Id]) REFERENCES [dbo].[Member] ([Id])
GO
