CREATE TABLE [HangFire].[Server]
(
[Id] [nvarchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Data] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[LastHeartbeat] [datetime] NOT NULL
)
GO
ALTER TABLE [HangFire].[Server] ADD CONSTRAINT [PK_HangFire_Server] PRIMARY KEY CLUSTERED  ([Id])
GO
