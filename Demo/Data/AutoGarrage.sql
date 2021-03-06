USE [master]
GO
/****** Object:  Database [AutoGarrage]    Script Date: 25/12/2017 16:53:28 ******/
CREATE DATABASE [AutoGarrage]
-- CONTAINMENT = NONE
-- ON  PRIMARY 
--( NAME = N'AutoGarrage', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\AutoGarrage_DATA.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
-- LOG ON 
--( NAME = N'AutoGarrage_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\AutoGarragne_LOG.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
--GO
--ALTER DATABASE [AutoGarrage] SET COMPATIBILITY_LEVEL = 120
--GO
--IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
--begin
--EXEC [AutoGarrage].[dbo].[sp_fulltext_database] @action = 'enable'
--end
--GO
--ALTER DATABASE [AutoGarrage] SET ANSI_NULL_DEFAULT OFF 
--GO
--ALTER DATABASE [AutoGarrage] SET ANSI_NULLS OFF 
--GO
--ALTER DATABASE [AutoGarrage] SET ANSI_PADDING OFF 
--GO
--ALTER DATABASE [AutoGarrage] SET ANSI_WARNINGS OFF 
--GO
--ALTER DATABASE [AutoGarrage] SET ARITHABORT OFF 
--GO
--ALTER DATABASE [AutoGarrage] SET AUTO_CLOSE OFF 
--GO
--ALTER DATABASE [AutoGarrage] SET AUTO_SHRINK OFF 
--GO
--ALTER DATABASE [AutoGarrage] SET AUTO_UPDATE_STATISTICS ON 
--GO
--ALTER DATABASE [AutoGarrage] SET CURSOR_CLOSE_ON_COMMIT OFF 
--GO
--ALTER DATABASE [AutoGarrage] SET CURSOR_DEFAULT  GLOBAL 
--GO
--ALTER DATABASE [AutoGarrage] SET CONCAT_NULL_YIELDS_NULL OFF 
--GO
--ALTER DATABASE [AutoGarrage] SET NUMERIC_ROUNDABORT OFF 
--GO
--ALTER DATABASE [AutoGarrage] SET QUOTED_IDENTIFIER OFF 
--GO
--ALTER DATABASE [AutoGarrage] SET RECURSIVE_TRIGGERS OFF 
--GO
--ALTER DATABASE [AutoGarrage] SET  DISABLE_BROKER 
--GO
--ALTER DATABASE [AutoGarrage] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
--GO
--ALTER DATABASE [AutoGarrage] SET DATE_CORRELATION_OPTIMIZATION OFF 
--GO
--ALTER DATABASE [AutoGarrage] SET TRUSTWORTHY OFF 
--GO
--ALTER DATABASE [AutoGarrage] SET ALLOW_SNAPSHOT_ISOLATION OFF 
--GO
--ALTER DATABASE [AutoGarrage] SET PARAMETERIZATION SIMPLE 
--GO
--ALTER DATABASE [AutoGarrage] SET READ_COMMITTED_SNAPSHOT OFF 
--GO
--ALTER DATABASE [AutoGarrage] SET HONOR_BROKER_PRIORITY OFF 
--GO
--ALTER DATABASE [AutoGarrage] SET RECOVERY FULL 
--GO
--ALTER DATABASE [AutoGarrage] SET  MULTI_USER 
--GO
--ALTER DATABASE [AutoGarrage] SET PAGE_VERIFY CHECKSUM  
--GO
--ALTER DATABASE [AutoGarrage] SET DB_CHAINING OFF 
--GO
--ALTER DATABASE [AutoGarrage] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
--GO
--ALTER DATABASE [AutoGarrage] SET TARGET_RECOVERY_TIME = 0 SECONDS 
--GO
--ALTER DATABASE [AutoGarrage] SET DELAYED_DURABILITY = DISABLED 
--GO
--EXEC sys.sp_db_vardecimal_storage_format N'AutoGarrage', N'ON'
--GO
USE [AutoGarrage]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 25/12/2017 16:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categories](
	[IDcategory] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Website] [varchar](100) NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[IDcategory] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Comments]    Script Date: 25/12/2017 16:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comments](
	[IDcomment] [int] IDENTITY(1,1) NOT NULL,
	[ContentComment] [nvarchar](max) NOT NULL,
	[IDuser] [int] NOT NULL,
	[IDreview] [int] NOT NULL,
	[DateComment] [date] NOT NULL,
	[Status] [int] NOT NULL,
 CONSTRAINT [PK_Comments] PRIMARY KEY CLUSTERED 
(
	[IDcomment] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Links]    Script Date: 25/12/2017 16:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Links](
	[IDlink] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NULL,
	[URL] [nvarchar](200) NULL,
 CONSTRAINT [PK_Links] PRIMARY KEY CLUSTERED 
(
	[IDlink] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Models]    Script Date: 25/12/2017 16:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Models](
	[IDmodel] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Describe] [nvarchar](500) NULL,
	[IDcategory] [int] NULL,
	[Image] [varchar](50) NULL,
 CONSTRAINT [PK_Models] PRIMARY KEY CLUSTERED 
