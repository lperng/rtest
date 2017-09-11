CREATE TABLE [HangFire].[JobQueue]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[JobId] [int] NOT NULL,
[Queue] [nvarchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FetchedAt] [datetime] NULL
)
GO
ALTER TABLE [HangFire].[JobQueue] ADD CONSTRAINT [PK_HangFire_JobQueue] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_HangFire_JobQueue_QueueAndFetchedAt] ON [HangFire].[JobQueue] ([Queue], [FetchedAt])
GO
