/****** Object:  ForeignKey [FK_tblProduct_tblCategory]    Script Date: 07/25/2009 11:27:44 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblProduct_tblCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProduct]'))
ALTER TABLE [dbo].[tblProduct] DROP CONSTRAINT [FK_tblProduct_tblCategory]
GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 07/25/2009 11:27:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblProduct]') AND type in (N'U'))
DROP TABLE [dbo].[tblProduct]
GO
/****** Object:  Table [dbo].[tblInformation]    Script Date: 07/25/2009 11:27:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformation]') AND type in (N'U'))
DROP TABLE [dbo].[tblInformation]
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 07/25/2009 11:27:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCategory]') AND type in (N'U'))
DROP TABLE [dbo].[tblCategory]
GO
/****** Object:  Table [dbo].[tblNews]    Script Date: 07/25/2009 11:27:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblNews]') AND type in (N'U'))
DROP TABLE [dbo].[tblNews]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 07/25/2009 11:27:44 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblUser]') AND type in (N'U'))
DROP TABLE [dbo].[tblUser]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 07/25/2009 11:27:44 ******/
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
 CONSTRAINT [PK_tblUser] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  Table [dbo].[tblNews]    Script Date: 07/25/2009 11:27:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblNews]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[tblNews](
	[ID] [uniqueidentifier] NOT NULL,
	[TitleVN] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[TitleEN] [nvarchar](200) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SubjectVN] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[SubjectEN] [varchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContentVN] [ntext] COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[ContentEN] [varchar](1000) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[Type] [tinyint] NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PostedDate] [datetime] NULL,
	[PostedBy] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EndedBy] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[EndedDate] [datetime] NULL,
	[Deleted] [bit] NULL,
	[Image] [nvarchar](max) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
 CONSTRAINT [PK_tblNews] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
