/****** Object:  ForeignKey [FK_tblProduct_tblCategory]    Script Date: 08/01/2009 04:08:10 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblProduct_tblCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProduct]'))
ALTER TABLE [dbo].[tblProduct] DROP CONSTRAINT [FK_tblProduct_tblCategory]
GO
/****** Object:  Table [dbo].[tblProduct]    Script Date: 08/01/2009 04:08:10 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblProduct]') AND type in (N'U'))
DROP TABLE [dbo].[tblProduct]
GO
/****** Object:  Table [dbo].[tblInformation]    Script Date: 08/01/2009 04:08:10 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblInformation]') AND type in (N'U'))
DROP TABLE [dbo].[tblInformation]
GO
/****** Object:  Table [dbo].[tblCategory]    Script Date: 08/01/2009 04:08:10 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblCategory]') AND type in (N'U'))
DROP TABLE [dbo].[tblCategory]
GO
/****** Object:  Table [dbo].[tblNews]    Script Date: 08/01/2009 04:08:10 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblNews]') AND type in (N'U'))
DROP TABLE [dbo].[tblNews]
GO
/****** Object:  Table [dbo].[tblUser]    Script Date: 08/01/2009 04:08:10 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblUser]') AND type in (N'U'))
DROP TABLE [dbo].[tblUser]
GO
/****** Object:  Table [dbo].[tblEmail]    Script Date: 08/01/2009 04:08:10 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[tblEmail]') AND type in (N'U'))
DROP TABLE [dbo].[tblEmail]
GO
/****** Object:  Table [dbo].[tblEmail]    Script Date: 08/01/2009 04:08:10 ******/
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
/****** Object:  Table [dbo].[tblUser]    Script Date: 08/01/2009 04:08:10 ******/
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
/****** Object:  Table [dbo].[tblNews]    Script Date: 08/01/2009 04:08:10 ******/
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
INSERT [dbo].[tblNews] ([ID], [TitleVN], [TitleEN], [SubjectVN], [SubjectEN], [ContentVN], [ContentEN], [Type], [CreatedDate], [CreatedBy], [PostedDate], [PostedBy], [EndedBy], [EndedDate], [Deleted], [Image]) VALUES (N'd2e32c61-1f8d-4ff5-bf45-0d070df020fb', NULL, N'fdsfsdfdsf', NULL, N'fdfsdfdfsd', NULL, N'<p>HER HER HER HER HER HER HER HER EHR</p>', 1, CAST(0x00009C580016315D AS DateTime), NULL, CAST(0x00009C580016315D AS DateTime), NULL, NULL, NULL, NULL, N'/Admin/ImagesInTileNews/d2e32c611f8d4ff5bf450d070df020fb.jpg')
INSERT [dbo].[tblNews] ([ID], [TitleVN], [TitleEN], [SubjectVN], [SubjectEN], [ContentVN], [ContentEN], [Type], [CreatedDate], [CreatedBy], [PostedDate], [PostedBy], [EndedBy], [EndedDate], [Deleted], [Image]) VALUES (N'8d53039a-941a-401e-af9d-561def2a70f4', N'Cùng với Ngọc Hải và Ngọc Hà, ba anh em Ngọc sơn đã từng thực hiện nhiều chương trình ca nhạc.', NULL, N'Cùng với Ngọc Hải và Ngọc Hà, ba anh em Ngọc sơn đã từng thực hiện nhiều chương trình ca nhạc. Với giọng nam cao, ấm, khỏe có âm vựng khá rộng; với một phong cách chuyên nghiệp Ngọc Sơn không chỉ để lại cho khán giả trong nước và quốc tế ấn tượng với những ca khúc dân tộc đằm thắm, trữ tình mà anh còn có sức cuốn hút bởi nhiều thể loại âm nhạc khác nhau như Pop, Rap,', NULL, N'<p>C&ugrave;ng với Ngọc Hải v&agrave; Ngọc H&agrave;, ba anh em Ngọc sơn đ&atilde; từng thực hiện nhiều chương tr&igrave;nh ca nhạc. Với giọng nam cao, ấm, khỏe c&oacute; &acirc;m vựng kh&aacute; rộng; với một phong c&aacute;ch chuy&ecirc;n nghiệp Ngọc Sơn kh&ocirc;ng chỉ để lại cho kh&aacute;n giả trong nước v&agrave; quốc tế ấn tượng với những ca kh&uacute;c d&acirc;n tộc đằm thắm, trữ t&igrave;nh m&agrave; anh c&ograve;n c&oacute; sức cuốn h&uacute;t bởi nhiều thể loại &acirc;m nhạc kh&aacute;c nhau như Pop, Rap,&lt;BR /&gt;<br />
C&ugrave;ng với Ngọc Hải v&agrave; Ngọc H&agrave;, ba anh em Ngọc sơn đ&atilde; từng thực hiện nhiều chương tr&igrave;nh ca nhạc. Với giọng nam cao, ấm, khỏe c&oacute; &acirc;m vựng kh&aacute; rộng; với một phong c&aacute;ch chuy&ecirc;n nghiệp Ngọc Sơn kh&ocirc;ng chỉ để lại cho kh&aacute;n đ&atilde; từng thực hiện nhiều chương tr&igrave;nh ca nhạc. Với giọng nam cao, ấm, khỏe c&oacute; &acirc;m vựng kh&aacute; rộng; với một phong c&aacute;ch chuy&ecirc;n nghiệp Ngọc Sơn kh&ocirc;ng chỉ để lại cho kh&aacute;n &lt;/p&gt;</p>
<p><input src="/NGUYENHIEP/uploads/image/test.jpg" width="475" height="291" type="image" /></p>
<p>&nbsp;C&ugrave;ng với Ngọc Hải v&agrave; Ngọc H&agrave;, ba anh em Ngọc sơn đ&atilde; từng thực hiện nhiều chương tr&igrave;nh ca nhạc. Với giọng nam cao, ấm, khỏe c&oacute; &acirc;m vựng kh&aacute; rộng; với một phong c&aacute;ch chuy&ecirc;n nghiệp Ngọc Sơn kh&ocirc;ng chỉ để lại cho kh&aacute;n giả trong nước v&agrave; quốc tế ấn tượng với những ca kh&uacute;c d&acirc;n tộc đằm thắm, trữ t&igrave;nh m&agrave; anh c&ograve;n c&oacute; sức cuốn h&uacute;t bởi nhiều thể loại &acirc;m nhạc kh&aacute;c nhau như Pop, Rap,<br />
C&ugrave;ng với Ngọc Hải v&agrave; Ngọc H&agrave;, ba anh em Ngọc sơn đ&atilde; từng thực hiện nhiều chương tr&igrave;nh ca nhạc. Với giọng nam cao, ấm, khỏe c&oacute; &acirc;m vựng kh&aacute; rộng; với một phong c&aacute;ch chuy&ecirc;n nghiệp Ngọc Sơn kh&ocirc;ng chỉ để lại cho kh&aacute;n đ&atilde; từng thực hiện nhiều chương tr&igrave;nh ca nhạc. Với giọng nam cao, ấm, khỏe c&oacute; &acirc;sm vựng kh&aacute; rộng; với một phong c&aacute;ch chuy&ecirc;n nghiệp Ngọc Sơn kh&ocirc;ng chỉ để lại cho kh&aacute;n</p>', NULL, 1, CAST(0x00009C58003780B2 AS DateTime), NULL, CAST(0x00009C58003780B2 AS DateTime), NULL, NULL, NULL, NULL, N'/Admin/ImagesInTileNews/8d53039a941a401eaf9d561def2a70f4.jpg')
INSERT [dbo].[tblNews] ([ID], [TitleVN], [TitleEN], [SubjectVN], [SubjectEN], [ContentVN], [ContentEN], [Type], [CreatedDate], [CreatedBy], [PostedDate], [PostedBy], [EndedBy], [EndedDate], [Deleted], [Image]) VALUES (N'16f3e16d-1748-44e3-88e6-571ca3fb7a76', NULL, N'Title', NULL, N'Subject', NULL, N'<p>Content</p>', 1, CAST(0x00009C58002949D7 AS DateTime), NULL, CAST(0x00009C58002949D7 AS DateTime), NULL, NULL, NULL, NULL, N'/Admin/ImagesInTileNews/16f3e16d174844e388e6571ca3fb7a76.jpg')
INSERT [dbo].[tblNews] ([ID], [TitleVN], [TitleEN], [SubjectVN], [SubjectEN], [ContentVN], [ContentEN], [Type], [CreatedDate], [CreatedBy], [PostedDate], [PostedBy], [EndedBy], [EndedDate], [Deleted], [Image]) VALUES (N'886b44a9-9ff0-45c1-88d4-7b51139ecaf7', NULL, N'Title', NULL, N'Subject', NULL, N'<p>Content</p>', 1, CAST(0x00009C5800298F83 AS DateTime), NULL, CAST(0x00009C5800298F83 AS DateTime), NULL, NULL, NULL, NULL, N'/Admin/ImagesInTileNews/886b44a99ff045c188d47b51139ecaf7.jpg')
INSERT [dbo].[tblNews] ([ID], [TitleVN], [TitleEN], [SubjectVN], [SubjectEN], [ContentVN], [ContentEN], [Type], [CreatedDate], [CreatedBy], [PostedDate], [PostedBy], [EndedBy], [EndedDate], [Deleted], [Image]) VALUES (N'8b05acbb-da48-4f74-8e9b-939f4b5dcd7c', NULL, N'gfdgdg', NULL, N'gfdgdf', NULL, N'<p>fdfdsfsd</p>', 1, CAST(0x00009C58004162C1 AS DateTime), NULL, CAST(0x00009C58004162C1 AS DateTime), NULL, NULL, NULL, NULL, N'/Admin/ImagesInTileNews/8b05acbbda484f748e9b939f4b5dcd7c.jpg')
INSERT [dbo].[tblNews] ([ID], [TitleVN], [TitleEN], [SubjectVN], [SubjectEN], [ContentVN], [ContentEN], [Type], [CreatedDate], [CreatedBy], [PostedDate], [PostedBy], [EndedBy], [EndedDate], [Deleted], [Image]) VALUES (N'ef28d86c-7bad-4f75-9ea5-9886a2e0982f', N'Cùng với Ngọc Hải và Ngọc Hà, ba anh em Ngọc sơn đã từng thực hiện nhiều chương trình ca nhạc.', NULL, N'Cùng với Ngọc Hải và Ngọc Hà, ba anh em Ngọc sơn đã từng thực hiện nhiều chương trình ca nhạc. Với giọng nam cao, ấm, khỏe có âm vựng khá rộng; với một phong cách chuyên nghiệp Ngọc Sơn không chỉ để lại cho khán giả trong nước và quốc tế ấn tượng với những ca khúc dân tộc đằm thắm, trữ tình mà anh còn có sức cuốn hút bởi nhiều thể loại âm nhạc khác nhau như Pop, Rap', NULL, N'<p>&nbsp;</p>
<p>C&ugrave;ng với Ngọc Hải v&agrave; Ngọc H&agrave;, ba anh em Ngọc sơn đ&atilde; từng thực hiện nhiều chương tr&igrave;nh ca nhạc. Với giọng nam cao, ấm, khỏe c&oacute; &acirc;m vựng kh&aacute; rộng; với một phong c&aacute;ch chuy&ecirc;n nghiệp Ngọc Sơn kh&ocirc;ng chỉ để lại cho kh&aacute;n giả trong nước v&agrave; quốc tế ấn tượng với những ca kh&uacute;c d&acirc;n tộc đằm thắm, trữ t&igrave;nh m&agrave; anh c&ograve;n c&oacute; sức cuốn h&uacute;t bởi nhiều thể loại &acirc;m nhạc kh&aacute;c nhau như Pop, Rap,<br />
<br />
C&ugrave;ng với Ngọc Hải v&agrave; Ngọc H&agrave;, ba anh em Ngọc sơn đ&atilde; từng thực hiện nhiều chương tr&igrave;nh ca nhạc. Với giọng nam cao, ấm, khỏe c&oacute; &acirc;m vựng kh&aacute; rộng; với một phong c&aacute;ch chuy&ecirc;n nghiệp Ngọc Sơn kh&ocirc;ng chỉ để lại cho kh&aacute;n đ&atilde; từng thực hiện nhiều chương tr&igrave;nh ca nhạc. Với giọng nam cao, ấm, khỏe c&oacute; &acirc;m vựng kh&aacute; rộng; với một phong c&aacute;ch chuy&ecirc;n nghiệp Ngọc Sơn kh&ocirc;ng chỉ để lại cho kh&aacute;n</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p class="textCter"><img alt="" src="file:///D:/Download/layout/layout/images/imgSlide.jpg" /></p>
<p>&nbsp;</p>
<p>C&ugrave;ng với Ngọc Hải v&agrave; Ngọc H&agrave;, ba anh em Ngọc sơn đ&atilde; từng thực hiện nhiều chương tr&igrave;nh ca nhạc. Với giọng nam cao, ấm, khỏe c&oacute; &acirc;m vựng kh&aacute; rộng; với một phong c&aacute;ch chuy&ecirc;n nghiệp Ngọc Sơn kh&ocirc;ng chỉ để lại cho kh&aacute;n giả trong nước v&agrave; quốc tế ấn tượng với những ca kh&uacute;c d&acirc;n tộc đằm thắm, trữ t&igrave;nh m&agrave; anh c&ograve;n c&oacute; sức cuốn h&uacute;t bởi nhiều thể loại &acirc;m nhạc kh&aacute;c nhau như Pop, Rap,<br />
C&ugrave;ng với Ngọc Hải v&agrave; Ngọc H&agrave;, ba anh em Ngọc sơn đ&atilde; từng thực hiện nhiều chương tr&igrave;nh ca nhạc. Với giọng nam cao, ấm, khỏe c&oacute; &acirc;m vựng kh&aacute; rộng; với một phong c&aacute;ch chuy&ecirc;n nghiệp Ngọc Sơn kh&ocirc;ng chỉ để lại cho kh&aacute;n đ&atilde; từng thực hiện nhiều chương tr&igrave;nh ca nhạc. Với giọng nam cao, ấm, khỏe c&oacute; &acirc;sm vựng kh&aacute; rộng; với một phong c&aacute;ch chuy&ecirc;n nghiệp Ngọc Sơn kh&ocirc;ng chỉ để lại cho kh&aacute;n</p>
<p>&nbsp;</p>
<p class="textRight bold">NGuyen Han</p>', NULL, 1, CAST(0x00009C58002ABA36 AS DateTime), NULL, CAST(0x00009C58002ABA36 AS DateTime), NULL, NULL, NULL, NULL, N'/Admin/ImagesInTileNews/ef28d86c7bad4f759ea59886a2e0982f.jpg')
INSERT [dbo].[tblNews] ([ID], [TitleVN], [TitleEN], [SubjectVN], [SubjectEN], [ContentVN], [ContentEN], [Type], [CreatedDate], [CreatedBy], [PostedDate], [PostedBy], [EndedBy], [EndedDate], [Deleted], [Image]) VALUES (N'bf1f9222-9fb0-41f1-a725-ca1830cf1d8c', NULL, N'fdfdffdf', NULL, N'fdsfsdf', NULL, N'<p>C&ugrave;ng với Ngọc Hải v&agrave; Ngọc H&agrave;, ba anh em Ngọc sơn đ&atilde; từng thực hiện nhiều chương tr&igrave;nh ca nhạc. Với giọng nam cao, ấm, khỏe c&oacute; &acirc;m vựng kh&aacute; rộng; với một phong c&aacute;ch chuy&ecirc;n nghiệp Ngọc Sơn kh&ocirc;ng chỉ để lại cho kh&aacute;n giả trong nước v&agrave; quốc tế ấn tượng với những ca kh&uacute;c d&acirc;n tộc đằm thắm, trữ t&igrave;nh m&agrave; anh c&ograve;n c&oacute; sức cuốn h&uacute;t bởi nhiều thể loại &acirc;m nhạc kh&aacute;c nhau như Pop, Rap,<br />
C&ugrave;ng với Ngọc Hải v&agrave; Ngọc H&agrave;, ba anh em Ngọc sơn đ&atilde; từng thực hiện nhiều chương tr&igrave;nh ca nhạc. Với giọng nam cao, ấm, khỏe c&oacute; &acirc;m vựng kh&aacute; rộng; với một phong c&aacute;ch chuy&ecirc;n nghiệp Ngọc Sơn kh&ocirc;ng chỉ để lại cho kh&aacute;n đ&atilde; từng thực hiện nhiều chương tr&igrave;nh ca nhạc. Với giọng nam cao, ấm, khỏe c&oacute; &acirc;m vựng kh&aacute; rộng; với một phong c&aacute;ch chuy&ecirc;n nghiệp Ngọc Sơn kh&ocirc;ng chỉ để lại cho kh&aacute;n</p>
<p>&nbsp;</p>
<p>&lt;p&gt;C&ugrave;ng với Ngọc Hải v&agrave; Ngọc H&agrave;, ba anh em Ngọc sơn đ&atilde; từng thực hiện nhiều chương tr&igrave;nh ca nhạc. Với giọng nam cao, ấm, khỏe c&oacute; &acirc;m vựng kh&aacute; rộng; với một phong c&aacute;ch chuy&ecirc;n nghiệp Ngọc Sơn kh&ocirc;ng chỉ để lại cho kh&aacute;n giả trong nước v&agrave; quốc tế ấn tượng với những ca kh&uacute;c d&acirc;n tộc đằm thắm, trữ t&igrave;nh m&agrave; anh c&ograve;n c&oacute; sức cuốn h&uacute;t bởi nhiều thể loại &acirc;m nhạc kh&aacute;c nhau như Pop, Rap,&lt;BR /&gt;<br />
C&ugrave;ng với Ngọc Hải v&agrave; Ngọc H&agrave;, ba anh em Ngọc sơn đ&atilde; từng thực hiện nhiều chương tr&igrave;nh ca nhạc. Với giọng nam cao, ấm, khỏe c&oacute; &acirc;m vựng kh&aacute; rộng; với một phong c&aacute;ch chuy&ecirc;n nghiệp Ngọc Sơn kh&ocirc;ng chỉ để lại cho kh&aacute;n đ&atilde; từng thực hiện nhiều chương tr&igrave;nh ca nhạc. Với giọng nam cao, ấm, khỏe c&oacute; &acirc;m vựng kh&aacute; rộng; với một phong c&aacute;ch chuy&ecirc;n nghiệp Ngọc Sơn kh&ocirc;ng chỉ để lại cho kh&aacute;n &lt;/p&gt;</p>
<p>&nbsp;</p>
<p class="textCter"><img src="file:///D:/Download/layout/layout/images/imgSlide.jpg" alt="" /></p>
<p>&nbsp;</p>
<p>C&ugrave;ng với Ngọc Hải v&agrave; Ngọc H&agrave;, ba anh em Ngọc sơn đ&atilde; từng thực hiện nhiều chương tr&igrave;nh ca nhạc. Với giọng nam cao, ấm, khỏe c&oacute; &acirc;m vựng kh&aacute; rộng; với một phong c&aacute;ch chuy&ecirc;n nghiệp Ngọc Sơn kh&ocirc;ng chỉ để lại cho kh&aacute;n giả trong nước v&agrave; quốc tế ấn tượng với những ca kh&uacute;c d&acirc;n tộc đằm thắm, trữ t&igrave;nh m&agrave; anh c&ograve;n c&oacute; sức cuốn h&uacute;t bởi nhiều thể loại &acirc;m nhạc kh&aacute;c nhau như Pop, Rap,<br />
C&ugrave;ng với Ngọc Hải v&agrave; Ngọc H&agrave;, ba anh em Ngọc sơn đ&atilde; từng thực hiện nhiều chương tr&igrave;nh ca nhạc. Với giọng nam cao, ấm, khỏe c&oacute; &acirc;m vựng kh&aacute; rộng; với một phong c&aacute;ch chuy&ecirc;n nghiệp Ngọc Sơn kh&ocirc;ng chỉ để lại cho kh&aacute;n đ&atilde; từng thực hiện nhiều chương tr&igrave;nh ca nhạc. Với giọng nam cao, ấm, khỏe c&oacute; &acirc;sm vựng kh&aacute; rộng; với một phong c&aacute;ch chuy&ecirc;n nghiệp Ngọc Sơn kh&ocirc;ng chỉ để lại cho kh&aacute;n</p>
<p>&nbsp;</p>
<p class="textRight bold">NGuyen Han</p>', 5, CAST(0x00009C58001891CE AS DateTime), NULL, CAST(0x00009C58001891CE AS DateTime), NULL, NULL, NULL, NULL, N'/Admin/ImagesInTileNews/bf1f92229fb041f1a725ca1830cf1d8c.jpg')
INSERT [dbo].[tblNews] ([ID], [TitleVN], [TitleEN], [SubjectVN], [SubjectEN], [ContentVN], [ContentEN], [Type], [CreatedDate], [CreatedBy], [PostedDate], [PostedBy], [EndedBy], [EndedDate], [Deleted], [Image]) VALUES (N'74456bef-a5ae-4fc4-a78e-fd86404235ce', NULL, N'Title', NULL, N'Subject', NULL, N'<p>Content</p>', 1, CAST(0x00009C580029ED7B AS DateTime), NULL, CAST(0x00009C580029ED7B AS DateTime), NULL, NULL, NULL, NULL, N'/Admin/ImagesInTileNews/74456befa5ae4fc4a78efd86404235ce.jpg')
/****** Object:  Table [dbo].[tblCategory]    Script Date: 08/01/2009 04:08:10 ******/
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
/****** Object:  Table [dbo].[tblInformation]    Script Date: 08/01/2009 04:08:10 ******/
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
INSERT [dbo].[tblInformation] ([ID], [CompanyNameVN], [CompanyNameEN], [Logo], [IntroduceVN], [IntroduceEN], [ContactVN], [ContactEN], [CreatedDate], [CreatedBy], [UpdatedDate], [UpdatedBy], [Deleted]) VALUES (N'de1d48e9-432d-4d12-96f4-00afc5f9e29c', NULL, NULL, NULL, NULL, NULL, N'<p>FGFDGDFGDFGDFGDFGDFGSFGSGSG</p>', NULL, CAST(0x00009C56002DFDBD AS DateTime), NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[tblProduct]    Script Date: 08/01/2009 04:08:10 ******/
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
	[PriceVN] [int] NULL,
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
INSERT [dbo].[tblProduct] ([ID], [ProductNo], [CategoryID], [ProductNameVN], [ProductNameEN], [Description], [PriceVN], [PriceEN], [Image], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Deleted], [Promoted], [StoreStatus], [WarrantyTime], [Property]) VALUES (N'328a718a-807d-4f50-9ef1-249f39a63bc5', NULL, NULL, NULL, N'Cùng v?i Ng?c H?i và Ng?c Hà', N'<p>C&ugrave;ng với Ngọc Hải v&agrave; Ngọc H&agrave;, ba anh em Ngọc sơn đ&atilde; từng thực hiện nhiều chương tr&igrave;nh ca nhạc. Với giọng nam cao, ấm, khỏe c&oacute; &acirc;m vựng kh&aacute; rộng;</p>', NULL, NULL, N'/Admin/ImagesInTileNews/328a718a807d4f509ef1249f39a63bc5.jpg', NULL, CAST(0x00009C5800146704 AS DateTime), NULL, CAST(0x00009C58001816D9 AS DateTime), NULL, NULL, NULL, N'Cùng với Ngọc Hải và Ngọc Hà', N'Cùng với Ngọc Hải và Ngọc Hà, ba anh em Ngọc sơn đã từng thực hiện nhiều chương trình ca nhạc. Với giọng nam cao, ấm, khỏe có âm vựng khá rộng; ')
INSERT [dbo].[tblProduct] ([ID], [ProductNo], [CategoryID], [ProductNameVN], [ProductNameEN], [Description], [PriceVN], [PriceEN], [Image], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Deleted], [Promoted], [StoreStatus], [WarrantyTime], [Property]) VALUES (N'80ab169c-b7f3-465b-b307-76b30249862f', NULL, NULL, N'VIET NAM', NULL, N'<p>DJLKDJLDJLKDJLJDKL</p>', NULL, NULL, N'/Admin/ImagesInTileNews/80ab169cb7f3465bb30776b30249862f.jpg', NULL, CAST(0x00009C580014A32F AS DateTime), NULL, NULL, NULL, NULL, NULL, N'', N'HJKHKJL')
INSERT [dbo].[tblProduct] ([ID], [ProductNo], [CategoryID], [ProductNameVN], [ProductNameEN], [Description], [PriceVN], [PriceEN], [Image], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate], [Deleted], [Promoted], [StoreStatus], [WarrantyTime], [Property]) VALUES (N'76715fb5-4b72-442c-8ea5-dc1d56e2a244', NULL, NULL, NULL, N'FDFDSFD', N'<p>C&ugrave;ng với Ngọc Hải v&agrave; Ngọc H&agrave;, ba anh em Ngọc sơn đ&atilde; từng thực hiện nhiều chương tr&igrave;nh ca nhạc. Với giọng nam cao, ấm, khỏe c&oacute; &acirc;m vựng kh&aacute; rộng; với một phong c&aacute;ch chuy&ecirc;n nghiệp Ngọc Sơn kh&ocirc;ng chỉ để lại cho kh&aacute;n giả trong nước v&agrave; quốc tế ấn tượng với những ca kh&uacute;c d&acirc;n tộc đằm thắm, trữ t&igrave;nh m&agrave; anh c&ograve;n c&oacute; sức cuốn h&uacute;t bởi nhiều thể loại &acirc;m nhạc kh&aacute;c nhau như Pop, Rap,<br />
C&ugrave;ng với Ngọc Hải v&agrave; Ngọc H&agrave;, ba anh em Ngọc sơn đ&atilde; từng thực hiện nhiều chương tr&igrave;nh ca nhạc. Với giọng nam cao, ấm, khỏe c&oacute; &acirc;m vựng kh&aacute; rộng; với một phong c&aacute;ch chuy&ecirc;n nghiệp Ngọc Sơn kh&ocirc;ng chỉ để lại cho kh&aacute;n đ&atilde; từng thực hiện nhiều chương tr&igrave;nh ca nhạc. Với giọng nam cao, ấm, khỏe c&oacute; &acirc;sm vựng kh&aacute; rộng; với một phong c&aacute;ch chuy&ecirc;n nghiệp Ngọc Sơn kh&ocirc;ng chỉ để lại cho kh&aacute;n</p>', NULL, 44444, N'/Admin/ImagesInTileNews/76715fb54b72442c8ea5dc1d56e2a244.jpg', NULL, CAST(0x00009C5800398C8B AS DateTime), NULL, NULL, NULL, NULL, NULL, N'FDSFSFS', N'Cùng với Ngọc Hải và Ngọc Hà, ba anh em Ngọc sơn đã từng thực hiện nhiều chương trình ca nhạc. Với giọng nam cao, ấm, khỏe có âm vựng khá rộng; với một phong cách chuyên nghiệp ')
/****** Object:  ForeignKey [FK_tblProduct_tblCategory]    Script Date: 08/01/2009 04:08:10 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblProduct_tblCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProduct]'))
ALTER TABLE [dbo].[tblProduct]  WITH CHECK ADD  CONSTRAINT [FK_tblProduct_tblCategory] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[tblCategory] ([ID])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_tblProduct_tblCategory]') AND parent_object_id = OBJECT_ID(N'[dbo].[tblProduct]'))
ALTER TABLE [dbo].[tblProduct] CHECK CONSTRAINT [FK_tblProduct_tblCategory]
GO
