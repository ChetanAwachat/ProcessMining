USE [master]
GO
/****** Object:  Database [BPI_Challenge_Abia]    Script Date: 11/3/2020 4:25:46 PM ******/
CREATE DATABASE [BPI_Challenge_Abia]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'BPI_Challenge_Abia', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQL2017\MSSQL\DATA\BPI_Challenge_Abia.mdf' , SIZE = 729088KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'BPI_Challenge_Abia_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQL2017\MSSQL\DATA\BPI_Challenge_Abia_log.ldf' , SIZE = 1253376KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [BPI_Challenge_Abia] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BPI_Challenge_Abia].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BPI_Challenge_Abia] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [BPI_Challenge_Abia] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [BPI_Challenge_Abia] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [BPI_Challenge_Abia] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [BPI_Challenge_Abia] SET ARITHABORT OFF 
GO
ALTER DATABASE [BPI_Challenge_Abia] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [BPI_Challenge_Abia] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [BPI_Challenge_Abia] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [BPI_Challenge_Abia] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [BPI_Challenge_Abia] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [BPI_Challenge_Abia] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [BPI_Challenge_Abia] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [BPI_Challenge_Abia] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [BPI_Challenge_Abia] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [BPI_Challenge_Abia] SET  DISABLE_BROKER 
GO
ALTER DATABASE [BPI_Challenge_Abia] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [BPI_Challenge_Abia] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [BPI_Challenge_Abia] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [BPI_Challenge_Abia] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [BPI_Challenge_Abia] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [BPI_Challenge_Abia] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [BPI_Challenge_Abia] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [BPI_Challenge_Abia] SET RECOVERY FULL 
GO
ALTER DATABASE [BPI_Challenge_Abia] SET  MULTI_USER 
GO
ALTER DATABASE [BPI_Challenge_Abia] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [BPI_Challenge_Abia] SET DB_CHAINING OFF 
GO
ALTER DATABASE [BPI_Challenge_Abia] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [BPI_Challenge_Abia] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [BPI_Challenge_Abia] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'BPI_Challenge_Abia', N'ON'
GO
ALTER DATABASE [BPI_Challenge_Abia] SET QUERY_STORE = OFF
GO
USE [BPI_Challenge_Abia]
GO
/****** Object:  Table [dbo].[BPI_Challenge_V2]    Script Date: 11/3/2020 4:25:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BPI_Challenge_V2](
	[EventID] [bigint] NOT NULL,
	[ItemArea] [varchar](50) NULL,
	[Purchaser] [varchar](50) NULL,
	[POType] [varchar](50) NULL,
	[ItemAreaDesc] [varchar](50) NULL,
	[PODocID] [bigint] NOT NULL,
	[case Purch  Doc  Category name] [varchar](50) NULL,
	[VendorReceivedPO] [varchar](50) NULL,
	[ItemType] [varchar](50) NULL,
	[ItemPOProcess] [varchar](50) NULL,
	[ItemClass] [varchar](50) NULL,
	[case Source] [varchar](50) NULL,
	[Vendor] [varchar](50) NULL,
	[InvoiceAfterGR] [varchar](50) NULL,
	[ItemID] [int] NOT NULL,
	[POItemID] [varchar](50) NULL,
	[ThreeWayMatch] [varchar](50) NULL,
	[EventUser] [varchar](50) NULL,
	[event org resource] [varchar](50) NULL,
	[EventType] [varchar](50) NULL,
	[EventCumNetWoth] [int] NOT NULL,
	[Timestamp] [varchar](50) NULL,
	[Date] [date] NOT NULL,
	[Time] [time](7) NOT NULL,
	[InvoiceAfterGRValue] [bit] NOT NULL,
	[ThreeWayMatchValue] [bit] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Date]    Script Date: 11/3/2020 4:25:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Date](
	[DateKey] [int] NULL,
	[Date] [date] NULL,
	[Year No] [int] NULL,
	[Quarter Year No] [varchar](100) NULL,
	[Quarter Year Desc] [varchar](100) NULL,
	[Month Year No] [int] NULL,
	[Month Year Desc] [varchar](100) NULL,
	[Week Year No] [varchar](100) NULL,
	[Week Year Desc] [varchar](100) NULL,
	[Day of Month] [int] NULL,
	[Day Name Abbr] [varchar](100) NULL,
	[Day Name] [varchar](100) NULL,
	[Week Details] [varchar](100) NULL,
	[Day Name Order] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_EventType]    Script Date: 11/3/2020 4:25:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_EventType](
	[EventType] [varchar](50) NULL,
	[EventType_ID] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EventType_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_EventUser]    Script Date: 11/3/2020 4:25:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_EventUser](
	[EventUser] [varchar](50) NULL,
	[EventUser_ID] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[EventUser_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_InvoiceAfterGR]    Script Date: 11/3/2020 4:25:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_InvoiceAfterGR](
	[InvoiceAfterGR] [varchar](50) NULL,
	[InvoiceAfterGRValue] [bit] NOT NULL,
 CONSTRAINT [PK_InvoiceAfterGR] PRIMARY KEY CLUSTERED 
(
	[InvoiceAfterGRValue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Item]    Script Date: 11/3/2020 4:25:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Item](
	[ItemID] [int] NOT NULL,
	[ItemType] [varchar](50) NULL,
	[ItemPOProcess] [varchar](50) NULL,
	[Item_ID] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Item_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_PurchaseOrder]    Script Date: 11/3/2020 4:25:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_PurchaseOrder](
	[POType] [varchar](50) NULL,
	[PODocID] [bigint] NOT NULL,
	[PO_ID] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[PO_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Purchaser]    Script Date: 11/3/2020 4:25:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Purchaser](
	[Purchaser] [varchar](50) NULL,
	[Purchaser_ID] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Purchaser_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Spend]    Script Date: 11/3/2020 4:25:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Spend](
	[ItemArea] [varchar](50) NULL,
	[ItemAreaDesc] [varchar](50) NULL,
	[ItemClass] [varchar](50) NULL,
	[Spend_ID] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Spend_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_ThreeWayMatch]    Script Date: 11/3/2020 4:25:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_ThreeWayMatch](
	[ThreeWayMatch] [varchar](50) NULL,
	[ThreeWayMatchValue] [bit] NOT NULL,
 CONSTRAINT [PK_ThreeWayMatch] PRIMARY KEY CLUSTERED 
(
	[ThreeWayMatchValue] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Dim_Vendor]    Script Date: 11/3/2020 4:25:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Dim_Vendor](
	[Vendor] [varchar](50) NULL,
	[VendorReceivedPO] [varchar](50) NULL,
	[Vendor_ID] [int] IDENTITY(1,1) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Vendor_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DimTime]    Script Date: 11/3/2020 4:25:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DimTime](
	[TimeId] [int] IDENTITY(1,1) NOT NULL,
	[Time] [time](0) NULL,
	[Hour] [int] NULL,
	[Minute] [int] NULL,
	[MilitaryHour] [int] NOT NULL,
	[MilitaryMinute] [int] NOT NULL,
	[AMPM] [varchar](2) NOT NULL,
	[DayPartEN] [varchar](10) NULL,
	[DayPartNL] [varchar](10) NULL,
	[HourFromTo12] [varchar](17) NULL,
	[HourFromTo24] [varchar](13) NULL,
	[Notation12] [varchar](10) NULL,
	[Notation24] [varchar](10) NULL,
PRIMARY KEY CLUSTERED 
(
	[TimeId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Fact_Event]    Script Date: 11/3/2020 4:25:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Fact_Event](
	[EventID] [bigint] NOT NULL,
	[PO_ID] [int] NULL,
	[EventType_ID] [int] NULL,
	[Item_ID] [int] NULL,
	[Vendor_ID] [int] NULL,
	[EventUser_ID] [int] NULL,
	[Purchaser_ID] [int] NULL,
	[InvoiceAfterGRValue] [bit] NULL,
	[ThreeWayMatchValue] [bit] NULL,
	[Spend_ID] [int] NULL,
	[Date] [date] NOT NULL,
	[TimeId] [int] NULL,
	[EventCumNetWoth] [int] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[DimdateSP]    Script Date: 11/3/2020 4:25:47 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create Procedure [dbo].[DimdateSP]   
@StartDate Date ,   ------------------------MM-DD-YYYY    
@EndDate Date	----------------------------MM-DD-YYYY

--Example: Data from 01-jan-2014 to 31-dec-2014 
--@StartDate='01-01-2014' and @EndDate='12-31-2014'

As   
DECLARE @CurrDate DateTime   
SET @CurrDate= @StartDate
DECLARE @FinalYear Datetime   
SET @FinalYear = @EndDate

DECLARE @DateKey int
DECLARE @years VARCHAR(100)
DECLARE @QuarterNo VARCHAR(100)
DECLARE @QuarterDesc VARCHAR(100)
DECLARE @MonthNo INT
DECLARE @MonthDesc VARCHAR(100)
DECLARE @WeekNo VARCHAR(100)
DECLARE @WeekDesc VARCHAR(100)
DECLARE @FirstdayofWeek VARCHAR(100)
DECLARE @LastdayofWeek VARCHAR(100)
DECLARE @MonthDay INT
DECLARE @WeekDay VARCHAR(100)
DECLARE @WeekDetails VARCHAR(100)
DECLARE @weekfirstdate Date DECLARE @weekLastdate Date

declare @dim table(
[DateKey] [int] NULL,
	[Date] [datetime] NULL,
	[Year No] [int] NULL,
	[Quarter Year No] [varchar](100) NULL,
	[Quarter Year Desc] [varchar](100) NULL,
	[Month Year No] [int] NULL,
	[Month Year Desc] [varchar](100) NULL,
	[Week Year No] [varchar](100) NULL,
	[Week Year Desc] [varchar](100) NULL,
	[Day of Month] [int] NULL,
	[Day Name] [varchar](100) NULL,
	[Week Details] [varchar](100) NULL,
	[Day Name Order] [int] NULL,
	[Week First Date] Date null,
	[Week Last Date] Date null
	)

SET @DateKey=CONVERT(varchar, @CurrDate, 112)
set @years =DATEPART(YYYY,@CurrDate)  
SET @QuarterNo=DATEPART(Q,@CurrDate)
SET @MonthNo=CONVERT(varchar(6), @CurrDate, 112)
SET @MonthDesc=cast((DATENAME(month,@CurrDate))as varchar(3))+'-'+RIGHT(DATENAME(YEAR, @CurrDate),4)
SET @WeekNo=DatePart(week, @CurrDate)
SET @FirstdayofWeek=DATEPART(D,DATEADD(wk, DATEDIFF(wk, 7, @CurrDate), 6))

SET @LastdayofWeek=DATEPART(D,DATEADD(wk, DATEDIFF(wk, 6, @CurrDate), 6 + 6))
SET @WeekDesc = cast((DATENAME(month,@CurrDate))as varchar(3))+'-'+RIGHT(DATENAME(YEAR, @CurrDate),4)
SET @MonthDay =DATEPART(d,@CurrDate) 
SET @WeekDay = cast(datename(DW,DATEPART(DW,@CurrDate-2))as varchar(3))  
SET @weekfirstdate=convert(date,dateadd(week, datediff(week, 0, @CurrDate), -1))
SET @weekLastdate=convert(date,DATEADD(wk, DATEDIFF(wk, 6, @CurrDate), 6 + 6))


WHILE YEAR(@CurrDate)<= YEAR(@FinalYear)
BEGIN   
IF((@WeekDay='Sat') or(@WeekDay='Sun'))   
SET @WeekDetails='Week Ends' 
ELSE   
SET @WeekDetails='Week Days'  
  
If DATEPART(Q,@CurrDate) = 1  
begin  
set @QuarterDesc='Jan-Mar'+' '+RIGHT(DATENAME(YEAR, @CurrDate),4)
end  
If DATEPART(Q,@CurrDate) = 2  
begin  
set @QuarterDesc='Apr-Jun'+' '+RIGHT(DATENAME(YEAR, @CurrDate),4)
end  
If DATEPART(Q,@CurrDate) = 3  
begin  
set @QuarterDesc='Jul-Sep' +' '+RIGHT(DATENAME(YEAR, @CurrDate),4)
end  
If DATEPART(Q,@CurrDate) = 4  
begin  
set @QuarterDesc='Oct-Dec'+' '+RIGHT(DATENAME(YEAR, @CurrDate),4)
end  

	IF MONTH(@weekfirstdate)>MONTH(@weekLastdate) and Year(@weekfirstdate)=Year(@CurrDate) 
	BEGIN
			if day(@weekfirstdate)>day(@weekLastdate)
			begin
			set @LastdayofWeek=datepart(d,CONVERT(date,DATEADD(dd,-(DAY(DATEADD(mm,1,@weekfirstdate))),DATEADD(mm,1,@weekfirstdate)),101))
			end
			else
			set @FirstdayofWeek=datepart(d,CONVERT(date,DATEADD(dd,-(DAY(@weekLastdate)-1),@weekLastdate),101))
	END
	else if MONTH(@weekfirstdate)>MONTH(@weekLastdate) and Year(@weekfirstdate)<Year(@CurrDate)
	BEGIN
			if day(@weekfirstdate)>day(@weekLastdate)
			begin
			set @FirstdayofWeek=datepart(d,CONVERT(date,DATEADD(dd,-(DAY(@weekLastdate)-1),@weekLastdate),101))
			end
	END
	else if Year(@weekfirstdate)=Year(@weekLastdate) and Month(@weekfirstdate)<Month(@weekLastdate) and Month(@CurrDate)=month(@weekLastdate)
	begin
	set @FirstdayofWeek=datepart(d,CONVERT(date,DATEADD(dd,-(DAY(@weekLastdate)-1),@weekLastdate),101))
	end
	else if Year(@weekfirstdate)=Year(@weekLastdate) and Month(@weekfirstdate)<Month(@weekLastdate) and Month(@CurrDate)<month(@weekLastdate)
	begin
	set @LastdayofWeek=datepart(d,CONVERT(date,DATEADD(dd,-(DAY(DATEADD(mm,1,@weekfirstdate))),DATEADD(mm,1,@weekfirstdate)),101))
	end




IF (@CurrDate>@FinalYear)  
BEGIN   
BREAK   
END 

INSERT into @dim 
Values(@DateKey,@CurrDate,@years,@years+''+@QuarterNo,@QuarterDesc,@MonthNo,@MonthDesc,@years+''+@WeekNo,
'WK ('+@FirstdayofWeek+'-'+@LastdayofWeek+')/'+@WeekDesc,@MonthDay,@WeekDay,@WeekDetails,'',@weekfirstdate,@weekLastdate)   
 
   
SET @CurrDate = DATEADD(d,1,@CurrDate)   
SET @DateKey=CONVERT(varchar, @CurrDate, 112)
set @years =DATEPART(YYYY,@CurrDate)  
SET @QuarterNo=DATEPART(Q,@CurrDate)
SET @MonthNo=CONVERT(varchar(6), @CurrDate, 112)
SET @MonthDesc=cast((DATENAME(month,@CurrDate))as varchar(3))+'-'+RIGHT(DATENAME(YEAR, @CurrDate),4)
SET @WeekNo=DatePart(week, @CurrDate)
SET @FirstdayofWeek=DATEPART(D,DATEADD(wk, DATEDIFF(wk, 7, @CurrDate), 6))

SET @LastdayofWeek=DATEPART(D,DATEADD(wk, DATEDIFF(wk, 6, @CurrDate), 6 + 6))
SET @WeekDesc = cast((DATENAME(month,@CurrDate))as varchar(3))+'-'+RIGHT(DATENAME(YEAR, @CurrDate),4)
SET @MonthDay =DATEPART(d,@CurrDate) 
SET @WeekDay = cast(datename(DW,DATEPART(DW,@CurrDate-2))as varchar(3))  
SET @weekfirstdate=convert(date,dateadd(week, datediff(week, 0, @CurrDate), -1))
SET @weekLastdate=convert(date,DATEADD(wk, DATEDIFF(wk, 6, @CurrDate), 6 + 6))

	IF MONTH(@weekfirstdate)>MONTH(@weekLastdate) and Year(@weekfirstdate)=Year(@CurrDate) 
	BEGIN
			if day(@weekfirstdate)>day(@weekLastdate)
			begin
			set @LastdayofWeek=datepart(d,CONVERT(date,DATEADD(dd,-(DAY(DATEADD(mm,1,@weekfirstdate))),DATEADD(mm,1,@weekfirstdate)),101))
			end
			else
			set @FirstdayofWeek=datepart(d,CONVERT(date,DATEADD(dd,-(DAY(@weekLastdate)-1),@weekLastdate),101))
	END
	else if MONTH(@weekfirstdate)>MONTH(@weekLastdate) and Year(@weekfirstdate)<Year(@CurrDate)
	BEGIN
			if day(@weekfirstdate)>day(@weekLastdate)
			begin
			set @FirstdayofWeek=datepart(d,CONVERT(date,DATEADD(dd,-(DAY(@weekLastdate)-1),@weekLastdate),101))
			end
	END
	else if Year(@weekfirstdate)=Year(@weekLastdate) and Month(@weekfirstdate)<Month(@weekLastdate) and Month(@CurrDate)=month(@weekLastdate)
	begin
	set @FirstdayofWeek=datepart(d,CONVERT(date,DATEADD(dd,-(DAY(@weekLastdate)-1),@weekLastdate),101))
	end
	else if Year(@weekfirstdate)=Year(@weekLastdate) and Month(@weekfirstdate)<Month(@weekLastdate) and Month(@CurrDate)<month(@weekLastdate)
	begin
	set @LastdayofWeek=datepart(d,CONVERT(date,DATEADD(dd,-(DAY(DATEADD(mm,1,@weekfirstdate))),DATEADD(mm,1,@weekfirstdate)),101))
	end

UPDATE @dim SET [Day Name Order]=1 WHERE [Day Name]='Mon'
UPDATE @dim SET [Day Name Order]=2 WHERE [Day Name]='Tue'
UPDATE @dim SET [Day Name Order]=3 WHERE [Day Name]='Wed'
UPDATE @dim SET [Day Name Order]=4 WHERE [Day Name]='Thu'
UPDATE @dim SET [Day Name Order]=5 WHERE [Day Name]='Fri'
UPDATE @dim SET [Day Name Order]=6 WHERE [Day Name]='Sat'
UPDATE @dim SET [Day Name Order]=7 WHERE [Day Name]='Sun'


END 
INSERT INTO Dim_Date
([DateKey],[Date],[Year No],[Quarter Year No],[Quarter Year Desc],[Month Year No],[Month Year Desc],[Week Year No]
      ,[Week Year Desc],[Day of Month],[Day Name],[Week Details],[Day Name Order])
select [DateKey],[Date],[Year No],[Quarter Year No],[Quarter Year Desc],[Month Year No],[Month Year Desc],[Week Year No]
      ,[Week Year Desc],[Day of Month],[Day Name],[Week Details],[Day Name Order] from @dim
GO
USE [master]
GO
ALTER DATABASE [BPI_Challenge_Abia] SET  READ_WRITE 
GO
