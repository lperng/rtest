CREATE TABLE [dbo].[PlatformDynamicProperty]
(
[Id] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ObjectType] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Name] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ValueType] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IsArray] [bit] NOT NULL,
[IsDictionary] [bit] NOT NULL,
[IsMultilingual] [bit] NOT NULL,
[IsRequired] [bit] NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Description] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DisplayOrder] [int] NULL
)
GO
ALTER TABLE [dbo].[PlatformDynamicProperty] ADD CONSTRAINT [PK_dbo.PlatformDynamicProperty] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_PlatformDynamicProperty_ObjectType_Name] ON [dbo].[PlatformDynamicProperty] ([ObjectType], [Name])
GO
