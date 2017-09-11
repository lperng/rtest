CREATE TABLE [dbo].[QuoteAttachment]
(
[Id] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Url] [nvarchar] (2083) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Name] [nvarchar] (1024) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[MimeType] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Size] [bigint] NOT NULL,
[QuoteRequestId] [nvarchar] (128) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[CreatedDate] [datetime] NOT NULL,
[ModifiedDate] [datetime] NULL,
[CreatedBy] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[ModifiedBy] [nvarchar] (max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL
)
GO
ALTER TABLE [dbo].[QuoteAttachment] ADD CONSTRAINT [PK_dbo.QuoteAttachment] PRIMARY KEY CLUSTERED  ([Id])
GO
CREATE NONCLUSTERED INDEX [IX_QuoteRequestId] ON [dbo].[QuoteAttachment] ([QuoteRequestId])
GO
ALTER TABLE [dbo].[QuoteAttachment] ADD CONSTRAINT [FK_dbo.QuoteAttachment_dbo.QuoteRequest_QuoteRequestId] FOREIGN KEY ([QuoteRequestId]) REFERENCES [dbo].[QuoteRequest] ([Id])
GO
