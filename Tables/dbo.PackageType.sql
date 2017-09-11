CREATE TABLE [dbo].[PackageType]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [nvarchar] (254) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Length] [decimal] (18, 2) NOT NULL,
[Width] [decimal] (18, 2) NOT NULL,
[Height] [decimal] (18, 2) NOT NULL,
[MeasureUnit] [nvarchar] (16) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[PackageType] ADD CONSTRAINT [PK_dbo.PackageType] PRIMARY KEY CLUSTERED  ([Id])
GO