INSERT [dbo].[tblNews] ([ID], [TitleVN], [TitleEN], [SubjectVN], [SubjectEN], [ContentVN], [ContentEN], [Type], [CreatedDate], [CreatedBy], [PostedDate], [PostedBy], [EndedBy], [EndedDate], [Deleted], [Image]) VALUES (N'72593ae0-cb17-49d6-82e5-0de78c2470c4', N'Image 8', NULL, NULL, NULL, N'Cùng với Ngọc Hải và Ngọc Hà, ba anh em Ngọc sơn đã từng thực hiện nhiều chương trình ca nhạc. Với giọng nam cao, ấm, khỏe có âm vựng khá rộng; với một phong cách chuyên nghiệp Ngọc Sơn không chỉ để lại cho khán giả trong nước và quốc tế ấn tượng với những ca khúc dân tộc đằm thắm, trữ tình mà anh còn có sức cuốn hút bởi nhiều thể loại âm nhạc khác nhau như Pop, Rap,Cùng với Ngọc Hải và Ngọc Hà, ba anh em Ngọc sơn đã từng thực hiện nhiều chương trình ca nhạc. Với giọng nam cao, ấm, khỏe có âm vựng khá rộng; với một phong cách chuyên nghiệp Ngọc Sơn không chỉ để lại cho khán đã từng thực hiện nhiều chương trình ca nhạc. Với giọng nam cao, ấm, khỏe có âm vựng khá rộng; với một phong cách chuyên nghiệp Ngọc Sơn không chỉ để lại cho khán </p>Cùng với Ngọc Hải và Ngọc Hà, ba anh em Ngọc sơn đã từng thực hiện nhiều chương trình ca nhạc. Với giọng nam cao, ấm, khỏe có âm vựng khá rộng; với một phong cách chuyên nghiệp Ngọc Sơn không chỉ để lại cho khán giả trong nước và quốc tế ấn tượng với những ca khúc dân tộc đằm thắm, trữ tình mà anh còn có sức cuốn hút bởi nhiều thể loại âm nhạc khác nhau như Pop, Rap,Cùng với Ngọc Hải và Ngọc Hà, ba anh em Ngọc sơn đã từng thực hiện nhiều chương trình ca nhạc. Với giọng nam cao, ấm, khỏe có âm vựng khá rộng; với một phong cách chuyên nghiệp Ngọc Sơn không chỉ để lại cho khán đã từng thực hiện nhiều chương trình ca nhạc. Với giọng nam cao, ấm, khỏe có âsm vựng khá rộng; với một phong cách chuyên nghiệp Ngọc Sơn không chỉ để lại cho khán', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/Images/image5.jpg')
INSERT [dbo].[tblNews] ([ID], [TitleVN], [TitleEN], [SubjectVN], [SubjectEN], [ContentVN], [ContentEN], [Type], [CreatedDate], [CreatedBy], [PostedDate], [PostedBy], [EndedBy], [EndedDate], [Deleted], [Image]) VALUES (N'bd674eb2-8562-4ca7-ad56-1b42264e9897', N'Image 7', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/Images/image2.jpg')
INSERT [dbo].[tblNews] ([ID], [TitleVN], [TitleEN], [SubjectVN], [SubjectEN], [ContentVN], [ContentEN], [Type], [CreatedDate], [CreatedBy], [PostedDate], [PostedBy], [EndedBy], [EndedDate], [Deleted], [Image]) VALUES (N'2ca303b2-0d52-4ef7-8f07-1e9f9610f258', N'Image 5', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/Images/image5.jpg')
INSERT [dbo].[tblNews] ([ID], [TitleVN], [TitleEN], [SubjectVN], [SubjectEN], [ContentVN], [ContentEN], [Type], [CreatedDate], [CreatedBy], [PostedDate], [PostedBy], [EndedBy], [EndedDate], [Deleted], [Image]) VALUES (N'962e5535-4880-4ce0-8f96-2e68b07ffa39', N'Image 9', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/Images/image4.jpg')
INSERT [dbo].[tblNews] ([ID], [TitleVN], [TitleEN], [SubjectVN], [SubjectEN], [ContentVN], [ContentEN], [Type], [CreatedDate], [CreatedBy], [PostedDate], [PostedBy], [EndedBy], [EndedDate], [Deleted], [Image]) VALUES (N'589f967b-1f89-429a-8165-68b98ceeb8ed', N'Image 6', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/Images/image1.jpg')
INSERT [dbo].[tblNews] ([ID], [TitleVN], [TitleEN], [SubjectVN], [SubjectEN], [ContentVN], [ContentEN], [Type], [CreatedDate], [CreatedBy], [PostedDate], [PostedBy], [EndedBy], [EndedDate], [Deleted], [Image]) VALUES (N'449aa763-03bb-4789-b217-8450625ade62', N'Image 1', NULL, NULL, NULL, N'Cùng v?i Ng?c H?i và Ng?c Hà, ba anh em Ng?c son dã t?ng th?c hi?n nhi?u chuong trình ca nh?c. V?i gi?ng nam cao, ?m, kh?e có âm v?ng khá r?ng; v?i m?t phong cách chuyên nghi?p Ng?c Son không ch? d? l?i cho khán gi? trong nu?c và qu?c t? ?n tu?ng v?i nh?ng ca khúc dân t?c d?m th?m, tr? tình mà anh còn có s?c cu?n hút b?i nhi?u th? lo?i âm nh?c khác nhau nhu Pop, Rap,', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/Images/image1.jpg')
INSERT [dbo].[tblNews] ([ID], [TitleVN], [TitleEN], [SubjectVN], [SubjectEN], [ContentVN], [ContentEN], [Type], [CreatedDate], [CreatedBy], [PostedDate], [PostedBy], [EndedBy], [EndedDate], [Deleted], [Image]) VALUES (N'de21d991-28d5-4f59-b20a-9343f5e18015', N'Image 3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/Images/image4.jpg')
INSERT [dbo].[tblNews] ([ID], [TitleVN], [TitleEN], [SubjectVN], [SubjectEN], [ContentVN], [ContentEN], [Type], [CreatedDate], [CreatedBy], [PostedDate], [PostedBy], [EndedBy], [EndedDate], [Deleted], [Image]) VALUES (N'961dff3b-8994-41dd-a437-a6c458ce31a7', N'Image 2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/Images/image2.jpg')
INSERT [dbo].[tblNews] ([ID], [TitleVN], [TitleEN], [SubjectVN], [SubjectEN], [ContentVN], [ContentEN], [Type], [CreatedDate], [CreatedBy], [PostedDate], [PostedBy], [EndedBy], [EndedDate], [Deleted], [Image]) VALUES (N'4f66b44d-d7d0-4929-88f0-d27e851201c6', N'Image 4', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'/Images/image5.jpg')
/****** Object:  Table [dbo].[tblCategory]    Script Date: 07/25/2009 11:27:44 ******/
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
/****** Object:  Table [dbo].[tblInformation]    Script Date: 07/25/2009 11:27:44 ******/
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
/****** Object:  Table [dbo].[tblProduct]    Script Date: 07/25/2009 11:27:44 ******/
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
	[Description] [nvarchar](500) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[PriceVN] [int] NULL,
	[PriceEN] [float] NULL,
	[Image] [image] NULL,
	[CreatedBy] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [varchar](50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
	[UpdatedDate] [datetime] NULL,
	[Deleted] [bit] NULL,
 CONSTRAINT [PK_tblProduct] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON)
)
END
GO
/****** Object:  ForeignKey [FK_tblProduct_tblCategory]    Script Date: 07/25/2009 11:27:44 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblProduct_tblCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProduct]'))
ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD  CONSTRAINT [FK_tblProduct_tblCategory] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tblCategory] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblProduct_tblCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProduct]'))
ALTER TABLE [dbo].[tblProduct] CHECK CONSTRAINT [FK_tblProduct_tblCategory]
GO
