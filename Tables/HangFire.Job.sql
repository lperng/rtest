CREATE TABLE [HangFire].[Job]
(
[Id] [int] NOT NULL IDENTITY(1, 1),
[StateId] [int] NULL,
[StateName] [nvarchar] (20) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[InvocationData] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Arguments] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CreatedAt] [datetime] NOT NULL,
[ExpireAt] [datetime] NULL
)
GO
ALTER TABLE [HangFire].[Job] ADD CONSTRAINT [PK_HangFire_Job] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_HangFire_Job_ExpireAt] ON [HangFire].[Job] ([ExpireAt]) INCLUDE ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_HangFire_Job_StateName] ON [HangFire].[Job] ([StateName])
GO
