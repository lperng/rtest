CREATE TABLE [HangFire].[Set]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Key] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Score] [float] NOT NULL,
[Value] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ExpireAt] [datetime] NULL
)
GO
ALTER TABLE [HangFire].[Set] ADD CONSTRAINT [PK_HangFire_Set] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_HangFire_Set_ExpireAt] ON [HangFire].[Set] ([ExpireAt]) INCLUDE ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_HangFire_Set_Key] ON [HangFire].[Set] ([Key]) INCLUDE ([ExpireAt], [Value])
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_HangFire_Set_KeyAndValue] ON [HangFire].[Set] ([Key], [Value])
GO
