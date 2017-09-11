CREATE TABLE [dbo].[PlatformSettingValue]
(
[Id] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ValueType] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ShortTextValue] [nvarchar] (512) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LongTextValue] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[DecimalValue] [decimal] (18, 2) NOT NULL,
[IntegerValue] [int] NOT NULL,
[BooleanValue] [bit] NOT NULL,
[DateTimeValue] [datetime] NULL,
[Locale] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[SettingId] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (64) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[PlatformSettingValue] ADD CONSTRAINT [PK_dbo.PlatformSettingValue] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_SettingId] ON [dbo].[PlatformSettingValue] ([SettingId])
GO
ALTER TABLE [dbo].[PlatformSettingValue] ADD CONSTRAINT [FK_dbo.PlatformSettingValue_dbo.PlatformSetting_SettingId] FOREIGN KEY ([SettingId]) REFERENCES [dbo].[PlatformSetting] ([Id]) ON DELETE CASCADE
GO
