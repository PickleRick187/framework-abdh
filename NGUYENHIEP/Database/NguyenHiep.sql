/****** Object:  ForeignKey [FK_tblProduct_tblCategory]    Script Date: 08/05/2009 00:49:15 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblProduct_tblCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProduct]'))
ALTER TABLE [dbo].[tblProduct] DROP CONSTRAINT [FK_tblProduct_tblCategory]
GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 08/05/2009 00:49:15 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblProduct]') AND type in (N'U'))
DROP TABLE [dbo].[tblProduct]
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 08/05/2009 00:49:15 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCategory]') AND type in (N'U'))
DROP TABLE [dbo].[tblCategory]
GO
/****** Object:  Table [dbo].[tblNews]    Script Date: 08/05/2009 00:49:15 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblNews]') AND type in (N'U'))
DROP TABLE [dbo].[tblNews]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 08/05/2009 00:49:15 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblUser]') AND type in (N'U'))
DROP TABLE [dbo].[tblUser]
GO
/****** Object:  Table [dbo].[tblEmail]    Script Date: 08/05/2009 00:49:15 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblEmail]') AND type in (N'U'))
DROP TABLE [dbo].[tblEmail]
GO
/****** Object:  Table [dbo].[tblInformation]    Script Date: 08/05/2009 00:49:15 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformation]') AND type in (N'U'))
DROP TABLE [dbo].[tblInformation]
GO
/****** Object:  Table [dbo].[tblInformation]    Script Date: 08/05/2009 00:49:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformation]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblInformation](
	[ID] [uniqueidentifier] NOT NULL,
	[CompanyNameVN] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CompanyNameEN] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Logo] [image] NULL,
	[IntroduceVN] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[IntroduceEN] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContactVN] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContactEN] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Deleted] [bit] NULL,
 CONSTRAINT [PK_tblInformation] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO

/****** Object:  Table [dbo].[tblEmail]    Script Date: 08/05/2009 00:49:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblEmail]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblEmail](
	[ID] [uniqueidentifier] NOT NULL,
	[SendDate] [datetime] NULL,
	[Sender] [nvarchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Email] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SendTo] [tinyint] NULL,
	[Title] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Content] [nvarchar](4000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_tblEmail] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO

/****** Object:  Table [dbo].[tblUser]    Script Date: 08/05/2009 00:49:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblUser]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblUser](
	[ID] [uniqueidentifier] NOT NULL,
	[UserNo] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Status] [tinyint] NULL,
	[UserName] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Password] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Deleted] [bit] NULL,
	[Email] [nchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Department] [tinyint] NULL,
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO

/****** Object:  Table [dbo].[tblNews]    Script Date: 08/05/2009 00:49:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblNews]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblNews](
	[ID] [uniqueidentifier] NOT NULL,
	[TitleVN] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TitleEN] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SubjectVN] [nvarchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SubjectEN] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContentVN] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContentEN] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Type] [tinyint] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PostedDate] [datetime] NULL,
	[PostedBy] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EndedBy] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EndedDate] [datetime] NULL,
	[Deleted] [bit] NULL,
	[Image] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_tblNews] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO

/****** Object:  Table [dbo].[tblCategory]    Script Date: 08/05/2009 00:49:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCategory]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblCategory](
	[ID] [uniqueidentifier] NOT NULL,
	[CategoryNo] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
	[CategoryNameVN] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CategoryNameEN] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DescriptionVN] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[DescriptionEN] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UpdatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Deleted] [bit] NULL,
 CONSTRAINT [PK_tblCategory] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO

/****** Object:  Table [dbo].[tblProduct]    Script Date: 08/05/2009 00:49:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblProduct]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblProduct](
	[ID] [uniqueidentifier] NOT NULL,
	[ProductNo] [varchar](100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CategoryID] [uniqueidentifier] NULL,
	[ProductNameVN] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ProductNameEN] [varchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Description] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PriceVN] [float] NULL,
	[PriceEN] [float] NULL,
	[Image] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreatedBy] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UpdatedDate] [datetime] NULL,
	[Deleted] [bit] NULL,
	[Promoted] [bit] NULL,
	[StoreStatus] [bit] NULL,
	[WarrantyTime] [nvarchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Property] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_tblProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO

/****** Object:  ForeignKey [FK_tblProduct_tblCategory]    Script Date: 08/05/2009 00:49:15 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblProduct_tblCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProduct]'))
ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD  CONSTRAINT [FK_tblProduct_tblCategory] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tblCategory] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblProduct_tblCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProduct]'))
ALTER TABLE [dbo].[tblProduct] CHECK CONSTRAINT [FK_tblProduct_tblCategory]
GO
