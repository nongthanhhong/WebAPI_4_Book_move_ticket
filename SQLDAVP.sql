create database QLVePhim

use QLVePhim

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO


create TABLE [dbo].[movies](
	[movieid] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[title] [nvarchar](250) NULL,
	[poster] [nvarchar](50) NULL,
	[description] [nvarchar](max) NULL,
	[showday] [nvarchar](20) NULL,
	[rating] [nvarchar](20) NULL,
	[length] [nvarchar](20) NULL,
	
	[director] [nvarchar](50) NULL,
	[language] [nvarchar](50) NULL,
	[genre] [nvarchar](20) NULL,
	[price][int] NULL
	)

SET IDENTITY_INSERT [dbo].[movies] ON 

INSERT [dbo].[movies] ([movieid], [title],[poster],[description],[showday],[rating],[length],[director],[language],[genre],[price]) values (1,
N'Fast and Furious 6',N'FastFurious6.jfif',N'Phim hay lắm',N'11/12/2021',N'9.5/10',N'120 phút',
N'Justin Lin',N'Phụ đề tiếng Việt',N'Hành động, Bom tấn',65000)
INSERT [dbo].[movies] ([movieid], [title],[poster],[description],[showday],[rating],[length],[director],[language],[genre],[price]) values (2,
N'Doraemon',N'Doremon.jpg',N'Phim hay lắm',N'11/12/2021',N'9.5/10',N'120 phút',
N'JFujiko F. Fujio',N'Phụ đề tiếng Việt',N'Hoạt hình, Thiếu nhi',65000)

SET IDENTITY_INSERT [dbo].[movies] OFF

update [dbo].[movies] set [poster] = N'FastFurious9.jfif' where [movieid] = 1


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetMovies]
as
select * from movies
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create table [dbo].[theaters](
[theaterid] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
[theatername] [nvarchar](100) NULL,
[theaterimg] [nvarchar](100) NULL,
[theateraddr] [nvarchar](250) NULL,
[theaterphone] [nvarchar](20) NULL
)

SET IDENTITY_INSERT [dbo].[movies] ON 

INSERT [dbo].[theaters] ([theaterid], [theatername],[theaterimg],[theateraddr],[theaterphone]) values (1,
N'Cinestar Huế', N'cineHue.jfif', N'25b Hai Bà Trung, Vĩnh Ninh, Thành phố Huế, Thừa Thiên Huế', N'01234567890')


SET IDENTITY_INSERT [dbo].[movies] OFF

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetTheaters]
as
select * from theaters
GO

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create table [dbo].[news](
[newsid] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
[newstitle] [nvarchar](100) NULL,
[newsimg] [nvarchar](100) NULL,
[newscontent] [nvarchar](max) NULL,
[newsauthor] [nvarchar](30) NULL
)

SET IDENTITY_INSERT [dbo].[news] ON 

INSERT [dbo].[news] ([newsid], [newstitle],[newsimg],[newscontent],[newsauthor]) values (1,
N'Cinestar Huế', N'cineHue.jfif', N'25b Hai Bà Trung, Vĩnh Ninh, Thành phố Huế, Thừa Thiên Huếdasdasdasddasdasdasdsdasdasdasddsfdsf
dsfdsfsdfdsfdsfsdvsdvdfvdfvdfvdfvfdvv
dfvdfvfvfdvfsdddasdadasdasxsaccdsvdsf
sdfdsfsdf
dfs', N'01234567890')


SET IDENTITY_INSERT [dbo].[news] OFF

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[GetNews]
as
select * from news
GO


SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create TABLE [dbo].[user](
	[userid] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[userfullname] [nvarchar](50) NULL,
	[userphone] [nvarchar](20) UNIQUE NULL,
	[usermail] [nvarchar](50) UNIQUE NULL,
	[username] [nvarchar](250) UNIQUE NULL,
	[userpassword] [varchar](32) NULL	
	)

	create proc [dbo].[GetUsers]
as
select * from [dbo].[user]
GO

	select * from [dbo].[user]

	select [username],[userpassword] from [dbo].[user] where username = 'datfeed' and userpassword = '123'

SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create TABLE [dbo].[booking](
	[bookingid] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[bookingmovie] [nvarchar](250) NULL,
	[bookingtheater] [nvarchar](100) NULL,
	[bookingtime] [nvarchar](100) NULL,
	[bookingseat] [nvarchar](20) NULL
	)

select * from [dbo].[booking]

create TABLE [dbo].[voucher](
	[voucherid] [int] PRIMARY KEY IDENTITY(1,1) NOT NULL,
	[vouchername] [nvarchar](250) NULL,
	[voucherimg] [nvarchar](100) NULL
	)
create proc [dbo].[GetVouchers]
as
select * from [dbo].[voucher]
GO

INSERT [dbo].[voucher] ( [vouchername], voucherimg) values (N'CTEN - XEM PHIM CHỉ 45K LÚC 10H', N'Cten.jpg')

