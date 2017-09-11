CREATE TABLE [dbo].[Sequence]
(
[ObjectType] [nvarchar] (256) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Value] [int] NOT NULL,
[ModifiedDate] [datetime] NULL
)
GO
ALTER TABLE [dbo].[Sequence] ADD CONSTRAINT [PK_dbo.Sequence] PRIMARY KEY CLUSTERED  ([ObjectType])
GO
