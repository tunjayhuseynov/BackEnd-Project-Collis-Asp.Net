USE [master]
GO
/****** Object:  Database [Collis]    Script Date: 6/22/2018 01:16:33 AM ******/
CREATE DATABASE [Collis]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Collis', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Collis.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Collis_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Collis_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Collis] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Collis].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Collis] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Collis] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Collis] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Collis] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Collis] SET ARITHABORT OFF 
GO
ALTER DATABASE [Collis] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Collis] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Collis] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Collis] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Collis] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Collis] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Collis] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Collis] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Collis] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Collis] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Collis] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Collis] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Collis] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Collis] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Collis] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Collis] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Collis] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Collis] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Collis] SET  MULTI_USER 
GO
ALTER DATABASE [Collis] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Collis] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Collis] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Collis] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Collis] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [Collis] SET QUERY_STORE = OFF
GO
USE [Collis]
GO
ALTER DATABASE SCOPED CONFIGURATION SET IDENTITY_CACHE = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [Collis]
GO
/****** Object:  Table [dbo].[About]    Script Date: 6/22/2018 01:16:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[About](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[DesTitle] [nvarchar](50) NULL,
	[Desc] [nvarchar](500) NULL,
	[BarTitle] [nvarchar](50) NULL,
	[BarDesc] [nvarchar](50) NULL,
	[Bar1] [nvarchar](50) NULL,
	[Bar2] [nvarchar](50) NULL,
	[Bar3] [nvarchar](50) NULL,
	[Bar4] [nvarchar](50) NULL,
	[Bar1Per] [int] NULL,
	[Bar2Per] [int] NULL,
	[Bar3Per] [int] NULL,
	[Bar4Per] [int] NULL,
	[ButtonLeft] [nvarchar](50) NULL,
	[ButtonRight] [nvarchar](50) NULL,
 CONSTRAINT [PK_About] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Contacts]    Script Date: 6/22/2018 01:16:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Contacts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Number] [nvarchar](50) NULL,
	[Adress] [nvarchar](150) NULL,
	[Email] [nvarchar](50) NULL,
	[BtnText] [nvarchar](50) NULL,
 CONSTRAINT [PK_Contact] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Counter]    Script Date: 6/22/2018 01:16:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Counter](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Number] [int] NULL,
	[Icon] [nvarchar](50) NULL,
 CONSTRAINT [PK_Counter] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Filters]    Script Date: 6/22/2018 01:16:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Filters](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Category] [nvarchar](50) NULL,
	[Num] [nvarchar](50) NULL,
 CONSTRAINT [PK_Filters] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomePages]    Script Date: 6/22/2018 01:16:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomePages](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Image] [nvarchar](250) NULL,
	[TitlePart2] [nvarchar](50) NULL,
 CONSTRAINT [PK_HomePages] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HomeSlideTexts]    Script Date: 6/22/2018 01:16:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HomeSlideTexts](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[SliderText] [nvarchar](50) NULL,
	[HomePageId] [int] NULL,
 CONSTRAINT [PK_SlideTexts] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Login]    Script Date: 6/22/2018 01:16:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Login](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Email] [nvarchar](150) NULL,
	[Password] [nvarchar](500) NULL,
 CONSTRAINT [PK_Login] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LogoNavBar]    Script Date: 6/22/2018 01:16:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LogoNavBar](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[LogoUrl] [nvarchar](50) NULL,
 CONSTRAINT [PK_LogoNavBar] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[News]    Script Date: 6/22/2018 01:16:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[News](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](300) NULL,
	[AuthorImage] [nvarchar](300) NULL,
	[HoverTitle] [nvarchar](50) NULL,
	[Title] [nvarchar](100) NULL,
	[Text] [nvarchar](500) NULL,
	[Author] [nvarchar](50) NULL,
	[Date] [date] NULL,
 CONSTRAINT [PK_News] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PageTitles]    Script Date: 6/22/2018 01:16:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PageTitles](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Desc] [nvarchar](250) NULL,
 CONSTRAINT [PK_ServicesTitels] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Protofilios]    Script Date: 6/22/2018 01:16:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Protofilios](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](250) NULL,
	[Title] [nvarchar](50) NULL,
	[Category] [nvarchar](50) NULL,
 CONSTRAINT [PK_Protofilios] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Services]    Script Date: 6/22/2018 01:16:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Services](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](50) NULL,
	[Desc] [nvarchar](150) NULL,
	[Number] [int] NULL,
	[Photo] [nvarchar](350) NULL,
 CONSTRAINT [PK_Services] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SocialSites]    Script Date: 6/22/2018 01:16:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SocialSites](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Facebook] [nvarchar](50) NULL,
	[Twitter] [nvarchar](50) NULL,
	[Google] [nvarchar](50) NULL,
	[Ink] [nvarchar](50) NULL,
	[Pinteres] [nvarchar](50) NULL,
 CONSTRAINT [PK_SocialSites] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Testimonial]    Script Date: 6/22/2018 01:16:34 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Testimonial](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Image] [nvarchar](50) NULL,
	[Text] [nvarchar](300) NULL,
	[FullName] [nvarchar](50) NULL,
	[Position] [nvarchar](50) NULL,
 CONSTRAINT [PK_Testimonial] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[About] ON 

INSERT [dbo].[About] ([Id], [DesTitle], [Desc], [BarTitle], [BarDesc], [Bar1], [Bar2], [Bar3], [Bar4], [Bar1Per], [Bar2Per], [Bar3Per], [Bar4Per], [ButtonLeft], [ButtonRight]) VALUES (1, N'Menim Haqqimda Melumat', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don''t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn''t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true.', N'Bildiklerim', N'Guya', N'Html', N'CSS3', N'Jqeury', N'C#', 90, 85, 75, 65, N'Clickle', N'Mene Clickle')
SET IDENTITY_INSERT [dbo].[About] OFF
SET IDENTITY_INSERT [dbo].[Contacts] ON 

INSERT [dbo].[Contacts] ([Id], [Title], [Number], [Adress], [Email], [BtnText]) VALUES (1, N'Mene Ulash', N'(077) 300 55 33', N'Address: 20/11 Pallet Street, Poughkeepsie, New York
', N'officemail@gamil.com', N'Mesaji Ginder')
SET IDENTITY_INSERT [dbo].[Contacts] OFF
SET IDENTITY_INSERT [dbo].[Counter] ON 

INSERT [dbo].[Counter] ([Id], [Title], [Number], [Icon]) VALUES (1, N'Tamamlandi', 1500, N'fa fa-handshake-o')
INSERT [dbo].[Counter] ([Id], [Title], [Number], [Icon]) VALUES (2, N'Tamamlandi', 1500, N'fa fa-handshake-o')
INSERT [dbo].[Counter] ([Id], [Title], [Number], [Icon]) VALUES (3, N'Tamamlandi', 1500, N'fa fa-handshake-o')
INSERT [dbo].[Counter] ([Id], [Title], [Number], [Icon]) VALUES (4, N'Tamamlandi', 1500, N'fa fa-handshake-o')
SET IDENTITY_INSERT [dbo].[Counter] OFF
SET IDENTITY_INSERT [dbo].[Filters] ON 

INSERT [dbo].[Filters] ([Id], [Category], [Num]) VALUES (1, N'All', N'all')
INSERT [dbo].[Filters] ([Id], [Category], [Num]) VALUES (2, N'Web Design', N'1')
INSERT [dbo].[Filters] ([Id], [Category], [Num]) VALUES (3, N'Grapich', N'2')
INSERT [dbo].[Filters] ([Id], [Category], [Num]) VALUES (4, N'Mobile app', N'3')
SET IDENTITY_INSERT [dbo].[Filters] OFF
SET IDENTITY_INSERT [dbo].[HomePages] ON 

INSERT [dbo].[HomePages] ([Id], [Title], [Image], [TitlePart2]) VALUES (1, N'Salam Qaqa!', N'images/about/1.jpg', N'Menem Tunjay')
SET IDENTITY_INSERT [dbo].[HomePages] OFF
SET IDENTITY_INSERT [dbo].[HomeSlideTexts] ON 

INSERT [dbo].[HomeSlideTexts] ([Id], [SliderText], [HomePageId]) VALUES (1, N'Bu Bir', 1)
INSERT [dbo].[HomeSlideTexts] ([Id], [SliderText], [HomePageId]) VALUES (2, N'Bu iki', 1)
INSERT [dbo].[HomeSlideTexts] ([Id], [SliderText], [HomePageId]) VALUES (3, N'Bu Uc', 1)
SET IDENTITY_INSERT [dbo].[HomeSlideTexts] OFF
SET IDENTITY_INSERT [dbo].[Login] ON 

INSERT [dbo].[Login] ([Id], [Email], [Password]) VALUES (1, N'tuncay@code.edu.az', N'AH36CLPd9WOUSktjzd0X2Kr4J6+z6s851/74+Gpzmc4g4dKO7m4IHYME8EnMQa/SzQ==')
SET IDENTITY_INSERT [dbo].[Login] OFF
SET IDENTITY_INSERT [dbo].[LogoNavBar] ON 

INSERT [dbo].[LogoNavBar] ([Id], [LogoUrl]) VALUES (1, N'Public/images/logo.png')
INSERT [dbo].[LogoNavBar] ([Id], [LogoUrl]) VALUES (2, N'Public/images/logo-white.png')
SET IDENTITY_INSERT [dbo].[LogoNavBar] OFF
SET IDENTITY_INSERT [dbo].[News] ON 

INSERT [dbo].[News] ([Id], [Image], [AuthorImage], [HoverTitle], [Title], [Text], [Author], [Date]) VALUES (1, N'Public/images/blog/3.jpg', N'Public/images/blog/post-3.jpg', N'Oxu', N'Bu basliqdir', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected.', N'Nelson Mandela', CAST(N'2018-05-10' AS Date))
INSERT [dbo].[News] ([Id], [Image], [AuthorImage], [HoverTitle], [Title], [Text], [Author], [Date]) VALUES (2, N'Public/images/blog/3.jpg', N'Public/images/blog/post-3.jpg', N'Oxu', N'Bu basliqdir', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected.', N'Nelson Mandela', CAST(N'2018-05-10' AS Date))
INSERT [dbo].[News] ([Id], [Image], [AuthorImage], [HoverTitle], [Title], [Text], [Author], [Date]) VALUES (3, N'Public/images/blog/3.jpg', N'Public/images/blog/post-3.jpg', N'Oxu', N'Bu basliqdir', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected.', N'Nelson Mandela', CAST(N'2018-05-10' AS Date))
INSERT [dbo].[News] ([Id], [Image], [AuthorImage], [HoverTitle], [Title], [Text], [Author], [Date]) VALUES (4, N'Public/images/blog/3.jpg', N'Public/images/blog/post-3.jpg', N'Oxu', N'Bu basliqdir', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected.', N'Nelson Mandela', CAST(N'2018-05-10' AS Date))
INSERT [dbo].[News] ([Id], [Image], [AuthorImage], [HoverTitle], [Title], [Text], [Author], [Date]) VALUES (5, N'Public/images/blog/3.jpg', N'Public/images/blog/post-3.jpg', N'Oxu', N'Bu basliqdir', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected.', N'Nelson Mandela', CAST(N'2018-05-10' AS Date))
SET IDENTITY_INSERT [dbo].[News] OFF
SET IDENTITY_INSERT [dbo].[PageTitles] ON 

INSERT [dbo].[PageTitles] ([Id], [Title], [Desc]) VALUES (1, N'Servislerim', N'Yeap Yeap Yeap')
INSERT [dbo].[PageTitles] ([Id], [Title], [Desc]) VALUES (2, N'Menim Portifoliam', N'YES That''s My Dude')
INSERT [dbo].[PageTitles] ([Id], [Title], [Desc]) VALUES (3, N'Musteriler Ne Deyir?', N'Bu Cox vacib meseledir!!')
INSERT [dbo].[PageTitles] ([Id], [Title], [Desc]) VALUES (4, N'Son Xeberler', N'It is a long established fact that a reader will be distracted by the readable content of a page when looking.












')
SET IDENTITY_INSERT [dbo].[PageTitles] OFF
SET IDENTITY_INSERT [dbo].[Protofilios] ON 

INSERT [dbo].[Protofilios] ([Id], [Image], [Title], [Category]) VALUES (1, N'Public/images/portfolio/1.jpg', N'Insanazo', N'2, 4')
INSERT [dbo].[Protofilios] ([Id], [Image], [Title], [Category]) VALUES (2, N'Public/images/portfolio/1.jpg', N'Insanazor', N'3, 1')
INSERT [dbo].[Protofilios] ([Id], [Image], [Title], [Category]) VALUES (3, N'Public/images/portfolio/1.jpg', N'Insanazor', N'2, 1')
INSERT [dbo].[Protofilios] ([Id], [Image], [Title], [Category]) VALUES (4, N'Public/images/portfolio/1.jpg', N'Insanazor', N'2')
INSERT [dbo].[Protofilios] ([Id], [Image], [Title], [Category]) VALUES (5, N'Public/images/portfolio/1.jpg', N'Insanazor', N'1, 3')
INSERT [dbo].[Protofilios] ([Id], [Image], [Title], [Category]) VALUES (6, N'Public/images/portfolio/1.jpg', N'Insanazor', N'2')
SET IDENTITY_INSERT [dbo].[Protofilios] OFF
SET IDENTITY_INSERT [dbo].[Services] ON 

INSERT [dbo].[Services] ([Id], [Title], [Desc], [Number], [Photo]) VALUES (1, N'Web Design', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.

', 1, N'zmdi zmdi-laptop-mac')
INSERT [dbo].[Services] ([Id], [Title], [Desc], [Number], [Photo]) VALUES (2, N'Web Design', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.', 2, N'zmdi zmdi-laptop-mac')
INSERT [dbo].[Services] ([Id], [Title], [Desc], [Number], [Photo]) VALUES (3, N'Web Design', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.', 3, N'zmdi zmdi-laptop-mac')
INSERT [dbo].[Services] ([Id], [Title], [Desc], [Number], [Photo]) VALUES (4, N'Web Design', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.', 4, N'zmdi zmdi-laptop-mac')
INSERT [dbo].[Services] ([Id], [Title], [Desc], [Number], [Photo]) VALUES (5, N'Web Design', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.', 5, N'zmdi zmdi-laptop-mac')
INSERT [dbo].[Services] ([Id], [Title], [Desc], [Number], [Photo]) VALUES (6, N'Web Design', N'There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form.', 6, N'zmdi zmdi-laptop-mac')
SET IDENTITY_INSERT [dbo].[Services] OFF
SET IDENTITY_INSERT [dbo].[SocialSites] ON 

INSERT [dbo].[SocialSites] ([Id], [Facebook], [Twitter], [Google], [Ink], [Pinteres]) VALUES (1, N'https://www.facebook.com/', N'https://twitter.com/?lang=en', N'https://www.google.com.tr/', N'https://www.linkedin.com/', N'https://tr.pinterest.com/')
SET IDENTITY_INSERT [dbo].[SocialSites] OFF
SET IDENTITY_INSERT [dbo].[Testimonial] ON 

INSERT [dbo].[Testimonial] ([Id], [Image], [Text], [FullName], [Position]) VALUES (1, N'Public/images/testimonial/1.jpg', N'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', N'Jon Rogar', N'CEO')
INSERT [dbo].[Testimonial] ([Id], [Image], [Text], [FullName], [Position]) VALUES (2, N'Public/images/testimonial/3.jpg', N'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', N'Selena Gomes', N'CEO')
INSERT [dbo].[Testimonial] ([Id], [Image], [Text], [FullName], [Position]) VALUES (3, N'Public/images/testimonial/3.jpg', N'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', N'Selena Gomes', N'CEO')
INSERT [dbo].[Testimonial] ([Id], [Image], [Text], [FullName], [Position]) VALUES (4, N'Public/images/testimonial/3.jpg', N'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal.', N'Selena Gomes', N'CEO')
SET IDENTITY_INSERT [dbo].[Testimonial] OFF
ALTER TABLE [dbo].[HomeSlideTexts]  WITH CHECK ADD  CONSTRAINT [FK_SlideTexts_HomePagesId] FOREIGN KEY([HomePageId])
REFERENCES [dbo].[HomePages] ([Id])
GO
ALTER TABLE [dbo].[HomeSlideTexts] CHECK CONSTRAINT [FK_SlideTexts_HomePagesId]
GO
USE [master]
GO
ALTER DATABASE [Collis] SET  READ_WRITE 
GO