(
	[IDmodel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Reviews]    Script Date: 25/12/2017 16:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Reviews](
	[IDreviews] [int] IDENTITY(1,1) NOT NULL,
	[ContentReview] [nvarchar](max) NULL,
	[IDmodel] [int] NOT NULL,
	[DatePost] [date] NULL,
	[Author] [varchar](20) NULL,
 CONSTRAINT [PK_Reviews] PRIMARY KEY CLUSTERED 
(
	[IDreviews] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Users]    Script Date: 25/12/2017 16:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Users](
	[IDuser] [int] IDENTITY(1,1) NOT NULL,
	[Username] [varchar](20) NOT NULL,
	[Password] [varchar](20) NOT NULL,
	[Email] [varchar](50) NOT NULL,
	[Role] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[IDuser] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Videos]    Script Date: 25/12/2017 16:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Videos](
	[IDvideo] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[URL] [nvarchar](100) NOT NULL,
	[Author] [nvarchar](50) NOT NULL,
	[Date] [date] NOT NULL,
	[Views] [int] NULL,
	[IDmodel] [int] NULL,
 CONSTRAINT [PK_Videos] PRIMARY KEY CLUSTERED 
(
	[IDvideo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (2, N'ALFA ROMEO', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (3, N'AUDI', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (4, N'BENTLEY', N'')
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (5, N'BMW', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (6, N'CADILLAC', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (7, N'CATERHAM', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (8, N'CHEVROLET', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (9, N'CHRYSLER', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (10, N'CITROEN', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (11, N'DODGE', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (12, N'FERRARI', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (13, N'FIAT', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (14, N'FORD', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (15, N'GMC', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (16, N'HONDA', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (17, N'HUMMER', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (18, N'HUYNDAI', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (19, N'INFINITI', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (20, N'JAGUAR', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (21, N'JEEP', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (22, N'LAMBORGHINI', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (23, N'LANCIA', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (24, N'LAND ROVER', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (25, N'LEXUS', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (26, N'OPEL', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (27, N'PEUGEOT', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (28, N'PLYMOUTH', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (29, N'PONTIAC', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (30, N'PORSCHE', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (31, N'RENAULT', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (32, N'ROVER', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (33, N'SAAB', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (34, N'SATURN', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (35, N'SCION', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (36, N'SEAT', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (37, N'SKODA', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (38, N'SMART', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (39, N'SSANGYONG', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (40, N'SUBARU', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (41, N'SUZUKI', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (42, N'TOYOTA', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (43, N'VOLKSWAGEN', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (44, N'VOLVO', NULL)
INSERT [dbo].[Categories] ([IDcategory], [Name], [Website]) VALUES (45, N'MCLAREN', N'')
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Comments] ON 

INSERT [dbo].[Comments] ([IDcomment], [ContentComment], [IDuser], [IDreview], [DateComment], [Status]) VALUES (6, N'asdf', 3, 6, CAST(N'2017-12-25' AS Date), 1)
INSERT [dbo].[Comments] ([IDcomment], [ContentComment], [IDuser], [IDreview], [DateComment], [Status]) VALUES (7, N'rsfsd', 3, 6, CAST(N'2017-12-25' AS Date), 0)
INSERT [dbo].[Comments] ([IDcomment], [ContentComment], [IDuser], [IDreview], [DateComment], [Status]) VALUES (8, N'sdf', 3, 6, CAST(N'2017-12-25' AS Date), 0)
INSERT [dbo].[Comments] ([IDcomment], [ContentComment], [IDuser], [IDreview], [DateComment], [Status]) VALUES (9, N'dsf', 1, 6, CAST(N'2017-12-25' AS Date), 1)
INSERT [dbo].[Comments] ([IDcomment], [ContentComment], [IDuser], [IDreview], [DateComment], [Status]) VALUES (10, N'asdf', 3, 6, CAST(N'2017-12-25' AS Date), 0)
INSERT [dbo].[Comments] ([IDcomment], [ContentComment], [IDuser], [IDreview], [DateComment], [Status]) VALUES (11, N'as', 3, 6, CAST(N'2017-12-25' AS Date), 0)
INSERT [dbo].[Comments] ([IDcomment], [ContentComment], [IDuser], [IDreview], [DateComment], [Status]) VALUES (12, N'asdf', 1, 6, CAST(N'2017-12-25' AS Date), 1)
INSERT [dbo].[Comments] ([IDcomment], [ContentComment], [IDuser], [IDreview], [DateComment], [Status]) VALUES (13, N'asdf', 1, 6, CAST(N'2017-12-25' AS Date), 1)
INSERT [dbo].[Comments] ([IDcomment], [ContentComment], [IDuser], [IDreview], [DateComment], [Status]) VALUES (14, N'sdf', 1, 6, CAST(N'2017-12-25' AS Date), 1)
INSERT [dbo].[Comments] ([IDcomment], [ContentComment], [IDuser], [IDreview], [DateComment], [Status]) VALUES (1002, N'a', 1, 1, CAST(N'2017-12-25' AS Date), 1)
INSERT [dbo].[Comments] ([IDcomment], [ContentComment], [IDuser], [IDreview], [DateComment], [Status]) VALUES (1003, N'ed', 2, 1, CAST(N'2017-12-25' AS Date), 1)
INSERT [dbo].[Comments] ([IDcomment], [ContentComment], [IDuser], [IDreview], [DateComment], [Status]) VALUES (1004, N'fv', 3, 1, CAST(N'2017-12-25' AS Date), 1)
SET IDENTITY_INSERT [dbo].[Comments] OFF
SET IDENTITY_INSERT [dbo].[Links] ON 

INSERT [dbo].[Links] ([IDlink], [Name], [URL]) VALUES (1, N'Twitter', N'#')
INSERT [dbo].[Links] ([IDlink], [Name], [URL]) VALUES (2, N'Youtube', N'#')
INSERT [dbo].[Links] ([IDlink], [Name], [URL]) VALUES (3, N'GooglePlus', N'#')
INSERT [dbo].[Links] ([IDlink], [Name], [URL]) VALUES (4, N'Facebook', N'#')
SET IDENTITY_INSERT [dbo].[Links] OFF
SET IDENTITY_INSERT [dbo].[Models] ON 

INSERT [dbo].[Models] ([IDmodel], [Name], [Describe], [IDcategory], [Image]) VALUES (2, N'Alfa Romeo Stelvio', N'<p>Alfa Romeo Stelvio đã mang lại sự bùng cháy như hứa hẹn, kết hợp với cách thức xử lý điều khiển cũng như khả năng tăng tốc đỉnh cao, liệu chiếc xe này có thể thay thế những mẫu dẫn đầu như Porsche Macan hay Jaguar F-Pace?</p>', 2, N'alfa-romeo-stelvio.jpg')
INSERT [dbo].[Models] ([IDmodel], [Name], [Describe], [IDcategory], [Image]) VALUES (4, N'Audi TT RS', N'<p>Dòng xe thể thao Audi TT RS có khả năng tăng tốc từ 0-100 km/h trong vòng 4 giây</p>', 3, N'audi-tt-rs.jpg')
INSERT [dbo].[Models] ([IDmodel], [Name], [Describe], [IDcategory], [Image]) VALUES (5, N'Audi R8 2017', N'<p>Audi R8 2017 là dòng flagship được mến mộ nhiều nhất của hãng xe Audi</p>', 3, N'audi-r8-2017.jpg')
INSERT [dbo].[Models] ([IDmodel], [Name], [Describe], [IDcategory], [Image]) VALUES (7, N'BMW M3 2013', N'<p>Chiếc BMW M3 đã được xem như là một biểu tượng của dòng xe thể thao đường phố bởi sự độc nhất vô nhị của nó và sự nổi tiếng đã có từ dòng game Need for Speed: Most Wanted.</p>', 5, N'bmw-m3-2017.jpg')
INSERT [dbo].[Models] ([IDmodel], [Name], [Describe], [IDcategory], [Image]) VALUES (8, N'LaFerrari 2014', N'<p>LaFerrari rất c&oacute; thể l&agrave; si&ecirc;u xe nhanh nhất, th&uacute; vị nhất thế giới. Đ&oacute; l&agrave; một số tuy&ecirc;n bố để l&agrave;m cho những cổ m&aacute;y như McLaren P1 v&agrave; Porsche 918 Spyder để cạnh tranh với cuộc đua khốc liệt n&agrave;y.</p>
', 12, N'LaFerrari-2014.jpg')
INSERT [dbo].[Models] ([IDmodel], [Name], [Describe], [IDcategory], [Image]) VALUES (9, N'Bentley Bentayga', N'<p>Ettore Bugatti was not being entirely kind when he described a Bentley racing car as &ldquo;le camion plus vite du monde&rdquo; &ndash; the world&rsquo;s fastest truck &ndash; but as pithy, grudging compliments go, it has stuck.</p>
', 4, N'bentley-bentayga-2016.jpg')
INSERT [dbo].[Models] ([IDmodel], [Name], [Describe], [IDcategory], [Image]) VALUES (10, N'Ferrari 812 Superfast', N'<p>The Ferrari 812 Superfast is the latest super-GT car from Maranello, the newest in a long line of front-engined V12s, hence the &lsquo;12&rsquo; in the title.&nbsp;It replaces the&nbsp;F12, which wasn&rsquo;t exactly unsuperfast itself, what with its 730bhp and everything.</p>
', 12, N'ferrari-812-superfast.jpg')
INSERT [dbo].[Models] ([IDmodel], [Name], [Describe], [IDcategory], [Image]) VALUES (11, N'McLaren 675 LT', N'<p>It&rsquo;s fourth gear and probably taken at around 80mph, although I&rsquo;m not looking that closely at the speedo because, halfway through it, I apply a bit too much throttle and the 675 LT indulges me in what it thinks I&rsquo;d like it to do, and steps smartly sideways.</p>
', 45, N'mclaren-675lt.jpg')
INSERT [dbo].[Models] ([IDmodel], [Name], [Describe], [IDcategory], [Image]) VALUES (12, N'Lamborghini Urus 2018', N'<p>Với động cơ V8 Twin-Turbo c&ocirc;ng suất cực đại 650 m&atilde; lực, Lamborghini Urus c&oacute; thể đạt vận tốc tối đa 305 km/h, so&aacute;n ng&ocirc;i SUV nhanh nhất thế giới của Bentley Bentayga.</p>
', 22, N'Urus.jpg')
INSERT [dbo].[Models] ([IDmodel], [Name], [Describe], [IDcategory], [Image]) VALUES (13, N'Porsche 911 Carrera T 2018', N'<p>Porsche seeks to milk its greatest asset further with pleasing if not Earth-shaking effect. But is the Carrera T more alluring than the standard 911 or Carrera S?</p>
', 30, N'porsche911-carrera-t.jpg')
SET IDENTITY_INSERT [dbo].[Models] OFF
SET IDENTITY_INSERT [dbo].[Reviews] ON 

INSERT [dbo].[Reviews] ([IDreviews], [ContentReview], [IDmodel], [DatePost], [Author]) VALUES (1, N'Nguyễn Minh Thiện', 8, CAST(N'2017-12-17' AS Date), N'thien')
INSERT [dbo].[Reviews] ([IDreviews], [ContentReview], [IDmodel], [DatePost], [Author]) VALUES (2, N'<p>About nine decades after he said it, here&rsquo;s a 2.4-tonne, four-wheel-drive Bentley SUV that&rsquo;ll do 187mph.</p>

<p>The Bentayga is a car Bentley had been thinking about making for years.</p>

<p>But even though it knows all about luxury car owners better than most companies, it had a couple of lingering doubts. One: whether an SUV really could strut around the place asking people to pay nearly &pound;200,000 for it.</p>

<p>And two: whether it could do the job justice. Making a luxury saloon that can do more than 180mph is difficult enough.</p>

<p>Add in the idea that it should also go off road and you can imagine the scale of the task its engineers thought they&rsquo;d face.</p>

<p>In the end, incoming CEO Wolfgang D&uuml;rheimer made the decision. Like Bentley, <a href="https://www.autocar.co.uk/car-reviews/porsche">Porsche</a> is part of the VW Group, and during D&uuml;rheimer&rsquo;s time there, he&rsquo;d seen what <a href="https://www.autocar.co.uk/car-review/porsche/cayenne/first-drives/porsche-cayenne-3.0-td-v6">the Cayenne SUV</a> could do for the bottom line of a company that was hitherto supposed to make only sports cars.</p>
', 9, CAST(N'2017-12-18' AS Date), N'thien')
INSERT [dbo].[Reviews] ([IDreviews], [ContentReview], [IDmodel], [DatePost], [Author]) VALUES (3, N'<p>But now &ndash; and here comes the &lsquo;8&rsquo; &ndash; peak power is up to 800 metric horsepower, or 789bhp, so if it wasn&rsquo;t fast enough before, the chances are that it will be now.&nbsp;</p>

<p><a href="https://www.autocar.co.uk/car-news/industry/opinion-does-ferrari-812-superfast-have-too-much-power">How much power, Raffaele de Simone, Ferrari&rsquo;s chief test driver and lead engineer, is too much?</a>&nbsp;&ldquo;If you have control, it&rsquo;s never enough,&rdquo; he says.</p>

<p>Righto. Control, mind, was one of the things that the recent, l<a href="https://www.autocar.co.uk/car-review/ferrari/f12tdf">imited-run&nbsp;</a><a href="https://www.autocar.co.uk/car-review/ferrari/f12tdf">F12tdf&nbsp;</a><a href="https://www.autocar.co.uk/car-review/ferrari/f12tdf">did not offer in quantities to match its 770bhp</a>. The spiky, angry, hard-to-drive special edition felt like it made double that power when it arrived in doses so heady that they overwhelmed a chassis featuring a rear-steer system seemingly intended to confound both itself and its driver.&nbsp;</p>

<p><a href="https://www.autocar.co.uk/car-reviews/ferrari">Ferrari called that system a &lsquo;virtual short wheelbase&rsquo;&nbsp;</a>but, in effect, it did precisely the opposite. By steering the rear wheels in the same direction as the fronts it was adding stability &ndash; virtual length &ndash; to the tdf&rsquo;s wheelbase, in an attempt, at which it would mostly fail, to tame a chassis that had been made deliberately unstable by fitting extremely wide front tyres.</p>

<p>Their grip and willingness to turn made the F12tdf feel extraordinarily agile for its size, but combined with the extra power, they also made it impossibly lively, but that was okay because it was a limited-run model only for those in both the club and the right mood.&nbsp;</p>

<h2>The Ferrari 812 Superfast &ndash; an untameable beast?</h2>

<p><a href="https://www.autocar.co.uk/car-video/video-ferrari-812-superfast-full-tech-run-down">This new 812 Superfast, by way of contrast, is a regular production model</a>, potentially driven by anyone, whatever their mood. So, naturally, it gets precisely the same tyre sizes as the tdf, the same rear-steer system, and even more horsepower. Gulp.&nbsp;</p>

<p>But hold on.&nbsp;<a href="https://www.autocar.co.uk/car-news/motor-shows-geneva-motor-show/2017-ferrari-812-superfast-due-geneva-final-naturally">Here&rsquo;s yer man de Simone again, telling me that the 812 Superfast is</a>, in fact,&nbsp;<a href="https://www.autocar.co.uk/car-review/ferrari/f12-berlinetta">easier to drive on the limit even than the F12</a>.</p>

<p>Which is no bad thing. The tyres are regular Pirelli P Zeros, the rear-steer system has been honed and tweaked, and it now talks, along with the electronically controlled differential, the stability control and the drift control, to Ferrari&rsquo;s first application of electrically assisted power steering, itself replacing a hydraulic set-up. It&rsquo;s all damnably clever.&nbsp;</p>

<p>Meantime, the rest of the news.&nbsp;<a href="https://www.autocar.co.uk/car-news/new-cars/ferrari-p45-ultimate-enzo">This V12 engine&rsquo;s block made its debut in the 6.0-litre&nbsp;</a><a href="https://www.autocar.co.uk/car-news/motoring/enzo-ferrari-remembered-picture-special">Enzo</a><a href="https://www.autocar.co.uk/car-news/new-cars/ferrari-p45-ultimate-enzo">&nbsp;of 2002</a>. Since then it has grown in capacity and changed in internals and ancillaries and heads and so on, but the block casting itself remains precisely the same. It reached its maximum bore a while ago, but here, now, stroked out to 6.5 litres, it is as large in capacity as it can possibly be.&nbsp;</p>

<p>Is it approaching the end of its era, then?&nbsp;<a href="https://www.autocar.co.uk/car-reviews/ferrari">Not a bit of it, says Ferrari</a>. Yes, it now has a fuel injection system that operates at 350bar (up from 200) and a redline at 8900rpm, but there&rsquo;s still more to come, apparently. Given that it&rsquo;s a normally aspirated petrol engine with an already hyperefficient intake and exhaust cycle, that can only mean one thing: new materials that will let it spin faster, so in its next incarnation it should rev past 9000rpm, easily. I mentioned it&rsquo;s a 6.5-litre V12, right? How wonderful.&nbsp;</p>

<h2>Getting acquainted to the 812 Superfast&rsquo;s mechanicals</h2>

<p>Obviously economy and emissions have to improve, too. The new cleaner injection system helps. So does the stop-start system cutting the engine when you&rsquo;re decelerating past 5mph, although that does feel weird.</p>

<p>Peak power is at 8500rpm while peak torque of 530lb ft is at 7000rpm, so you suspect this V12 will thrive on revs. Still, 80 percent of torque can be had from 3500rpm. And let&rsquo;s face it, when peak power is 789bhp, even half of that is a fair chunk.&nbsp;</p>

<p>The V12 is mated to a seven-speed dual-clutch automatic gearbox, and because the &rsquo;box is at the back,&nbsp;<a href="https://www.autocar.co.uk/car-video/video-ferrari-812-superfast-review-new-800hp-supercar-tested">it gives the 812 the same slight rearward weight bias</a>&nbsp;&ndash; about 53 percent &ndash;&nbsp;<a href="https://www.autocar.co.uk/car-review/ferrari/f12-berlinetta">as the F12 had before it</a>.&nbsp;</p>

<p><a href="https://www.autocar.co.uk/car-review/ferrari/f12tdf">The body structure is largely unchanged from the F12, too</a>. It&rsquo;s different at the front to accommodate EPAS, not HPAS, and at the back to fit the rear-steer. But, some stiffening fabrication differences aside, it&rsquo;s little altered.&nbsp;</p>

<p><a href="https://www.autocar.co.uk/car-review/ferrari/f12tdf/first-drives/2016-ferrari-f12tdf-review">Still, 60kg did come out of the F12&rsquo;s construction</a>: through lighter electrics and plumbing, sound proofing and endless pressure on suppliers. But the stronger engine and rear-steer has put the lot back in again. So claimed weight stays at 1630kg (<a href="https://www.autocar.co.uk/car-review/ferrari/f12-berlinetta">call it just over 1700kg on our scales, given that we tested an F12 at 1715kg</a>). Which is a fair whack.&nbsp;</p>

<p>It&rsquo;s aggressive to look at. There are aerodynamic details aplenty to pore over, plus a vast open frontal grille, or &ldquo;smile&rdquo;, Ferrari calls it, which is to friendly smiles what eating your kids is to childminding. Inside there are two seats, a driver-centric instrument stack, a supplementary instrument binnacle for the passenger (very cool) and a bit of oddment storage. Behind all that is a hatch with a decent-sized but high-temperature boot.&nbsp;</p>

<h2>Unleashing the 812 Superfast&rsquo;s ramping stallions</h2>

<p><a href="https://www.autocar.co.uk/car-news/motor-shows-geneva-motor-show/789bhp-ferrari-812-superfast-revealed-most-powerful-series">There&rsquo;s apparently less soundproofing in the 812 than there was in the F12</a>, but on start-up I doubt you&rsquo;d tell.&nbsp;<a href="https://www.autocar.co.uk/car-reviews/ferrari">Ferrari people say they want to let in the good noises</a>&nbsp;but not the bad ones, but the difference between volumes inside and outside the car is vast. From inside, the V12 barks and fizzes, but the overriding impression is one of a perfectly smooth &ndash; and razor-sharp &ndash; engine. From outside it sounds like the atmosphere is being cleaved in two.&nbsp;</p>

<p>Engine response is fabulous. Oh, it&rsquo;s tractable enough and you can leave the steering wheel dial in Wet or Sport and the gearbox in Auto and it&rsquo;ll bimble about at low revs all day long, but you&rsquo;ll be wasting everybody&rsquo;s efforts if you do that.</p>

<p>&nbsp;</p>
', 10, CAST(N'2017-12-20' AS Date), N'thien')
INSERT [dbo].[Reviews] ([IDreviews], [ContentReview], [IDmodel], [DatePost], [Author]) VALUES (4, N'<p>A&nbsp;<a href="https://www.autocar.co.uk/car-review/mclaren/650s">McLaren 650S</a>&nbsp;wouldn&rsquo;t have done that. It would have been rather more governed by the grip at its front end, but <a href="https://www.autocar.co.uk/car-review/mclaren/675-lt/first-drives/2016-mclaren-675lt-spider-review">the limited-run 675 LT</a>, which McLaren says is <a href="https://www.autocar.co.uk/car-review/mclaren/650s-spider">a bigger step-change over the 650S</a> than the 650S was over the 12C, has had its unruly side unleashed.&nbsp;</p>

<p>Even though there&rsquo;ll only be 500 LTs, some 33 percent of it is new compared with the 650S, which the LT supplements in the range.&nbsp; Think of it, although I won&rsquo;t be forgiven for the analogy, as a 650S Speciale. Half of the engine components have been replaced to find an extra 25bhp, taking the 3.8-litre engine&rsquo;s total to 666bhp. That&rsquo;s 675PS, hence that part of the name.&nbsp;</p>

<p>The &#39;LT&#39; bit stands for Longtail, named after <a href="https://www.autocar.co.uk/car-news/motoring/mclaren-f1-gtr-driven">the three&nbsp;</a><a href="https://www.autocar.co.uk/car-review/mclaren/f1-1992-1998">McLaren F1</a><a href="https://www.autocar.co.uk/car-news/motoring/mclaren-f1-gtr-driven">&nbsp;GTR Longtails</a> that were homologated to keep the F1 competitive in sports car racing in 1997. The F1 Longtail was longer, lighter, faster; so is this car. At &pound;259,500, it&rsquo;s more expensive, too.</p>

<p>LT is now more about philosophy than length, though, because the 675 is only 3cm longer than a 650, but with its new front splitter, 50 percent larger rear wing and new underbody and side addenda, it makes 40 percent more downforce than the 650. The body changes are all in carbonfibre, which contributes to a weight saving as well as the downforce increase. The 675, at 1320kg (1230kg dry), is 100kg lighter than a car that was not noted for its portliness in the first instance.</p>

<p>Looking for areas from where to trim eight percent of the mass means that even the wiring loom is 3kg lighter, the windscreen glass is 0.5mm thinner and the engine cover is Plexiglass &ndash; although its holes, like the vents at the rear and the fact that the radiators have been turned sideways, are about getting heat from the car rather than lightening it.</p>

<p>There are more stats &ndash; lots more, like the fact that the conrods are 11 percent lighter and that the engine cuts the ignition on upshifts, so the engine&rsquo;s speed change rate is 55 percent faster &ndash; but what makes the 675 the car it is are <a href="https://www.autocar.co.uk/car-reviews/mclaren">the changes McLaren has wrought</a> to the chassis.</p>

<p><a href="https://www.autocar.co.uk/car-review/mclaren/p1-2014-2015">The steering rack is faster even than a P1&rsquo;s</a>, spring rates are 27 percent stiffer at the front and some 60 percent stiffer at the rear, and the front tyre grip has been increased by 6 percent.</p>

<p>All of which is centred around making <a href="https://www.autocar.co.uk/car-review/mclaren/675-lt/first-drives/2016-mclaren-675lt-spider-review">the 675LT more agile, responsive and rewarding</a>; and more of a car that is prepared to indulge your childish side in a way that,&nbsp;P1&nbsp;aside, modern McLarens hitherto have not. They&rsquo;ve had launch control, for example, but not a launch mode which will give you massive, long, smoky burnouts. The 675 has one of these.</p>

<p>It&rsquo;s a car you wouldn&rsquo;t always know was wild.&nbsp;McLaren&nbsp;says, yes, <a href="https://www.autocar.co.uk/car-review/mclaren/675-lt/first-drives/2016-mclaren-675lt-spider-review">inevitably you&rsquo;ll want to talk competitors to the 675 LT</a> &ndash; the <a href="https://www.autocar.co.uk/car-review/ferrari/458-speciale">Ferrari 458 Speciale</a> is obviously the one that comes to our minds &ndash; but, says McLaren, this is a car that has many rivals, not just one, because it&rsquo;s so broadly capable. And so it proves.</p>

<p>The 650 was always a car with ride quality to spare, and even though it has given up a little of its compliance, still it&rsquo;s a car that rides with flatness and composure that track special sports cars &ndash; or plenty of saloon cars, for that matter &ndash; simply could not match. Even though it&rsquo;s firmer this is still a car in which you could comfortably cross a country on your way to a track day.</p>

<p>And it steers beautifully. The faster rack gives no hint of nervousness but oodles of feel and finesse. That the 3.8-litre flat-plane crank engine makes a more satisfying sound than ever, that the gearshifts are shorter and that the exhaust prone to <a href="https://www.autocar.co.uk/car-review/mclaren/675-lt/first-drives/2016-mclaren-675lt-spider-review">popping unburnt fuel mean the 675LT</a> is an engaging, rewarding road car.</p>

<p>You still get three modes of damping stiffness and powertrain anger, too, so you can turn up the noise yet leave the suspension relatively supple. On the road, where the traction control is regularly tested and sublimely metered, I recommend you do.</p>

<p>On a circuit, though, it is best if everything is turned to 11, and here&rsquo;s where you feel <a href="https://www.autocar.co.uk/car-review/mclaren/650s">the greatest difference between the 650S</a> and 675LT. The basics are still there: it&rsquo;s still whoppingly fast and the brakes are phenomenal. There&rsquo;s still a touch of stabilising understeer if you drive smoothly, and there&rsquo;s still brake-steer and an open rear differential.&nbsp;</p>

<p>But it&rsquo;s in the details and nuances of the handling balance <a href="https://www.autocar.co.uk/car-review/mclaren/675-lt/first-drives/2016-mclaren-675lt-spider-review">where the 675 has finally fulfilled the potential</a> of this McLaren model line; where it has finally become a truly adjustable mid-engined car, with a nailed-down front end and a tail that is prepared to move around under acceleration, or that can be provoked on turn-in.</p>

<p>It is quite a bit more mobile, that degree more agile; not just prepared but actually willing to tackle a corner at the attitude you choose, not just at an attitude that&rsquo;s fast. The 675LT&nbsp;<em>is</em>&nbsp;fast, mind &ndash; closer in lap time to a P1 than a 650S around most race circuits.</p>

<p><a href="https://www.autocar.co.uk/car-review/mclaren/675-lt/first-drives/2016-mclaren-675lt-spider-review">Don&rsquo;t want one only because the 675 LT is quick</a>. The difference you&rsquo;ll note from behind the wheel is not necessarily <a href="https://www.autocar.co.uk/car-review/mclaren/650s-spider">how much faster you&rsquo;d be going than in a 650S</a>, but how much more fun you&rsquo;re having while you&rsquo;re doing it.</p>

<p>Until now I&rsquo;ve felt this car &ndash; and by which I mean <a href="https://www.autocar.co.uk/car-review/mclaren/12c-spider-2012-2014">MP4-12C</a>, <a href="https://www.autocar.co.uk/car-review/mclaren/12c-spider-2012-2014">12C</a> and <a href="https://www.autocar.co.uk/car-review/mclaren/650s-spider">650S</a> &ndash; has just needed to loosen its top button, worry less about impressing people and kick back and unwind a little. <a href="https://www.autocar.co.uk/car-review/mclaren/675-lt/first-drives/2016-mclaren-675lt-spider-review">In the form of the 675 LT</a> it has become precisely that car.</p>
', 11, CAST(N'2017-12-20' AS Date), N'mthien')
INSERT [dbo].[Reviews] ([IDreviews], [ContentReview], [IDmodel], [DatePost], [Author]) VALUES (5, N'<p>First, let&rsquo;s deal with the name. Believe the marketing hype and <a href="https://www.autocar.co.uk/car-news/motoring/history-porsche-911-picture-special">you&rsquo;ll think the original 1968 Porsche 911T</a> (standing for Touring) was conceived as a stripped-back lightweight driver&rsquo;s car&nbsp;fine-tuned for the open road, and that this modern 911T pays homage to that legend. It does nothing of the sort.</p>

<p>Fifty years ago, the&nbsp;911T was a cut-price, poverty-spec 911 designed to boost sales. <a href="https://www.autocar.co.uk/car-reviews/porsche">Porsche took money out</a> of it wherever it could &ndash;&nbsp;none more so than in its engine, which was so detuned that, at 110bhp, it was and remains the least powerful 911 ever offered for sale. Regardless of&nbsp;name, this new 911 Carrera T takes a completely different approach, not least because, at &pound;85,576, it&rsquo;s almost <a href="https://www.autocar.co.uk/car-review/porsche/911/first-drives/2015-porsche-911-carrera-review">10%&nbsp;more expensive than the Carrera coup&eacute;</a>&nbsp;on which it&rsquo;s based. The original T&nbsp;was well over 10%&nbsp;cheaper than the standard 911&nbsp;of the time. In fact, today&rsquo;s T&nbsp;is a far more&nbsp;carefully honed road warrior than its ancestor ever was.</p>

<p>Even so, there&rsquo;s been no revolution here.&nbsp;So if you were <a href="https://www.autocar.co.uk/car-review/porsche/911-gt3">hoping the Carrera T&nbsp;would be a mini-me GT3</a>, look away now. But that&rsquo;s not to say there&rsquo;s nothing interesting going on. The motor is <a href="https://www.autocar.co.uk/car-review/porsche/911/first-drives/2016-porsche-911-carrera-manual-review">the stock 3.0-litre turbocharged Carrera unit</a>, as is its seven-speed manual gearbox. But the shifter has been made a little shorter and the whole thing runs <a href="https://www.autocar.co.uk/car-review/porsche/911/first-drives/2016-porsche-911-carrera-s-cabriolet-review">through the final drive from the Carrera S</a>, dropping the gearing more than a touch. More significant still is the standard limited-slip differential, <a href="https://www.autocar.co.uk/car-reviews/porsche">Porsche&rsquo;s highly effective PASM adaptive damping system</a> (and the 20mm suspension drop that comes with it), 20in rims and&nbsp;standard fitment of the Sport Chrono pack,&nbsp;with its steering wheel-mounted mode switch. It has sports exhausts, too. These items alone would amount to almost the additional cost asked by Porsche were it possible to fit them all as options to a Carrera. Four-wheel steering, unavailable on the Carrera, becomes an option here. So far, so good.</p>

<p>To negate the additional weight of these systems, Porsche sells the car as standard with no rear seats and no infotainment system.&nbsp;But since both are no-cost options that I&nbsp;bet a statistically negligible number of customers will pass up, a cynic might conclude that the Carrera T had been configured this way <a href="https://www.autocar.co.uk/car-reviews/porsche">just to enable Porsche to give&nbsp;the perception</a>&nbsp;&ndash;&nbsp;rather than the reality &ndash;&nbsp;of a car made lighter. In truth,&nbsp;despite lightweight glass being fitted to the side and rear windows and the removal&nbsp;of some sound deadening, even without rear seats and sat-nav&nbsp;the car is <a href="https://www.autocar.co.uk/car-review/porsche/911/first-drives/2015-porsche-911-carrera-review">just 5kg lighter than a standard Carrera</a>.&nbsp;However, Porsche points out that were the cars&nbsp;in comparable specs &ndash; ie if you fitted the Carrera with the diff, dampers, big wheels and so on &ndash; that figure would be 20kg.</p>

<p>Visually, the Carrera T has a deeper front splitter &ndash; indistinguishable <a href="https://www.autocar.co.uk/car-review/porsche/911/first-drives/2016-porsche-911-carrera-4s-review">to these eyes from that fitted to a Carrera S</a> &ndash; and badging down the side and on the engine cover. Inside,&nbsp;leather is now used only for the seat side bolsters, with the rest covered in a rather attractive Sport-Tex&nbsp;material. There&rsquo;s more badging in the rev counter and on the kick plates, door pulls rather than handles&nbsp;and,&nbsp;<a href="https://www.autocar.co.uk/car-review/porsche/911">if you&rsquo;re a real 911 geek</a>, you&rsquo;ll notice the map on top of the gearlever is now depicted in red paint.</p>

<p><img alt="" src="https://www.autocar.co.uk/sites/autocar.co.uk/files/styles/body-image/public/911t-0359.jpg?itok=N0U516lB" style="height:600px; width:900px" /></p>

<h2>What&#39;s it like?</h2>

<p>To expect such changes to <a href="https://www.autocar.co.uk/car-review/porsche/911">transform the 911 would be optimistic</a> to the point of na&iuml;vety, but it is also to imply that the 911 is in some need of transformation. It is not;&nbsp;<a href="https://www.autocar.co.uk/car-news/new-cars/porsche-911-carrera-t-pared-back-variant-display-la-show">before Porsche&rsquo;s T-squad laid a finger on its flanks</a>, the 911&nbsp;was by some distance already the most desirable and effective performer in its category. Expect, instead, a car with just a little more edge;&nbsp;a top-quality Sabatier recently recovered from the sharpening stone.</p>

<p>It doesn&rsquo;t sound like a Le Mans-specification 935 when you fire it up, despite the removal of some of its sound lagging. Instead, and to these ears at least, it just sounds 5% more urgent and only when you&rsquo;re really working the motor. <a href="https://www.autocar.co.uk/car-review/porsche/911/first-drives/2016-porsche-911-carrera-s-cabriolet-review">I drove to try the Carrera T in a standard Carrera S</a> and,&nbsp;if the latter was more refined than the former at a steady cruise, these ears could not detect it.</p>

<p>The surprise is how fast it feels &ndash;&nbsp;scarcely slower in the lightly optioned spec tested <a href="https://www.autocar.co.uk/car-review/porsche/911/first-drives/2016-porsche-911-carrera-s-cabriolet-review">than a lavishly equipped Carrera S</a>, despite the whopping 50bhp difference in their engine outputs. It makes you realise that, every time you tick a box to add <a href="https://www.autocar.co.uk/car-review/porsche/911">one more goody to a car like a 911</a>, so&nbsp;you also remove a small chunk of at least part of the reason you bought the car in the first place. Certainly on quick but slippery British lanes, I never once found myself wishing they&rsquo;d applied this treatment to the Carrera S with its more powerful motor&nbsp;or even wondering why they did not.</p>

<p>There is a certain purity here that plays perfectly to the <a href="https://www.autocar.co.uk/car-news/motoring/history-porsche-911-picture-special">less-is-more narrative that has accompanied the 911 in the 30 years</a> I&rsquo;ve been driving and writing about them; and you notice it most on roads and in conditions like these. For where <a href="https://www.autocar.co.uk/car-review/porsche/911-gt3">the GT3 analogy is briefly but significantly relevant</a> is that if you want a 911 that handles better than the Carrera T, that&rsquo;s what you&rsquo;re going to need to score.</p>

<p>What you notice first is how easy it is to drive fast and then how much fun. I will confess this is partly because the car came on Pirelli Sotto Zero winter rubber ideally suited to these conditions;&nbsp;but even taking this into account,&nbsp;it feels almost unnaturally fluent given that it&rsquo;s still a powerful, rear-wheel-drive car traversing unusually treacherous countryside. The PASM system allows you to stiffen the dampers, but it&rsquo;s far better to keep them soft and let the body move a little. Then you can really lean on the car&rsquo;s strengths, particularly the immense traction provided by the engine location and the limited-slip differential. It&rsquo;s not the kind of heart-thumping, <a href="https://www.autocar.co.uk/car-review/porsche/911-gt3">life-affirming ride a GT3 might provide</a> on the right road, but it is still a deeply satisfying and <a href="https://www.autocar.co.uk/car-review/porsche/911/performance">significantly augmented 911 driving experience</a> most will delight in savouring.</p>

<p><img alt="" src="https://www.autocar.co.uk/sites/autocar.co.uk/files/styles/body-image/public/911t-0365.jpg?itok=28dYjXNT" style="height:600px; width:900px" /></p>

<h2>Should I buy one?</h2>

<p>But it could be better still. The seven-speed gearbox is nowhere near&nbsp;<a href="https://www.autocar.co.uk/car-review/porsche/718-cayman">as good as the six-speeder in the Cayman</a> and <a href="https://www.autocar.co.uk/car-review/porsche/718-boxster">Boxster</a>&nbsp;&ndash; and something, presumably its shortened final drive, has hammered the claimed fuel consumption.&nbsp;On paper&nbsp;at least, this 365bhp car uses <a href="https://www.autocar.co.uk/car-review/porsche/911/first-drives/2017-porsche-911-carrera-gts">no less fuel than a 444bhp 911 GTS</a>, with a commensurate hit in CO2 output and associated tax liability.</p>

<p>Even so, for <a href="https://www.autocar.co.uk/car-review/porsche/911/mpg">those looking for a 911 </a>with all the comfort and <a href="https://www.autocar.co.uk/car-review/porsche/911/ride">daily usability of a normal 911</a> but an even more authentic driving experience, the nicely honed Carrera T is well worth a look. I just wish they&rsquo;d used another letter: unlike most modern cars that seek shamelessly to exploit their heritage, <a href="https://www.autocar.co.uk/car-news/industry/purist-porsche-911-destined-regular-line">the new 911 Carrera T is in no way a faithful reinterpretation</a> of the original. It&rsquo;s far, far better than that.</p>

<p><strong>Porsche 911 Carrera T</strong></p>

<p><strong>Where</strong>&nbsp;Home Counties&nbsp;<strong>On sale</strong>&nbsp;Now&nbsp;<strong>Price</strong>&nbsp;&pound;85,576&nbsp;<strong>Engine</strong>&nbsp;2981cc, flat six,&nbsp;turbocharged petrol&nbsp;<strong>Power</strong>&nbsp;365bhp at 6500rpm&nbsp;<strong>Torque</strong>&nbsp;332lb ft at 1700rpm&nbsp;<strong>Gearbox</strong>&nbsp;7-spd manual&nbsp;<strong>Kerb weight</strong>&nbsp;1500kg&nbsp;<strong>Top speed</strong>&nbsp;182mph&nbsp;<strong>0-62mph</strong>&nbsp;4.5sec&nbsp;<strong>Fuel economy</strong>&nbsp;29.7mpg&nbsp;<strong>CO2/tax band</strong>&nbsp;215g/km, 37%&nbsp;<strong>Rivals</strong><a href="https://www.autocar.co.uk/car-review/jaguar/f-type-r">&nbsp;Jaguar F-Type R</a>, <a href="https://www.autocar.co.uk/car-review/mercedes-amg/gt">Mercedes-AMG GT</a></p>

<p><img alt="" src="https://www.autocar.co.uk/sites/autocar.co.uk/files/styles/body-image/public/911t-0363.jpg?itok=EUr9FDWC" style="height:600px; width:900px" /></p>

<p>&nbsp;</p>
', 13, CAST(N'2017-12-23' AS Date), N'mthien')
INSERT [dbo].[Reviews] ([IDreviews], [ContentReview], [IDmodel], [DatePost], [Author]) VALUES (6, N'<p>Just as it had reeled in the huge lead that greater longevity had given <a href="https://www.autocar.co.uk/car-reviews/bmw">BMW</a> and <a href="https://www.autocar.co.uk/car-reviews/mercedes-benz">Mercedes-Benz</a>, so it might now compete with <a href="https://www.autocar.co.uk/car-reviews/porsche">the mighty Porsche</a>.</p>

<p>The R8, <a href="https://www.autocar.co.uk/car-review/first-drives/audi-r8-42-fsi-s-tronic-first-drive-review">in its original V8 format</a>, was an automotive attestation of the boldest sort: the <a href="https://www.autocar.co.uk/car-review/porsche/911">911&rsquo;s status</a> is not sacrosanct and Porsche&rsquo;s path to driving nirvana isn&rsquo;t the sole means of ascent.</p>

<p>Quattro GmbH had conceived of another way and <a href="https://www.autocar.co.uk/car-reviews/audi">Audi rallied the ambition</a>, expertise and investment required to make it happen.</p>

<p>Now, nine years on from <a href="https://www.autocar.co.uk/car-review/audi/r8/first-drives/audi-r8-4.2">the original R8&rsquo;s introduction</a>, it has retooled for a second run, tweaking much in a car whose design clearly continues to owe a substantial debt to the look of its predecessor. Its reason for being is slightly different, though.</p>

<p>Porsche has gone from rival to relative, and so the requirement for a more modest V8-powered variant to challenge <a href="https://www.autocar.co.uk/car-review/porsche/911-2012-2015">the Carrera</a> has gone, too.</p>

<p><a href="https://www.autocar.co.uk/car-review/audi/r8/first-drives/audi-r8-5.2-v10-gt">Consequently, Audi&rsquo;s 5.2-litre V10 &ndash; still naturally aspirated</a> &ndash; has become the only engine choice and &pound;119,500 has become the starting price.</p>

<p><a href="https://www.autocar.co.uk/car-review/audi/r8/first-drives/first-drive-review-audi-r8-v8-s-tronic">So the R8&rsquo;s positioning has changed slightly</a>, from sports car to super-sports car &ndash; and the move has been a long time coming. It was previewed by the phalanx of more and more powerful run-out special editions of <a href="https://www.autocar.co.uk/car-review/audi/r8/first-drives/audi-r8-5.2-v10-gt">the previous R8</a> but was ultimately hinted at much earlier, when Audi learnt <a href="https://www.autocar.co.uk/car-review/audi/r8/first-drives/2015-audi-r8-review">how much buyers were prepared to pay for the R8</a>.</p>

<p>We&rsquo;re testing the quickest, <a href="https://www.autocar.co.uk/car-review/audi/r8/first-drives/2015-audi-r8-v10-plus-review">most expensive version: the V10 Plus</a>, delivering <a href="https://www.autocar.co.uk/car-review/lamborghini/huracán">the same 602bhp as its Lamborghini Hurac&aacute;n sibling</a>. It is, in fact, the quickest car Audi has made. Now, to properly succeed its predecessor, it just has to be the best driver&rsquo;s car Audi has made, too.</p>
', 5, CAST(N'2017-12-23' AS Date), N'mthien')
INSERT [dbo].[Reviews] ([IDreviews], [ContentReview], [IDmodel], [DatePost], [Author]) VALUES (7, N'<p>asdlkfjlads</p>
', 2, CAST(N'2017-12-25' AS Date), N'mthien')
SET IDENTITY_INSERT [dbo].[Reviews] OFF
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([IDuser], [Username], [Password], [Email], [Role]) VALUES (1, N'mthien', N'123456', N'nguyenminhthiensmart@gmail.com', 1)
INSERT [dbo].[Users] ([IDuser], [Username], [Password], [Email], [Role]) VALUES (2, N'thien', N'123456', N'thienthanthanh.tn@gmail.com', 2)
INSERT [dbo].[Users] ([IDuser], [Username], [Password], [Email], [Role]) VALUES (3, N'khoi', N'123456', N'nguyenvankhoi@gmail.com', 3)
INSERT [dbo].[Users] ([IDuser], [Username], [Password], [Email], [Role]) VALUES (9, N'duy', N'987654', N'duynguyen.ejtalk@gmail.com', 0)
SET IDENTITY_INSERT [dbo].[Users] OFF
SET IDENTITY_INSERT [dbo].[Videos] ON 

INSERT [dbo].[Videos] ([IDvideo], [Name], [URL], [Author], [Date], [Views], [IDmodel]) VALUES (1, N'LAMBORGHINI URUS 2018', N'https://youtu.be/Xo1pEPoYi8Y', N'Thiện Thần Thánh', CAST(N'2017-12-03' AS Date), 145036, 12)
INSERT [dbo].[Videos] ([IDvideo], [Name], [URL], [Author], [Date], [Views], [IDmodel]) VALUES (2, N'LaFerrari 2014 Review', N'https://youtu.be/CaC3jJgtDOE', N'thien', CAST(N'2017-12-24' AS Date), 0, 0)
INSERT [dbo].[Videos] ([IDvideo], [Name], [URL], [Author], [Date], [Views], [IDmodel]) VALUES (3, N'Ferrari 812 Superfast Review', N'https://youtu.be/Rt5Pamh1ABQ', N'mthien', CAST(N'2017-12-24' AS Date), 0, 0)
SET IDENTITY_INSERT [dbo].[Videos] OFF
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Reviews] FOREIGN KEY([IDreview])
REFERENCES [dbo].[Reviews] ([IDreviews])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Reviews]
GO
ALTER TABLE [dbo].[Comments]  WITH CHECK ADD  CONSTRAINT [FK_Comments_Users] FOREIGN KEY([IDuser])
REFERENCES [dbo].[Users] ([IDuser])
GO
ALTER TABLE [dbo].[Comments] CHECK CONSTRAINT [FK_Comments_Users]
GO
ALTER TABLE [dbo].[Models]  WITH CHECK ADD  CONSTRAINT [FK_Models_Categories] FOREIGN KEY([IDcategory])
REFERENCES [dbo].[Categories] ([IDcategory])
GO
ALTER TABLE [dbo].[Models] CHECK CONSTRAINT [FK_Models_Categories]
GO
ALTER TABLE [dbo].[Reviews]  WITH CHECK ADD  CONSTRAINT [FK_Reviews_Models] FOREIGN KEY([IDmodel])
REFERENCES [dbo].[Models] ([IDmodel])
GO
ALTER TABLE [dbo].[Reviews] CHECK CONSTRAINT [FK_Reviews_Models]
GO
/****** Object:  StoredProcedure [dbo].[DataCategoryNonReview]    Script Date: 25/12/2017 16:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DataCategoryNonReview]
AS
BEGIN
    SELECT *
	FROM dbo.Categories
	WHERE IDcategory IN (
						SELECT DISTINCT IDcategory
						FROM dbo.Models
						WHERE IDmodel NOT IN (
											SELECT IDmodel
											FROM dbo.Reviews))
	ORDER BY Name
END
GO
/****** Object:  StoredProcedure [dbo].[DataCommentForAdminPage]    Script Date: 25/12/2017 16:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DataCommentForAdminPage]
AS
BEGIN
    SELECT *
	FROM dbo.Comments JOIN dbo.Users ON	Users.IDuser = Comments.IDuser
	ORDER BY DateComment DESC
END

GO
/****** Object:  StoredProcedure [dbo].[DataCommentForReviewPage]    Script Date: 25/12/2017 16:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DataCommentForReviewPage](@idreview INT)
AS
BEGIN
    SELECT *
	FROM dbo.Comments JOIN dbo.Users ON	Users.IDuser = Comments.IDuser
	WHERE IDreview=@idreview AND Status='1'
END

GO
/****** Object:  StoredProcedure [dbo].[DataManageModel]    Script Date: 25/12/2017 16:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DataManageModel]
AS
BEGIN
    SELECT IDmodel, Models.Name, Categories.Name AS 'NameCategory', Image
	FROM dbo.Models, dbo.Categories
	WHERE Categories.IDcategory=Models.IDcategory
	ORDER BY Categories.Name ASC
END

GO
/****** Object:  StoredProcedure [dbo].[DataModelNoneReview]    Script Date: 25/12/2017 16:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DataModelNoneReview](@category INT)
AS
BEGIN
    SELECT *
	FROM dbo.Models
	WHERE IDcategory=@category AND IDmodel NOT IN (
											SELECT IDmodel
											FROM dbo.Reviews)
	ORDER BY Name ASC
END

GO
/****** Object:  StoredProcedure [dbo].[DataReview]    Script Date: 25/12/2017 16:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[DataReview](@role INT, @author VARCHAR(20))
AS
BEGIN
    IF @role=1
	BEGIN
	    SELECT *
		FROM dbo.Reviews LEFT JOIN dbo.Models ON Models.IDmodel = Reviews.IDmodel
		ORDER BY Name
	END
	ELSE
	BEGIN
	    SELECT *
		FROM dbo.Reviews LEFT JOIN dbo.Models ON Models.IDmodel = Reviews.IDmodel
		WHERE Author=@author
		ORDER BY Name
	END
END
GO
/****** Object:  StoredProcedure [dbo].[InsertCategory]    Script Date: 25/12/2017 16:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InsertCategory](@name VARCHAR(50), @website VARCHAR(100))
AS
BEGIN
    INSERT INTO dbo.Categories
    (
        Name,
        Website
    )
    VALUES
    (   @name, -- Name - varchar(50)
        @website  -- Website - varchar(100)
        )
END
GO
/****** Object:  StoredProcedure [dbo].[InsertComment]    Script Date: 25/12/2017 16:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InsertComment](@content NVARCHAR(MAX), @iduser INT, @idreview INT)
AS
BEGIN
	DECLARE @role INT
	SELECT @role=Role 
	FROM dbo.Users
	WHERE IDuser=@iduser
	IF @role=1 OR @role=2
	BEGIN
		INSERT INTO dbo.Comments
		(
			ContentComment,
			IDuser,
			IDreview,
			DateComment,
			Status
		)
		VALUES
		(   @content,      -- ContentComment - nvarchar(max)
			@iduser,        -- IDuser - int
			@idreview,        -- IDreview - int
			GETDATE(), -- DateComment - date
			1
			)
	END
	ELSE
	BEGIN
		INSERT INTO dbo.Comments
		(
			ContentComment,
			IDuser,
			IDreview,
			DateComment,
			Status
		)
		VALUES
		(   @content,      -- ContentComment - nvarchar(max)
			@iduser,        -- IDuser - int
			@idreview,        -- IDreview - int
			GETDATE(), -- DateComment - date
			0
			)	    
	END
END

GO
/****** Object:  StoredProcedure [dbo].[InsertModel]    Script Date: 25/12/2017 16:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InsertModel](@name NVARCHAR(100), @describe NVARCHAR(500),@idCategory INT, @image VARCHAR(50))
AS
BEGIN
    INSERT INTO dbo.Models
    (
        Name,
        Describe,
        IDcategory,
        Image
    )
    VALUES
    (   @name, -- Name - nvarchar(100)
        @describe, -- Describe - nvarchar(500)
        @idCategory,   -- IDcategory - int
        @image  -- Image - varchar(50)
        )
END
GO
/****** Object:  StoredProcedure [dbo].[InsertReview]    Script Date: 25/12/2017 16:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InsertReview](@content NVARCHAR(MAX), @idmodel INT, @author VARCHAR(20))
AS
BEGIN
    INSERT INTO dbo.Reviews
    (
        ContentReview,
        IDmodel,
		DatePost,
		Author
    )
    VALUES
    (   @content, -- ContentReview - varchar(5000)
        @idmodel,   -- IDmodel - int
		GETDATE(),
		@author
        )
END
GO
/****** Object:  StoredProcedure [dbo].[InsertVideo]    Script Date: 25/12/2017 16:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[InsertVideo](@name VARCHAR(50), @url NVARCHAR(100), @author NVARCHAR(50))
AS
BEGIN
    INSERT INTO dbo.Videos
    (
        Name,
        URL,
        Author,
        Date,
        Views,
        IDmodel
    )
    VALUES
    (   @name,        -- Name - varchar(50)
        @url,       -- URL - nvarchar(100)
        @author,       -- Author - nvarchar(50)
        GETDATE(), -- Date - date
        0,         -- Views - int
        0          -- IDmodel - int
        )
END

GO
/****** Object:  StoredProcedure [dbo].[Login]    Script Date: 25/12/2017 16:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Login](@username VARCHAR(20), @password VARCHAR(20))
AS
BEGIN
    SELECT * FROM dbo.Users WHERE Username=@username AND Password=@password
END
GO
/****** Object:  StoredProcedure [dbo].[Register]    Script Date: 25/12/2017 16:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Register](@username VARCHAR(20), @email VARCHAR(50), @password VARCHAR(20))
AS
BEGIN
    INSERT INTO dbo.Users
    (
        Username,
        Password,
        Email,
        Role
    )
    VALUES
    (   @username, -- Username - varchar(20)
        @password, -- Password - varchar(20)
        @email, -- Email - varchar(50)
        0   -- Role - int
        )
END
GO
/****** Object:  StoredProcedure [dbo].[Top3LatestReviews]    Script Date: 25/12/2017 16:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Top3LatestReviews]
AS
BEGIN
    SELECT TOP 3 Name, Models.IDmodel, Image
	FROM dbo.Models, dbo.Reviews
	WHERE Models.IDmodel=Reviews.IDmodel
	ORDER BY DatePost DESC
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateCategory]    Script Date: 25/12/2017 16:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UpdateCategory](@idcat INT, @name VARCHAR(50), @website VARCHAR(100))
AS
BEGIN
	DECLARE @dem INT
	SELECT @dem=COUNT(*)
	FROM dbo.Categories
	WHERE IDcategory=@idcat
	GROUP BY IDcategory
    UPDATE dbo.Categories SET Name=@name WHERE IDcategory=@idcat
	UPDATE dbo.Categories SET Website=@website WHERE IDcategory=@idcat
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateModel]    Script Date: 25/12/2017 16:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UpdateModel](@idmodel int, @name NVARCHAR(100), @describe NVARCHAR(500), @idcategory INT, @image VARCHAR(50))
AS
BEGIN
    UPDATE dbo.Models
	SET Name=@name,
		IDcategory=@idcategory,
		Describe=@describe,
		Image=@image
	WHERE IDmodel=@idmodel
END

GO
/****** Object:  StoredProcedure [dbo].[UpdateReview]    Script Date: 25/12/2017 16:53:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UpdateReview](@idreview INT, @content NVARCHAR(MAX))
AS
BEGIN
    UPDATE dbo.Reviews
	SET ContentReview=@content
	WHERE IDreviews=@idreview
END
GO
USE [master]
GO
ALTER DATABASE [AutoGarrage] SET  READ_WRITE 
GO
