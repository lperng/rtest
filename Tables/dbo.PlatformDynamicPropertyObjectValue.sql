CREATE TABLE [dbo].[PlatformDynamicPropertyObjectValue]
(
[Id] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ObjectType] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ObjectId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Locale] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ValueType] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ShortTextValue] [nvarchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LongTextValue] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DecimalValue] [decimal] (18, 2) NULL,
[IntegerValue] [int] NULL,
[BooleanValue] [bit] NULL,
[DateTimeValue] [datetime] NULL,
[PropertyId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DictionaryItemId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[PlatformDynamicPropertyObjectValue] ADD CONSTRAINT [PK_dbo.PlatformDynamicPropertyObjectValue] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_DictionaryItemId] ON [dbo].[PlatformDynamicPropertyObjectValue] ([DictionaryItemId])
GO
CREATE NONCLUSTERED INDEX [IX_PropertyId] ON [dbo].[PlatformDynamicPropertyObjectValue] ([PropertyId])
GO
ALTER TABLE [dbo].[PlatformDynamicPropertyObjectValue] ADD CONSTRAINT [FK_dbo.PlatformDynamicPropertyObjectValue_dbo.PlatformDynamicProperty_PropertyId] FOREIGN KEY ([PropertyId]) REFERENCES [dbo].[PlatformDynamicProperty] ([Id]) ON DELETE CASCADE
GO
ALTER TABLE [dbo].[PlatformDynamicPropertyObjectValue] ADD CONSTRAINT [FK_dbo.PlatformDynamicPropertyObjectValue_dbo.PlatformDynamicPropertyDictionaryItem_DictionaryItemId] FOREIGN KEY ([DictionaryItemId]) REFERENCES [dbo].[PlatformDynamicPropertyDictionaryItem] ([Id])
GO
