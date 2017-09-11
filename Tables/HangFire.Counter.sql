CREATE TABLE [HangFire].[Counter]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Key] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Value] [smallint] NOT NULL,
[ExpireAt] [datetime] NULL
)
GO
ALTER TABLE [HangFire].[Counter] ADD CONSTRAINT [PK_HangFire_Counter] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_HangFire_Counter_Key] ON [HangFire].[Counter] ([Key]) INCLUDE ([Value])
GO
