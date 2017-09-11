CREATE TABLE [HangFire].[AggregatedCounter]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[Key] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Value] [bigint] NOT NULL,
[ExpireAt] [datetime] NULL
)
GO
ALTER TABLE [HangFire].[AggregatedCounter] ADD CONSTRAINT [PK_HangFire_CounterAggregated] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE UNIQUE NONCLUSTERED INDEX [UX_HangFire_CounterAggregated_Key] ON [HangFire].[AggregatedCounter] ([Key]) INCLUDE ([Value])
GO
