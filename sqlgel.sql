USE [sqlgeass]
GO
/****** Object:  UserDefinedFunction [dbo].[Get_StrArrayStrOfIndex]    Script Date: 11/03/2016 14:20:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[Get_StrArrayStrOfIndex]
(
  @str varchar(5000),  --要分割的字符串
  @split varchar(10),  --分隔符号
  @index int --取第几个元素
)
returns varchar(5000)
as
begin
  declare @location int
  declare @start int
  declare @next int
  declare @seed int

  set @str=ltrim(rtrim(@str))
  set @start=1
  set @next=1
  set @seed=len(@split)
  
  set @location=charindex(@split,@str)
  while @location<>0 and @index>@next
  begin
    set @start=@location+@seed
    set @location=charindex(@split,@str,@start)
    set @next=@next+1
  end
  if @location =0 select @location =len(@str)+1 
  return substring(@str,@start,@location-@start)
end
GO
/****** Object:  UserDefinedFunction [dbo].[Get_StrArrayLength]    Script Date: 11/03/2016 14:20:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create function [dbo].[Get_StrArrayLength]
(
  @str varchar(5000),  --要分割的字符串
  @split varchar(10)  --分隔符号
)
returns int
as
begin
  declare @location int
  declare @start int
  declare @length int

  set @str=ltrim(rtrim(@str))
  set @location=charindex(@split,@str)
  set @length=1
  while @location<>0
  begin
    set @start=@location+1
    set @location=charindex(@split,@str,@start)
    set @length=@length+1
  end
  return @length
end
GO
/****** Object:  Table [dbo].[FCLuckyResult]    Script Date: 11/03/2016 14:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FCLuckyResult](
	[ObjId] [varchar](50) NOT NULL,
	[ObjName] [int] IDENTITY(1,1) NOT NULL,
	[FCNum] [varchar](15) NOT NULL,
	[FCLuckyNum] [varchar](200) NOT NULL,
	[FCLuckFly] [varchar](10) NOT NULL,
	[FCLotteryTime] [varchar](25) NOT NULL,
	[First] [varchar](10) NULL,
	[Second] [varchar](10) NULL,
	[Thread] [varchar](10) NULL,
	[Result] [varchar](10) NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreateUser] [varchar](20) NOT NULL,
 CONSTRAINT [PK_FCLuckyResult] PRIMARY KEY CLUSTERED 
(
	[FCNum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[FCLuckyResult] ON
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'2A3FE1E5-E43F-431C-83F5-AA7C5EC939BF', 1, N'787355', N'1', N'02', N'2016-10-19 09:55', N'1', N'0', N'0', N'1', CAST(0x0000A6A400A30E45 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'9AB08460-4C0D-4A3E-BF34-6ACBFE728B9D', 2, N'787356', N'26', N'02', N'2016-10-19 10:00', N'9', N'9', N'8', N'26', CAST(0x0000A6A400A46DDC AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'E34C1172-6A37-43A1-9D24-039EF67B9A38', 3, N'787357', N'17', N'02', N'2016-10-19 10:05', N'5', N'6', N'6', N'17', CAST(0x0000A6A400A5CD65 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'4B70BB2A-4210-4C55-96A0-654430ACF617', 4, N'787358', N'18', N'02', N'2016-10-19 10:10', N'4', N'5', N'9', N'18', CAST(0x0000A6A400A72CF8 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'218436B8-F3CB-4309-8846-97FA0E1A8ABA', 5, N'787359', N'23', N'02', N'2016-10-19 10:15', N'9', N'7', N'7', N'23', CAST(0x0000A6A400A88C89 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'0C302EC1-3E6C-4483-9B38-DFF6F62616AA', 6, N'787360', N'26', N'02', N'2016-10-19 10:20', N'8', N'9', N'9', N'26', CAST(0x0000A6A400A9EC21 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'B85DD794-D0E5-493C-87A9-0A7616B155B3', 7, N'787801', N'15', N'02', N'2016-10-21 17:15', N'9', N'4', N'2', N'15', CAST(0x0000A6A6011BF384 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'DA1D50AF-9C4A-45D9-A70C-F8AB49C8714B', 8, N'787802', N'7', N'02', N'2016-10-21 17:20', N'0', N'7', N'0', N'7', CAST(0x0000A6A6011D475B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'37D1CB3D-E1DC-477B-A4CE-E2DE8669AFB9', 9, N'787803', N'26', N'02', N'2016-10-21 17:25', N'8', N'9', N'9', N'26', CAST(0x0000A6A6011EA6E3 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'7CC1C452-1993-4137-90DE-A88D04113EF9', 10, N'787804', N'20', N'02', N'2016-10-21 17:30', N'6', N'8', N'6', N'20', CAST(0x0000A6A601200674 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C8A3F533-56DF-4387-B11C-8B91A3E1B1C8', 11, N'787805', N'9', N'02', N'2016-10-21 17:35', N'2', N'7', N'0', N'9', CAST(0x0000A6A601216607 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'6E3852A3-9123-4FBB-BDBA-C1A9E8AD4005', 12, N'787806', N'21', N'02', N'2016-10-21 17:40', N'9', N'3', N'9', N'21', CAST(0x0000A6A60122C598 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'33968211-5836-4855-9E79-36C483AA3D8C', 13, N'787807', N'17', N'02', N'2016-10-21 17:45', N'6', N'5', N'6', N'17', CAST(0x0000A6A601242526 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'026D1623-22A3-4632-BD20-0953DCFC42AA', 14, N'787808', N'7', N'02', N'2016-10-21 17:50', N'6', N'0', N'1', N'7', CAST(0x0000A6A6012584CA AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'4467925A-B5F1-4242-A7AA-B07CBD739E15', 15, N'787809', N'17', N'02', N'2016-10-21 17:55', N'1', N'8', N'8', N'17', CAST(0x0000A6A60126E445 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'13221197-69E0-4E29-BD80-C565DD1E7C15', 16, N'787810', N'27', N'02', N'2016-10-21 18:00', N'9', N'9', N'9', N'27', CAST(0x0000A6A6012843D6 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C55D57D6-C032-44B4-AA8C-CF398FCC45C6', 17, N'787811', N'7', N'02', N'2016-10-21 18:05', N'0', N'5', N'2', N'7', CAST(0x0000A6A60129A37A AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'724A866D-597F-4A62-937C-CC26EA1BD6F3', 18, N'787812', N'1', N'02', N'2016-10-21 18:10', N'0', N'0', N'1', N'1', CAST(0x0000A6A6012B02F3 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'4541D656-9113-4105-9274-759F2AE882E8', 19, N'787813', N'10', N'02', N'2016-10-21 18:15', N'1', N'5', N'4', N'10', CAST(0x0000A6A6012C6289 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'21DE1654-391A-48D7-A012-D7EE790D9311', 20, N'787814', N'12', N'02', N'2016-10-21 18:20', N'6', N'0', N'6', N'12', CAST(0x0000A6A6012DC218 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'83DF7497-DAB7-47B2-8E35-1D99CF541754', 21, N'787815', N'23', N'02', N'2016-10-21 18:25', N'8', N'6', N'9', N'23', CAST(0x0000A6A6012F21B0 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'17782FD1-8267-4C25-8ADD-F5285E44EE37', 22, N'787816', N'9', N'02', N'2016-10-21 18:30', N'3', N'6', N'0', N'9', CAST(0x0000A6A60130813B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'DAD587FD-8A80-427F-A5F6-DC8A3FE79C2D', 23, N'787817', N'2', N'02', N'2016-10-21 18:35', N'0', N'1', N'1', N'2', CAST(0x0000A6A60131E0C4 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'D0C91EE1-600A-463F-A6A8-4120A79AB40D', 24, N'787818', N'20', N'02', N'2016-10-21 18:40', N'5', N'9', N'6', N'20', CAST(0x0000A6A60133405F AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'29CAF3CE-C076-46E4-A219-103BE389D75A', 25, N'787883', N'3', N'02', N'2016-10-22 09:10', N'2', N'0', N'1', N'3', CAST(0x0000A6A70096B23B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'FEAAE58C-531E-42DC-8020-0A3BA61CC1C5', 26, N'787884', N'14', N'02', N'2016-10-22 09:15', N'2', N'6', N'6', N'14', CAST(0x0000A6A7009811C8 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'2F8B5B52-FDF4-4060-B489-A8AE3103823B', 27, N'787885', N'10', N'02', N'2016-10-22 09:20', N'5', N'5', N'0', N'10', CAST(0x0000A6A700997157 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C2037B5E-68EF-4B75-B3EC-13A3B909D5FB', 28, N'787886', N'23', N'02', N'2016-10-22 09:25', N'8', N'7', N'8', N'23', CAST(0x0000A6A7009AD0F1 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'E9E4256F-D715-4BAA-9885-39CD7A558E0B', 29, N'787887', N'15', N'02', N'2016-10-22 09:30', N'6', N'5', N'4', N'15', CAST(0x0000A6A7009C3079 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'0B81E56D-B8F5-456B-B08D-8B5FA6034E9E', 30, N'787888', N'6', N'02', N'2016-10-22 09:35', N'1', N'3', N'2', N'6', CAST(0x0000A6A7009D9017 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'CA872E21-8999-4C61-AD80-3A6994A77CFE', 31, N'787889', N'10', N'02', N'2016-10-22 09:40', N'0', N'9', N'1', N'10', CAST(0x0000A6A7009EEF9E AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'5004CDAA-3026-4484-A4C8-AB4506311E2B', 32, N'787890', N'13', N'02', N'2016-10-22 09:45', N'3', N'2', N'8', N'13', CAST(0x0000A6A700A04F2B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'D9ACBE8A-9F76-417A-A85B-89425792BA3C', 33, N'787891', N'7', N'02', N'2016-10-22 09:50', N'4', N'2', N'1', N'7', CAST(0x0000A6A700A1AEC9 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'98844B58-86AA-4900-963C-055C02BAB97E', 34, N'787892', N'4', N'02', N'2016-10-22 09:55', N'3', N'1', N'0', N'4', CAST(0x0000A6A700A30E57 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'4816F5E6-F9FE-465D-98C9-2D2D4B6A912C', 35, N'787893', N'13', N'02', N'2016-10-22 10:00', N'5', N'6', N'2', N'13', CAST(0x0000A6A700A46DE7 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'6056E243-E801-4EA6-B794-EE352CF880BF', 36, N'787894', N'21', N'02', N'2016-10-22 10:05', N'9', N'3', N'9', N'21', CAST(0x0000A6A700A5CD78 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'8F3F6290-40FE-4051-85C5-2EFE031EAFEE', 37, N'787895', N'3', N'02', N'2016-10-22 10:10', N'0', N'3', N'0', N'3', CAST(0x0000A6A700A72CFA AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'3D93DC34-1502-42A6-8222-2DABF3481706', 38, N'787896', N'15', N'02', N'2016-10-22 10:15', N'6', N'4', N'5', N'15', CAST(0x0000A6A700A88C8B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'EE697F73-DFAE-4F4E-A2DD-163CE2111462', 39, N'787897', N'8', N'02', N'2016-10-22 10:20', N'0', N'5', N'3', N'8', CAST(0x0000A6A700A9EC26 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'D1CC0A6B-58DB-4816-A1C9-D8673CE116E5', 40, N'787898', N'11', N'02', N'2016-10-22 10:25', N'3', N'4', N'4', N'11', CAST(0x0000A6A700AB4BA9 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'9BDE00E5-F1D4-42C7-8AFD-AB292B1CCE66', 41, N'787899', N'4', N'02', N'2016-10-22 10:30', N'3', N'0', N'1', N'4', CAST(0x0000A6A700ACAB3A AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'94C67C3E-8927-4290-8ECE-89CDEAB12393', 42, N'787900', N'1', N'02', N'2016-10-22 10:35', N'0', N'1', N'0', N'1', CAST(0x0000A6A700AE0AC9 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'3F85DB1E-CA8A-47A4-ADE0-D4E226BDC333', 43, N'787901', N'3', N'02', N'2016-10-22 10:40', N'0', N'2', N'1', N'3', CAST(0x0000A6A700AF6A5B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'0BCB6F5C-BF03-4574-B98D-BCAF0C67F52C', 44, N'787902', N'8', N'02', N'2016-10-22 10:45', N'4', N'4', N'0', N'8', CAST(0x0000A6A700B0C9EF AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'EFBB3048-DA76-46D9-A71A-782CB52EEB92', 45, N'787903', N'2', N'02', N'2016-10-22 10:50', N'0', N'1', N'1', N'2', CAST(0x0000A6A700B22980 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'93E6C9BB-3A13-4A6A-835C-9116050C8D27', 46, N'787904', N'4', N'02', N'2016-10-22 10:55', N'3', N'0', N'1', N'4', CAST(0x0000A6A700B38913 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'24326273-B2A4-40EA-9283-A75532692A46', 47, N'787905', N'27', N'02', N'2016-10-22 11:00', N'9', N'9', N'9', N'27', CAST(0x0000A6A700B4E89B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'B5774AAB-87D1-46AC-89AB-8594FD34B682', 48, N'787906', N'24', N'02', N'2016-10-22 11:05', N'6', N'9', N'9', N'24', CAST(0x0000A6A700B6482B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'F5A8F21C-6F67-4D53-880A-F6FCD6F417EF', 49, N'787907', N'9', N'02', N'2016-10-22 11:10', N'4', N'0', N'5', N'9', CAST(0x0000A6A700B7A7B9 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'7507660A-F99A-49A0-946B-2AFC50FF36A9', 50, N'787908', N'14', N'02', N'2016-10-22 11:15', N'1', N'5', N'8', N'14', CAST(0x0000A6A700B90749 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C6A2F6E3-ED9D-4452-BB9D-8DA20B741EA4', 51, N'787909', N'21', N'02', N'2016-10-22 11:20', N'6', N'8', N'7', N'21', CAST(0x0000A6A700BA66E3 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'BCF5EB83-9D1B-45F2-B508-9EB9E8287A24', 52, N'787910', N'2', N'02', N'2016-10-22 11:25', N'0', N'2', N'0', N'2', CAST(0x0000A6A700BBC665 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'821356FC-A171-4255-881A-4751AA7974DE', 53, N'787911', N'12', N'02', N'2016-10-22 11:30', N'9', N'0', N'3', N'12', CAST(0x0000A6A700BD25F5 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'67E42BF3-BF8B-45E7-BEE9-1EA3125100BF', 54, N'787912', N'10', N'02', N'2016-10-22 11:35', N'4', N'6', N'0', N'10', CAST(0x0000A6A700BE8587 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'6419E02A-6AC6-489B-B137-4AA3C9EFA817', 55, N'787913', N'21', N'02', N'2016-10-22 11:40', N'9', N'7', N'5', N'21', CAST(0x0000A6A700BFE52E AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'7982C74D-80A6-46BE-A536-56B6EBDBF731', 56, N'787914', N'21', N'02', N'2016-10-22 11:45', N'9', N'3', N'9', N'21', CAST(0x0000A6A700C144AD AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C53130D2-B36D-4F67-9C99-241266E3F67C', 57, N'787915', N'12', N'02', N'2016-10-22 11:50', N'5', N'0', N'7', N'12', CAST(0x0000A6A700C2A43C AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A0914577-8F95-41D7-A236-4DEF46719C60', 58, N'787916', N'14', N'02', N'2016-10-22 11:55', N'7', N'2', N'5', N'14', CAST(0x0000A6A700C403CA AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'86991178-AF03-4D31-AEEE-83A25C602FA4', 59, N'787917', N'2', N'02', N'2016-10-22 12:00', N'0', N'1', N'1', N'2', CAST(0x0000A6A700C56358 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'B72C5A6A-D706-48E3-B30D-ABCFF3F69654', 60, N'787918', N'22', N'02', N'2016-10-22 12:05', N'6', N'9', N'7', N'22', CAST(0x0000A6A700C6C2EF AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C15ABD14-6593-48F8-8B9C-C8AB403041FB', 61, N'787919', N'17', N'02', N'2016-10-22 12:10', N'5', N'3', N'9', N'17', CAST(0x0000A6A700C8228D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'483DD80C-95E9-42F5-A6D6-D68E11A8B26C', 62, N'787920', N'9', N'02', N'2016-10-22 12:15', N'0', N'8', N'1', N'9', CAST(0x0000A6A700C98207 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'057CB392-596D-48B9-B11E-47700C1AD009', 63, N'787921', N'17', N'02', N'2016-10-22 12:20', N'6', N'8', N'3', N'17', CAST(0x0000A6A700CAE19B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'0FB97050-9DAE-4452-B763-DE33DAE848B3', 64, N'787922', N'12', N'02', N'2016-10-22 12:25', N'4', N'5', N'3', N'12', CAST(0x0000A6A700CC412E AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'7DD3C938-7D73-4C90-9738-B92D764F0AFF', 65, N'788420', N'26', N'02', N'2016-10-25 09:10', N'9', N'9', N'8', N'26', CAST(0x0000A6AA0096B232 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'573AEAF9-4AD3-437A-9EDE-EFB8E97AFDCB', 66, N'788421', N'21', N'02', N'2016-10-25 09:15', N'4', N'8', N'9', N'21', CAST(0x0000A6AA009811C6 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'291199C8-CC41-48D1-908D-65B265D5F22D', 67, N'788422', N'19', N'02', N'2016-10-25 09:20', N'9', N'6', N'4', N'19', CAST(0x0000A6AA00997156 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'775A3C89-0A4A-4C8F-953B-FE2FD3F56025', 68, N'788423', N'11', N'02', N'2016-10-25 09:25', N'2', N'6', N'3', N'11', CAST(0x0000A6AA009AD0E9 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'4BF24F25-4FE5-4BF7-880A-044629E87189', 69, N'788424', N'6', N'02', N'2016-10-25 09:30', N'6', N'0', N'0', N'6', CAST(0x0000A6AA009C3075 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A94BD4BE-DE40-4E71-9DC9-AE050DF5A022', 70, N'788425', N'3', N'02', N'2016-10-25 09:35', N'3', N'0', N'0', N'3', CAST(0x0000A6AA009D900D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'0124D4F4-0FBE-4831-9CA6-544193D26592', 71, N'788426', N'20', N'02', N'2016-10-25 09:40', N'7', N'4', N'9', N'20', CAST(0x0000A6AA009EEF93 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C1C19C11-6EFB-4689-99A7-5B3B9E654036', 72, N'788427', N'9', N'02', N'2016-10-25 09:45', N'2', N'3', N'4', N'9', CAST(0x0000A6AA00A04F28 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'753BFE81-17BA-4E90-8F96-E5A43F04ECC7', 73, N'788428', N'13', N'02', N'2016-10-25 09:50', N'4', N'8', N'1', N'13', CAST(0x0000A6AA00A1AEB8 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'899F303B-AEC2-4F6E-826B-79F3369C1C20', 74, N'788429', N'3', N'02', N'2016-10-25 09:55', N'0', N'1', N'2', N'3', CAST(0x0000A6AA00A30E4A AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C2FCD3AE-B6A9-4715-8100-7E4156536722', 75, N'788430', N'23', N'02', N'2016-10-25 10:00', N'9', N'6', N'8', N'23', CAST(0x0000A6AA00A46DD5 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'53B04026-911C-4AEA-8923-3F9E799BDDE3', 76, N'788431', N'16', N'02', N'2016-10-25 10:05', N'8', N'2', N'6', N'16', CAST(0x0000A6AA00A5CD62 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'0298995A-2C7C-471E-BAEE-4175FDC77B53', 77, N'788432', N'6', N'02', N'2016-10-25 10:10', N'2', N'2', N'2', N'6', CAST(0x0000A6AA00A72D00 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'9F0C6CC4-9FDD-43F2-B43E-03ED5AAA90F6', 78, N'788433', N'24', N'02', N'2016-10-25 10:15', N'8', N'7', N'9', N'24', CAST(0x0000A6AA00A88C88 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'703BE5C4-0F86-43D7-9B98-634C853CF3F2', 79, N'788434', N'26', N'02', N'2016-10-25 10:20', N'9', N'8', N'9', N'26', CAST(0x0000A6AA00A9EC16 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'EE738666-9B2D-498E-9E2B-1A22DECE03E8', 80, N'788435', N'20', N'02', N'2016-10-25 10:25', N'8', N'9', N'3', N'20', CAST(0x0000A6AA00AB4BDD AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'68828F25-E05C-4E6A-94FE-E6F0DD6146E7', 81, N'788436', N'17', N'02', N'2016-10-25 10:30', N'7', N'6', N'4', N'17', CAST(0x0000A6AA00ACAB38 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'CDCDD10C-7E2E-47C8-A7A8-DC8C09F44932', 82, N'788437', N'6', N'02', N'2016-10-25 10:35', N'1', N'1', N'4', N'6', CAST(0x0000A6AA00AE0AC7 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'AF531DE9-5D04-4B13-AC65-58B430238536', 83, N'788438', N'21', N'02', N'2016-10-25 10:40', N'9', N'4', N'8', N'21', CAST(0x0000A6AA00AF6A64 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'BF34BD36-3E16-49B0-8D41-71CAB889C77E', 84, N'788439', N'5', N'02', N'2016-10-25 10:45', N'0', N'5', N'0', N'5', CAST(0x0000A6AA00B0C9E3 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'CBCF6ECA-D8A0-43E5-9AB9-3E25ACACD41C', 85, N'788440', N'13', N'02', N'2016-10-25 10:50', N'8', N'5', N'0', N'13', CAST(0x0000A6AA00B2297C AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'F077D5AC-BA57-4913-B1E7-E97EFD7B9996', 86, N'788441', N'5', N'02', N'2016-10-25 10:55', N'3', N'1', N'1', N'5', CAST(0x0000A6AA00B3891D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'340FCE28-57DC-486C-87EE-973A8052C26C', 87, N'788442', N'15', N'02', N'2016-10-25 11:00', N'0', N'9', N'6', N'15', CAST(0x0000A6AA00B4E89A AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A7A0CD37-2A88-498A-80FE-407FD27A4C36', 88, N'788443', N'23', N'02', N'2016-10-25 11:05', N'8', N'8', N'7', N'23', CAST(0x0000A6AA00B6482B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'039AD6B8-CAA2-4D4C-91A1-C535A7C055AE', 89, N'788444', N'12', N'02', N'2016-10-25 11:10', N'0', N'3', N'9', N'12', CAST(0x0000A6AA00B7A7BA AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C6039DD8-BF2F-4FCD-820E-1871B5F95F07', 90, N'788445', N'10', N'02', N'2016-10-25 11:15', N'2', N'5', N'3', N'10', CAST(0x0000A6AA00B90756 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'0990CBB4-0CAA-4E97-9025-BC3E25B9C0A4', 91, N'788446', N'25', N'02', N'2016-10-25 11:20', N'8', N'8', N'9', N'25', CAST(0x0000A6AA00BA66DE AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'9C542D42-B013-417C-9AD8-3CB34FF7FD74', 92, N'788447', N'16', N'02', N'2016-10-25 11:25', N'5', N'2', N'9', N'16', CAST(0x0000A6AA00BBC669 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'CC0407D6-5CF5-437F-9922-CAD5FE0DFE07', 93, N'788448', N'27', N'02', N'2016-10-25 11:30', N'9', N'9', N'9', N'27', CAST(0x0000A6AA00BD25FB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'508FA29E-EF55-404B-B728-1D85544F3BAA', 94, N'788449', N'22', N'02', N'2016-10-25 11:35', N'9', N'7', N'6', N'22', CAST(0x0000A6AA00BE8588 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'13153719-F1C2-4EB5-9092-C4C93E0E57E9', 95, N'788450', N'10', N'02', N'2016-10-25 11:40', N'5', N'0', N'5', N'10', CAST(0x0000A6AA00BFE52A AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A3C25429-3BC4-4672-BB13-58428EA6B0AE', 96, N'788451', N'19', N'02', N'2016-10-25 11:45', N'5', N'6', N'8', N'19', CAST(0x0000A6AA00C144B9 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'51F312E2-7A71-4CEA-A541-EFA6DE3CE509', 97, N'788452', N'14', N'02', N'2016-10-25 11:50', N'8', N'1', N'5', N'14', CAST(0x0000A6AA00C2A43D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'6112A86A-28DF-4D41-A747-F85AAE2DBFD4', 98, N'788453', N'14', N'02', N'2016-10-25 11:55', N'6', N'3', N'5', N'14', CAST(0x0000A6AA00C403C5 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'7F3AD26B-FB21-43D6-9A62-898360E8C7B3', 99, N'788454', N'21', N'02', N'2016-10-25 12:00', N'7', N'6', N'8', N'21', CAST(0x0000A6AA00C56358 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'CFC8803B-C780-46C3-9ABD-85930E8954AE', 100, N'788455', N'17', N'02', N'2016-10-25 12:05', N'5', N'7', N'5', N'17', CAST(0x0000A6AA00C6C2E9 AS DateTime), N'admin')
GO
print 'Processed 100 total records'
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'0151D90C-7437-4F82-A281-C7F072336E9E', 101, N'788456', N'6', N'02', N'2016-10-25 12:10', N'5', N'0', N'1', N'6', CAST(0x0000A6AA00C8227B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'73772733-43BF-42A8-A19B-6A68F8DDE9BB', 102, N'788457', N'6', N'02', N'2016-10-25 12:15', N'0', N'1', N'5', N'6', CAST(0x0000A6AA00C9820B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'47CE0877-B91C-4122-B02F-E789F2A17B03', 103, N'788458', N'5', N'02', N'2016-10-25 12:20', N'0', N'2', N'3', N'5', CAST(0x0000A6AA00CAE19D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'815B0FCC-4326-4DF9-92A5-8F1025569E63', 104, N'788459', N'2', N'02', N'2016-10-25 12:25', N'1', N'0', N'1', N'2', CAST(0x0000A6AA00CC412B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'BE29AE4A-71C6-4885-8FB8-34D4CF037227', 105, N'788599', N'21', N'02', N'2016-10-26 09:10', N'5', N'7', N'9', N'21', CAST(0x0000A6AB0096B23D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'F6A06215-BA4A-4ADD-94F4-9DD9634991CA', 106, N'788600', N'13', N'02', N'2016-10-26 09:15', N'5', N'0', N'8', N'13', CAST(0x0000A6AB009811C9 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'81A1BF22-6331-4BBE-87FD-E60A6C8652D2', 107, N'788601', N'19', N'02', N'2016-10-26 09:20', N'3', N'7', N'9', N'19', CAST(0x0000A6AB00997167 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'798ACE4F-0302-4CE1-876F-3C006692BAB9', 108, N'788602', N'3', N'02', N'2016-10-26 09:25', N'0', N'0', N'3', N'3', CAST(0x0000A6AB009AD0E9 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'4E020B34-9B4C-446C-A659-E3D6B4199694', 109, N'788603', N'10', N'02', N'2016-10-26 09:30', N'2', N'0', N'8', N'10', CAST(0x0000A6AB009C3078 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'3C775B38-29CB-40E7-899E-0BD08BFC92B6', 110, N'788604', N'1', N'02', N'2016-10-26 09:35', N'0', N'0', N'1', N'1', CAST(0x0000A6AB009D900D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A22A57D1-24A6-4E0A-9627-2728CF3E8214', 111, N'788605', N'17', N'02', N'2016-10-26 09:40', N'8', N'7', N'2', N'17', CAST(0x0000A6AB009EEFA4 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'BCC38854-4071-4495-918B-A8E4295E5ACF', 112, N'788606', N'3', N'02', N'2016-10-26 09:45', N'0', N'1', N'2', N'3', CAST(0x0000A6AB00A04F37 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'7BBED9E1-8885-4720-9D31-E8924AD81B0E', 113, N'788607', N'13', N'02', N'2016-10-26 09:50', N'5', N'0', N'8', N'13', CAST(0x0000A6AB00A1AEC3 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'6529A324-ABA0-415D-81F5-9189298EC3A3', 114, N'788608', N'3', N'02', N'2016-10-26 09:55', N'0', N'1', N'2', N'3', CAST(0x0000A6AB00A30E49 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'7828CB7C-68B4-43C8-B694-A4EE0DD23953', 115, N'788609', N'8', N'02', N'2016-10-26 10:00', N'0', N'8', N'0', N'8', CAST(0x0000A6AB00A46DDC AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'746D339E-6D7D-422A-AF00-9C9BE7A4EA7F', 116, N'788610', N'10', N'02', N'2016-10-26 10:05', N'7', N'2', N'1', N'10', CAST(0x0000A6AB00A5CD6F AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'29F346C6-30A0-440D-8F45-D8C8B57741C1', 117, N'788611', N'20', N'02', N'2016-10-26 10:10', N'8', N'6', N'6', N'20', CAST(0x0000A6AB00A72CFA AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'CD642BE2-8F9C-42AE-A2D3-699E8E8E5D6C', 118, N'788612', N'15', N'02', N'2016-10-26 10:15', N'6', N'1', N'8', N'15', CAST(0x0000A6AB00A88C87 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'72A11E93-C2AD-4E4C-8C76-5A58D8B6DAA1', 119, N'788613', N'22', N'02', N'2016-10-26 10:20', N'7', N'9', N'6', N'22', CAST(0x0000A6AB00A9EC19 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'D8E2EDF4-5EBD-42F1-ADBB-7EE16722816C', 120, N'788614', N'7', N'02', N'2016-10-26 10:25', N'1', N'0', N'6', N'7', CAST(0x0000A6AB00AB4BAB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'FFDB5DB8-DDED-4C5F-BCF6-09EC5667A3A4', 121, N'788615', N'6', N'02', N'2016-10-26 10:30', N'2', N'4', N'0', N'6', CAST(0x0000A6AB00ACAB42 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'8E94E447-42E7-4906-ADC4-29EF88BEE147', 122, N'788616', N'6', N'02', N'2016-10-26 10:35', N'0', N'0', N'6', N'6', CAST(0x0000A6AB00AE0AC7 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'612AEFB2-4455-48B1-8B36-B89CCEBA6674', 123, N'788617', N'6', N'02', N'2016-10-26 10:40', N'1', N'0', N'5', N'6', CAST(0x0000A6AB00AF6A56 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'331724FA-9BAE-46EC-9025-DE1249184502', 124, N'788618', N'18', N'02', N'2016-10-26 10:45', N'5', N'8', N'5', N'18', CAST(0x0000A6AB00B0C9EB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'65AE1F77-7F22-4549-9F2E-2D0649120541', 125, N'788619', N'10', N'02', N'2016-10-26 10:50', N'4', N'5', N'1', N'10', CAST(0x0000A6AB00B22977 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'B623775A-AB9E-48D8-BBB2-5F3168DB395D', 126, N'788620', N'26', N'02', N'2016-10-26 10:55', N'9', N'8', N'9', N'26', CAST(0x0000A6AB00B3890F AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'CDCA1E6A-EFB5-4BDF-8D3C-DFFB3592A8CE', 127, N'788621', N'10', N'02', N'2016-10-26 11:00', N'6', N'1', N'3', N'10', CAST(0x0000A6AB00B4E897 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'9DF90A5D-6902-4DB4-91BA-AFF097F12635', 128, N'788778', N'9', N'02', N'2016-10-27 09:10', N'2', N'7', N'0', N'9', CAST(0x0000A6AC0096B241 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'24DFC9D7-BA0D-41A4-81FD-D5D6F33E40C4', 129, N'788779', N'15', N'02', N'2016-10-27 09:15', N'0', N'7', N'8', N'15', CAST(0x0000A6AC009811CB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'95863A84-8AE5-4760-A774-39A3B2F903D0', 130, N'788780', N'18', N'02', N'2016-10-27 09:20', N'4', N'5', N'9', N'18', CAST(0x0000A6AC00997158 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'5BD56570-EDA5-4549-BD1C-D620F23518C5', 131, N'788781', N'10', N'02', N'2016-10-27 09:25', N'3', N'1', N'6', N'10', CAST(0x0000A6AC009AD0E8 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'5FF5D433-DA45-486D-9B71-028CA27C8B13', 132, N'788782', N'9', N'02', N'2016-10-27 09:30', N'2', N'5', N'2', N'9', CAST(0x0000A6AC009C307D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'CC825BD1-123A-4E78-B775-CB5B17EDC2BD', 133, N'788783', N'19', N'02', N'2016-10-27 09:35', N'2', N'9', N'8', N'19', CAST(0x0000A6AC009D9012 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'46D11DE1-2DCD-4A22-9195-DD1F24E96774', 134, N'788784', N'20', N'02', N'2016-10-27 09:40', N'3', N'9', N'8', N'20', CAST(0x0000A6AC009EEFA5 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'2B0637CA-056C-4CB9-B900-544F6EFC87A3', 135, N'788785', N'19', N'02', N'2016-10-27 09:45', N'9', N'3', N'7', N'19', CAST(0x0000A6AC00A04F31 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'3FF2364F-7260-467F-BB66-6E4FB1D54DF7', 136, N'788786', N'9', N'02', N'2016-10-27 09:50', N'0', N'6', N'3', N'9', CAST(0x0000A6AC00A1AEBB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'44C78840-6931-4B15-8BAD-6B3ACF0277C5', 137, N'788787', N'2', N'02', N'2016-10-27 09:55', N'0', N'1', N'1', N'2', CAST(0x0000A6AC00A30E4F AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'484B1D87-8918-4AF1-BFA7-64CA2655F420', 138, N'788788', N'2', N'02', N'2016-10-27 10:00', N'0', N'2', N'0', N'2', CAST(0x0000A6AC00A46DE9 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'0C49EE4C-6DE8-49E5-8FA2-F9FCA241B779', 139, N'788789', N'4', N'02', N'2016-10-27 10:05', N'2', N'0', N'2', N'4', CAST(0x0000A6AC00A5CD76 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C9205E5C-3624-4B18-B8DD-B581EFF368A1', 140, N'788790', N'2', N'02', N'2016-10-27 10:10', N'0', N'0', N'2', N'2', CAST(0x0000A6AC00A72CF4 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'DFD76F7C-3D8F-4C7F-B660-EC98C103BEA3', 141, N'788791', N'12', N'02', N'2016-10-27 10:15', N'7', N'5', N'0', N'12', CAST(0x0000A6AC00A88C8B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'292B3D46-3D29-4DF9-B337-1975FBF3071D', 142, N'788792', N'14', N'02', N'2016-10-27 10:20', N'3', N'6', N'5', N'14', CAST(0x0000A6AC00A9EC1A AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'91906338-3775-414D-90F1-CD1A491C6F18', 143, N'788793', N'5', N'02', N'2016-10-27 10:25', N'1', N'2', N'2', N'5', CAST(0x0000A6AC00AB4BAB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C414ACFF-138C-48CC-AE12-2F1BFDD324E7', 144, N'788794', N'24', N'02', N'2016-10-27 10:30', N'9', N'8', N'7', N'24', CAST(0x0000A6AC00ACAB42 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C166BB96-EB05-4900-B728-DC2A3BD366DE', 145, N'788795', N'24', N'02', N'2016-10-27 10:35', N'9', N'6', N'9', N'24', CAST(0x0000A6AC00AE0ACB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'7D5146F5-0804-411E-8E4E-9A2EF58D823D', 146, N'788796', N'9', N'02', N'2016-10-27 10:40', N'2', N'2', N'5', N'9', CAST(0x0000A6AC00AF6A59 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A3A7DEE2-9B1A-4D46-A2D2-D4CCC178EC9A', 147, N'788797', N'9', N'02', N'2016-10-27 10:45', N'2', N'5', N'2', N'9', CAST(0x0000A6AC00B0C9EA AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'87C2CEB7-4BF7-4255-A0F3-B9E578B3A931', 148, N'788798', N'14', N'02', N'2016-10-27 10:50', N'2', N'4', N'8', N'14', CAST(0x0000A6AC00B2297B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'5AB80089-1B27-447B-923B-480A02393B73', 149, N'788799', N'17', N'02', N'2016-10-27 10:55', N'4', N'4', N'9', N'17', CAST(0x0000A6AC00B38909 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'08CECF3C-26CE-44A0-93B6-1F9E68DEE413', 150, N'788800', N'20', N'02', N'2016-10-27 11:00', N'8', N'7', N'5', N'20', CAST(0x0000A6AC00B4E89D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'BF9EF603-1B7D-4D89-BF83-4008D1C270AF', 151, N'788801', N'16', N'02', N'2016-10-27 11:05', N'5', N'4', N'7', N'16', CAST(0x0000A6AC00B6482C AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'B6BC0A0E-1EC4-49BB-AC6B-EE0657125920', 152, N'788802', N'25', N'02', N'2016-10-27 11:10', N'8', N'8', N'9', N'25', CAST(0x0000A6AC00B7A7B8 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'90117107-E5AD-41A5-BFA4-84CBDF6BB532', 153, N'788803', N'5', N'02', N'2016-10-27 11:15', N'1', N'2', N'2', N'5', CAST(0x0000A6AC00B9074E AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'EB34D6A0-438E-4E71-9655-357738AB6DEF', 154, N'788804', N'17', N'02', N'2016-10-27 11:20', N'7', N'8', N'2', N'17', CAST(0x0000A6AC00BA66DC AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'7618C3F9-6B64-4018-BE8B-58122E370722', 155, N'788805', N'6', N'02', N'2016-10-27 11:25', N'3', N'1', N'2', N'6', CAST(0x0000A6AC00BBC668 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'2D81DB74-1B3E-4F1F-954B-2D12100B3BEE', 156, N'788806', N'23', N'02', N'2016-10-27 11:30', N'8', N'7', N'8', N'23', CAST(0x0000A6AC00BD25F4 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'3BE1DAB5-0174-4E51-8296-FEE9CC626501', 157, N'788807', N'16', N'02', N'2016-10-27 11:35', N'8', N'7', N'1', N'16', CAST(0x0000A6AC00BE8587 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'DE8A98A9-251E-47AB-A4FC-69316E24CA48', 158, N'788808', N'26', N'02', N'2016-10-27 11:40', N'9', N'8', N'9', N'26', CAST(0x0000A6AC00BFE519 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'540FB428-3DF1-46FB-8489-0DD5D5B13A67', 159, N'788809', N'5', N'02', N'2016-10-27 11:45', N'2', N'1', N'2', N'5', CAST(0x0000A6AC00C144A5 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'93F72C04-F345-4073-B0D1-DE1638B49079', 160, N'788810', N'10', N'02', N'2016-10-27 11:50', N'1', N'3', N'6', N'10', CAST(0x0000A6AC00C2A43A AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'8A2DE388-B298-4E54-9F62-D5FF68CF3077', 161, N'788811', N'10', N'02', N'2016-10-27 11:55', N'6', N'1', N'3', N'10', CAST(0x0000A6AC00C403C8 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'41ED2744-D3FB-49F2-A747-BC55AF2D424A', 162, N'788812', N'18', N'02', N'2016-10-27 12:00', N'8', N'5', N'5', N'18', CAST(0x0000A6AC00C56367 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'D8747AAC-31FC-4FF0-B89D-25F8D908E871', 163, N'788813', N'23', N'02', N'2016-10-27 12:05', N'7', N'9', N'7', N'23', CAST(0x0000A6AC00C6C2E7 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C48413F2-2054-4824-ABAA-26E846EB4114', 164, N'788814', N'2', N'02', N'2016-10-27 12:10', N'0', N'2', N'0', N'2', CAST(0x0000A6AC00C8227D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'EE882200-ABF4-4D71-B45F-971F88509CA9', 165, N'788815', N'23', N'02', N'2016-10-27 12:15', N'7', N'9', N'7', N'23', CAST(0x0000A6AC00C9820B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'AB4FDFB6-6432-4E2D-B310-93C01771A77F', 166, N'788816', N'27', N'02', N'2016-10-27 12:20', N'9', N'9', N'9', N'27', CAST(0x0000A6AC00CAE1A3 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'801808B3-0037-4C27-BF5B-72E58F17C759', 167, N'788817', N'7', N'02', N'2016-10-27 12:25', N'3', N'2', N'2', N'7', CAST(0x0000A6AC00CC412E AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'B5F68ACF-6CB7-48C8-86B9-4EA6D1CAA88A', 168, N'788957', N'9', N'02', N'2016-10-28 09:10', N'4', N'4', N'1', N'9', CAST(0x0000A6AD0096B238 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'77759C50-BEF1-443A-97F8-84475E4279E8', 169, N'788958', N'5', N'02', N'2016-10-28 09:15', N'0', N'4', N'1', N'5', CAST(0x0000A6AD009811CA AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'B78746D3-1878-4675-A235-DD2F3929448A', 170, N'788959', N'4', N'02', N'2016-10-28 09:20', N'2', N'0', N'2', N'4', CAST(0x0000A6AD0099716A AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'4ED6076E-9B05-4BBB-81A2-CEF528CEB25B', 171, N'788960', N'10', N'02', N'2016-10-28 09:25', N'3', N'0', N'7', N'10', CAST(0x0000A6AD009AD0EE AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'1BA360CE-6485-4A58-8D95-ABA3359B3499', 172, N'788961', N'18', N'02', N'2016-10-28 09:30', N'4', N'7', N'7', N'18', CAST(0x0000A6AD009C307C AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'17ECEAC8-51CA-4027-B05C-36B24EC4C9F1', 173, N'788962', N'23', N'02', N'2016-10-28 09:35', N'9', N'8', N'6', N'23', CAST(0x0000A6AD009D9008 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'CE924955-2F72-4502-8C9D-F43E4329150F', 174, N'788963', N'9', N'02', N'2016-10-28 09:40', N'0', N'2', N'7', N'9', CAST(0x0000A6AD009EEF98 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'FA6A670E-B5A7-4F6E-9BEF-687F4BE2722B', 175, N'788964', N'13', N'02', N'2016-10-28 09:45', N'5', N'0', N'8', N'13', CAST(0x0000A6AD00A04F2A AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'5A06E6BF-3363-4CD7-9EE7-68B35CC24D73', 176, N'788965', N'5', N'02', N'2016-10-28 09:50', N'3', N'1', N'1', N'5', CAST(0x0000A6AD00A1AEB9 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'B04C9035-38F4-46B9-A7AC-FA874346B4CD', 177, N'788966', N'11', N'02', N'2016-10-28 09:55', N'1', N'3', N'7', N'11', CAST(0x0000A6AD00A30E4F AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'218A3E9F-D4B9-4D59-8C1C-6D73AC605FCE', 178, N'788967', N'26', N'02', N'2016-10-28 10:00', N'9', N'8', N'9', N'26', CAST(0x0000A6AD00A46DDB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'9E526224-9731-41E5-9059-78CE3B18CC86', 179, N'788968', N'2', N'02', N'2016-10-28 10:05', N'1', N'0', N'1', N'2', CAST(0x0000A6AD00A5CD6B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'D3B7839E-9549-4663-9263-C48D58910F92', 180, N'788969', N'17', N'02', N'2016-10-28 10:10', N'6', N'2', N'9', N'17', CAST(0x0000A6AD00A72CFB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'94DFC224-9D91-4338-8144-D3DB2EC34AFD', 181, N'788970', N'5', N'02', N'2016-10-28 10:15', N'1', N'1', N'3', N'5', CAST(0x0000A6AD00A88C8A AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'9D22BAE5-4738-4144-BB0B-8396C4E0D1D3', 182, N'788971', N'17', N'02', N'2016-10-28 10:20', N'8', N'8', N'1', N'17', CAST(0x0000A6AD00A9EC1A AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'8E86CB23-7BDC-4E4C-A43C-94F701BD8C95', 183, N'788972', N'8', N'02', N'2016-10-28 10:25', N'1', N'7', N'0', N'8', CAST(0x0000A6AD00AB4BA7 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'AD9BCB20-66B9-4B16-AC7E-8AD420AF2F28', 184, N'788973', N'14', N'02', N'2016-10-28 10:30', N'1', N'4', N'9', N'14', CAST(0x0000A6AD00ACAB48 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'6637AF1D-8E49-4D4B-923A-9B3E2F3DD542', 185, N'788974', N'10', N'02', N'2016-10-28 10:35', N'0', N'5', N'5', N'10', CAST(0x0000A6AD00AE0ACF AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A26E5440-DD89-4B8F-9AB5-02A322C1365B', 186, N'788976', N'26', N'02', N'2016-10-28 10:45', N'8', N'9', N'9', N'26', CAST(0x0000A6AD00B0C9ED AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'25D0604D-74A7-4DB1-9B53-F8CB468EC21E', 187, N'788977', N'2', N'02', N'2016-10-28 10:50', N'0', N'2', N'0', N'2', CAST(0x0000A6AD00B2297B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'04DFFE98-0887-414B-832F-B73B1FEEA287', 188, N'788978', N'26', N'02', N'2016-10-28 10:55', N'9', N'8', N'9', N'26', CAST(0x0000A6AD00B3890A AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'0595B06B-BE44-42E5-9279-7B3290953DBD', 189, N'788979', N'14', N'02', N'2016-10-28 11:00', N'2', N'3', N'9', N'14', CAST(0x0000A6AD00B4E8A3 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'DF81AEA0-4886-4F59-B119-BCE65097D269', 190, N'788980', N'14', N'02', N'2016-10-28 11:05', N'5', N'5', N'4', N'14', CAST(0x0000A6AD00B6482A AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C4D1DD25-B8BB-498C-81A1-11C558EB0FCD', 191, N'788981', N'6', N'02', N'2016-10-28 11:10', N'1', N'2', N'3', N'6', CAST(0x0000A6AD00B7A7B9 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'AB17E2AD-58AB-4682-9EE9-F8260442B82B', 192, N'788982', N'4', N'02', N'2016-10-28 11:15', N'1', N'3', N'0', N'4', CAST(0x0000A6AD00B9074B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'3EEFD09D-EB43-41F5-AB95-9E5FBBBD2F62', 193, N'788983', N'9', N'02', N'2016-10-28 11:20', N'1', N'6', N'2', N'9', CAST(0x0000A6AD00BA66D8 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'D9A18218-55CB-427D-ADC6-8A3151BCF117', 194, N'788984', N'17', N'02', N'2016-10-28 11:25', N'0', N'8', N'9', N'17', CAST(0x0000A6AD00BBC67C AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'6D63A88D-8BC9-43C2-BBAE-4EBCD6D5BD77', 195, N'788985', N'26', N'02', N'2016-10-28 11:30', N'9', N'8', N'9', N'26', CAST(0x0000A6AD00BD25FB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'3E895540-BF39-4475-97EE-1FDB2902844F', 196, N'789245', N'7', N'02', N'2016-10-29 18:15', N'1', N'1', N'5', N'7', CAST(0x0000A6AE012C628F AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'D12108C7-8218-499C-8812-C4E2F05470A3', 197, N'789246', N'16', N'02', N'2016-10-29 18:20', N'8', N'4', N'4', N'16', CAST(0x0000A6AE012DC21E AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A8D2EA36-ACA5-495A-B505-41A874B35161', 198, N'789247', N'18', N'02', N'2016-10-29 18:25', N'8', N'2', N'8', N'18', CAST(0x0000A6AE012F21AA AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A6DE1282-85F1-4E16-8123-3F2F50955B02', 199, N'789248', N'11', N'02', N'2016-10-29 18:30', N'4', N'4', N'3', N'11', CAST(0x0000A6AE01308133 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'584D279A-191E-4F0D-BF2F-025F0CD9845B', 200, N'789249', N'24', N'02', N'2016-10-29 18:35', N'8', N'9', N'7', N'24', CAST(0x0000A6AE0131E0C5 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'2EF3035B-0243-41F6-9B69-667A666D0B2D', 201, N'789250', N'24', N'02', N'2016-10-29 18:40', N'9', N'6', N'9', N'24', CAST(0x0000A6AE0133405A AS DateTime), N'admin')
GO
print 'Processed 200 total records'
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'FEFCE5DC-F265-4AB6-92E3-DC53468EE202', 202, N'789251', N'19', N'02', N'2016-10-29 18:45', N'6', N'8', N'5', N'19', CAST(0x0000A6AE01349FEA AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'5C98AE3B-081F-493A-B6AB-53970C227904', 203, N'789252', N'22', N'02', N'2016-10-29 18:50', N'7', N'8', N'7', N'22', CAST(0x0000A6AE0135FF78 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'9000E3E8-1154-4DBF-B550-722C2F0A8FF4', 204, N'789253', N'19', N'02', N'2016-10-29 18:55', N'7', N'4', N'8', N'19', CAST(0x0000A6AE01375F08 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A0B878AA-9406-4D3D-BE75-505A5B9E187F', 205, N'789254', N'27', N'02', N'2016-10-29 19:00', N'9', N'9', N'9', N'27', CAST(0x0000A6AE0138BE9D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'8C3900D8-145B-408F-AFDB-3F33561D795B', 206, N'789255', N'10', N'02', N'2016-10-29 19:05', N'4', N'4', N'2', N'10', CAST(0x0000A6AE013A1E27 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'1FCC815C-DA2C-4BCD-B7DD-4394A8E35EE9', 207, N'789256', N'6', N'02', N'2016-10-29 19:10', N'2', N'0', N'4', N'6', CAST(0x0000A6AE013B7DBD AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'243DCCCE-2765-4A9D-B60C-F2894C349286', 208, N'789497', N'9', N'02', N'2016-10-31 09:30:20', N'8', N'0', N'1', N'9', CAST(0x0000A6B0009DAA5E AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'26A848B2-18BF-4501-A08C-0DB913A42062', 209, N'789498', N'19', N'02', N'2016-10-31 09:35:20', N'9', N'3', N'7', N'19', CAST(0x0000A6B0009E05FC AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'B05A48CE-3BA9-42D8-8260-DAA7FBB58836', 210, N'789499', N'19', N'02', N'2016-10-31 09:40:20', N'9', N'7', N'3', N'19', CAST(0x0000A6B0009F8F0B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'1E9BEAD9-C094-4929-9138-E72ED98AFD78', 211, N'789500', N'16', N'01', N'2016-10-31 09:45:20', N'9', N'4', N'3', N'16', CAST(0x0000A6B000A0BBEB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'3F9A6BBD-45B2-474B-ACE4-4098E3C00CD3', 212, N'789501', N'18', N'01', N'2016-10-31 09:50:20', N'5', N'6', N'7', N'18', CAST(0x0000A6B000A253C4 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'27B3EE94-4F6F-4C7A-99F2-C4A9A4429135', 213, N'789502', N'9', N'04', N'2016-10-31 09:55:20', N'5', N'1', N'3', N'9', CAST(0x0000A6B000A390A7 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'E5745D04-A887-4483-A819-890181C9F06B', 214, N'789503', N'23', N'02', N'2016-10-31 10:00:20', N'9', N'5', N'9', N'23', CAST(0x0000A6B000A529A3 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'83903CDD-6AD3-4EE7-BA94-BCCFCF79E34C', 215, N'789504', N'18', N'02', N'2016-10-31 10:05:20', N'7', N'4', N'7', N'18', CAST(0x0000A6B000A668E2 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'077DC9B6-6D0C-4717-9AFF-B1CE10763A2C', 216, N'789505', N'14', N'01', N'2016-10-31 10:10:20', N'6', N'2', N'6', N'14', CAST(0x0000A6B000A7C5D6 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A4E12BEB-4BCA-4E6F-BEC2-B6DC0442D2C1', 217, N'789506', N'17', N'10', N'2016-10-31 10:15:20', N'6', N'7', N'4', N'17', CAST(0x0000A6B000A910A9 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A74E72DD-BF53-4DD5-A3AC-2BECB2D5315A', 218, N'789511', N'11', N'02', N'2016-10-31 10:40:20', N'7', N'2', N'2', N'11', CAST(0x0000A6B000B0B2ED AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'F934D894-4CE4-4ABB-B894-2119441562E9', 219, N'789512', N'11', N'03', N'2016-10-31 10:45:20', N'1', N'3', N'7', N'11', CAST(0x0000A6B000B14B69 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'26A21D37-DEF2-4A0B-96EF-043D41FC95B1', 220, N'789513', N'16', N'02', N'2016-10-31 10:50:20', N'8', N'8', N'0', N'16', CAST(0x0000A6B000B2ABE9 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'DC7309DE-8E0E-49B4-BA4E-94D15E54B92B', 221, N'789514', N'17', N'01', N'2016-10-31 10:55:20', N'8', N'5', N'4', N'17', CAST(0x0000A6B000B421C0 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'002EF936-CEE5-4EDE-9308-4441819BD895', 222, N'789515', N'17', N'01', N'2016-10-31 11:00:20', N'1', N'8', N'8', N'17', CAST(0x0000A6B000B56C97 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'5C62BFAB-4DE6-4ABC-BFBB-ADD21A5EF897', 223, N'789516', N'14', N'01', N'2016-10-31 10:35:20', N'1', N'4', N'9', N'14', CAST(0x0000A6B000B6B7B1 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A08C61DE-1E0F-4ADA-8C8A-6F5AE082066C', 224, N'789517', N'14', N'01', N'2016-10-31 11:10:20', N'5', N'0', N'9', N'14', CAST(0x0000A6B000B82DCA AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'716B0F3B-4F58-4A1A-B8FD-C95BDB63741C', 225, N'789518', N'18', N'01', N'2016-10-31 11:15:20', N'1', N'8', N'9', N'18', CAST(0x0000A6B000B98866 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'54AC1F6B-B3B6-4802-A481-21024D9DC80F', 226, N'789519', N'7', N'01', N'2016-10-31 11:20:20', N'1', N'3', N'3', N'7', CAST(0x0000A6B000BBCED4 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'E17954DE-2191-4AAA-8552-2673B24D6FDA', 227, N'789520', N'10', N'01', N'2016-10-31 11:25:20', N'8', N'0', N'2', N'10', CAST(0x0000A6B000BC601C AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'F5BDE5D8-67B9-4934-AB49-ACCC9CDCD912', 228, N'789521', N'12', N'01', N'2016-10-31 11:30:20', N'3', N'9', N'0', N'12', CAST(0x0000A6B000BDE5D6 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'DF838DC6-D56B-4FB5-9FE6-759368D9BEE1', 229, N'789522', N'11', N'02', N'2016-10-31 11:35:20', N'2', N'1', N'8', N'11', CAST(0x0000A6B000BF15AF AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'E816C5EA-E9E6-424E-99FF-7B231D72B2B2', 230, N'789523', N'17', N'02', N'2016-10-31 11:40:20', N'2', N'7', N'8', N'17', CAST(0x0000A6B000C08AAD AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'F49B10FF-FB88-46E6-9CFB-A344CAD5A9C3', 231, N'789524', N'5', N'01', N'2016-10-31 11:45:20', N'2', N'3', N'0', N'5', CAST(0x0000A6B000C1BD57 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'250961E0-6568-4F02-8B65-607BB5304D92', 232, N'789525', N'11', N'02', N'2016-10-31 11:50:20', N'3', N'6', N'2', N'11', CAST(0x0000A6B000C37579 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'86CE94A0-1AF7-45F7-8F0F-3C641EEC4586', 233, N'789526', N'25', N'02', N'2016-10-31 11:55:20', N'8', N'8', N'9', N'25', CAST(0x0000A6B000C4A06D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'D7D488FF-3D1F-4951-8C11-E8232D58488D', 234, N'789528', N'10', N'02', N'2016-10-31 12:05:20', N'7', N'2', N'1', N'10', CAST(0x0000A6B000C795D9 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'8C719012-9CD5-4C16-908F-B4E068705EC9', 235, N'789529', N'16', N'01', N'2016-10-31 12:10:20', N'7', N'6', N'3', N'16', CAST(0x0000A6B000C8AA45 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'0A5B87DD-ABAB-4620-B7BD-BE3384B89B97', 236, N'789530', N'12', N'02', N'2016-10-31 12:15:20', N'6', N'1', N'5', N'12', CAST(0x0000A6B000CA102E AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'7375F225-5D73-4D52-8152-A469970743AA', 237, N'789531', N'14', N'02', N'2016-10-31 12:20:20', N'2', N'6', N'6', N'14', CAST(0x0000A6B000CC12F6 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C6CB9392-5D99-4170-AAF6-3622D7C18674', 238, N'789532', N'5', N'01', N'2016-10-31 12:25:20', N'0', N'1', N'4', N'5', CAST(0x0000A6B000CCDB5F AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'DB75FEEA-ED7C-4645-A8C5-94019D9E1AF4', 239, N'789533', N'18', N'02', N'2016-10-31 12:30:20', N'0', N'9', N'9', N'18', CAST(0x0000A6B000CE1631 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'51674942-36C5-4DA3-A8EA-C67371F645AA', 240, N'789534', N'12', N'01', N'2016-10-31 12:35:20', N'4', N'5', N'3', N'12', CAST(0x0000A6B000CFA71B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'575B273C-3B5D-467F-9EA7-1C2E905032FD', 241, N'789536', N'16', N'02', N'2016-10-31 12:45:20', N'3', N'4', N'9', N'16', CAST(0x0000A6B000D235BF AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'AA543343-F992-4B8F-96BB-E7F98AD5842C', 242, N'789537', N'14', N'02', N'2016-10-31 12:50:20', N'8', N'3', N'3', N'14', CAST(0x0000A6B000D3AC2D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'CD0054B8-7072-49AB-B2D2-8CBFCEF3E308', 243, N'789538', N'13', N'01', N'2016-10-31 12:55:20', N'3', N'7', N'3', N'13', CAST(0x0000A6B000D5058C AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'263FAB0A-3902-41BC-AE46-CE248A54DFB8', 244, N'789539', N'6', N'01', N'2016-10-31 13:00:20', N'4', N'2', N'0', N'6', CAST(0x0000A6B000D66B6C AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'5F32DE83-6DA4-4F0D-B5E3-B1C748742CFE', 245, N'789540', N'20', N'02', N'2016-10-31 13:05:20', N'4', N'7', N'9', N'20', CAST(0x0000A6B000D7B311 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'41DD6E18-CC55-46F0-9AFE-926D769E3487', 246, N'789541', N'5', N'01', N'2016-10-31 13:10:20', N'0', N'2', N'3', N'5', CAST(0x0000A6B000D96DD5 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'537D01B4-CC8A-412B-B117-0520B6F0AC94', 247, N'789542', N'13', N'01', N'2016-10-31 13:15:20', N'4', N'1', N'8', N'13', CAST(0x0000A6B000DA7612 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'ECDB3FFA-92E8-4E57-8734-EDA0FDA0BAFE', 248, N'789543', N'14', N'01', N'2016-10-31 13:20:20', N'3', N'5', N'6', N'14', CAST(0x0000A6B000DC0CF1 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'6FB65564-BB78-40A1-A45C-B38DE8B6EA34', 249, N'789545', N'20', N'02', N'2016-10-31 13:30:20', N'6', N'7', N'7', N'20', CAST(0x0000A6B000DEB42C AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'0ABA57BF-887A-40B3-9ED6-FF28544CE12A', 250, N'789546', N'18', N'01', N'2016-10-31 13:35:20', N'2', N'7', N'9', N'18', CAST(0x0000A6B000DFF469 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'11F6EAF7-9068-4234-911D-D61553661F0D', 251, N'789547', N'17', N'02', N'2016-10-31 13:40:20', N'7', N'6', N'4', N'17', CAST(0x0000A6B000E19663 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'FD708512-C83F-4C91-8B5B-F8AF2E3151B6', 252, N'789548', N'4', N'02', N'2016-10-31 13:45:20', N'1', N'0', N'3', N'4', CAST(0x0000A6B000E2C6E8 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'BB76EFC6-4CAA-42D0-83A9-C468DE1DF433', 253, N'789549', N'10', N'01', N'2016-10-31 13:50:20', N'2', N'7', N'1', N'10', CAST(0x0000A6B000E455FA AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'B0C2AB5E-97D5-4E20-A869-351F090F8A84', 254, N'789550', N'13', N'01', N'2016-10-31 13:55:20', N'3', N'8', N'2', N'13', CAST(0x0000A6B000E57AA0 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'EE352AFF-2D07-4718-94DF-7BDEDE4EFBA0', 255, N'789551', N'15', N'02', N'2016-10-31 14:00:20', N'2', N'8', N'5', N'15', CAST(0x0000A6B000E6FDA6 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'160045B4-98C6-426A-9DF8-251542856394', 256, N'789552', N'11', N'02', N'2016-10-31 14:05:20', N'3', N'0', N'8', N'11', CAST(0x0000A6B000E86876 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'CFF14D2B-AFC9-4234-A208-6CF243012999', 257, N'789553', N'11', N'04', N'2016-10-31 14:10:20', N'3', N'8', N'0', N'11', CAST(0x0000A6B000E9BC47 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'39A6DF74-996C-44BE-89C3-570C9B615FC8', 258, N'789554', N'9', N'02', N'2016-10-31 14:15:20', N'0', N'9', N'0', N'9', CAST(0x0000A6B000EBA3CB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'E6C1EA8A-6FBC-424D-81C2-ACFF92E303FE', 259, N'789555', N'13', N'01', N'2016-10-31 14:20:20', N'9', N'4', N'0', N'13', CAST(0x0000A6B000EC89B3 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'989C6EF5-904C-4484-9C4B-B4622A3C6729', 260, N'789556', N'20', N'04', N'2016-10-31 14:25:20', N'9', N'9', N'2', N'20', CAST(0x0000A6B000EDCFB4 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'E461A7AD-85E2-46C1-B16E-67FFFE479173', 261, N'789557', N'23', N'02', N'2016-10-31 14:30:20', N'7', N'9', N'7', N'23', CAST(0x0000A6B000EF5DE9 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'ECE411FD-D104-4ED7-889E-270720FE50EE', 262, N'789558', N'17', N'02', N'2016-10-31 14:35:20', N'7', N'2', N'8', N'17', CAST(0x0000A6B000F0C921 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'DBB90A44-70FA-483D-8E4C-1299E5E6DDE0', 263, N'789559', N'17', N'01', N'2016-10-31 14:40:20', N'8', N'8', N'1', N'17', CAST(0x0000A6B000F1D77A AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'E6D38203-4A28-4B5D-B087-1E114A521C4A', 264, N'789561', N'17', N'02', N'2016-10-31 14:50:20', N'1', N'9', N'7', N'17', CAST(0x0000A6B000F5A759 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'234277C8-F28E-4BD4-8343-4DCC5DB889FD', 265, N'789562', N'16', N'02', N'2016-10-31 14:55:20', N'7', N'8', N'1', N'16', CAST(0x0000A6B000F62847 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'911BA0C3-B6FA-4545-8647-019F0C6250DC', 266, N'789563', N'4', N'02', N'2016-10-31 15:00:20', N'0', N'4', N'0', N'4', CAST(0x0000A6B000F7B8F6 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'680B1ED7-CE4C-4078-9013-1BEC235AF00B', 267, N'789564', N'23', N'04', N'2016-10-31 15:05:20', N'9', N'6', N'8', N'23', CAST(0x0000A6B000F9DFFE AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C2CB8AB7-D39C-40C7-AE8D-FA1DB5C2E378', 268, N'789565', N'10', N'02', N'2016-10-31 15:10:20', N'4', N'0', N'6', N'10', CAST(0x0000A6B000FA4EA2 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'8A5A7A3D-F87B-4620-9A41-3B87F8E2C12B', 269, N'789568', N'23', N'01', N'2016-10-31 15:25:20', N'8', N'9', N'6', N'23', CAST(0x0000A6B000FF8680 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'170C592A-3EDF-4AEF-9BCB-D5A8F68F5D7C', 270, N'789569', N'13', N'02', N'2016-10-31 15:30:20', N'3', N'6', N'4', N'13', CAST(0x0000A6B000FFE438 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'40CC94E3-3DAF-4822-8E51-9C097B4729D5', 271, N'789570', N'17', N'02', N'2016-10-31 15:35:20', N'2', N'6', N'9', N'17', CAST(0x0000A6B00101024D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'8A46EBD1-270A-42F2-BB5C-3AD86ABEA61F', 272, N'789571', N'20', N'02', N'2016-10-31 15:40:20', N'6', N'5', N'9', N'20', CAST(0x0000A6B00102A835 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'463E04C0-F32D-43EB-B0CE-02B33433F202', 273, N'789575', N'18', N'01', N'2016-10-31 16:00:20', N'5', N'4', N'9', N'18', CAST(0x0000A6B00108FD5B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A0DFA86A-93F9-445D-BFA3-955C98E5BECF', 274, N'789576', N'15', N'02', N'2016-10-31 16:05:20', N'0', N'7', N'8', N'15', CAST(0x0000A6B0010AD29B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'253E99D0-66C9-4C48-95A6-2F9A28B509B5', 275, N'789577', N'16', N'05', N'2016-10-31 16:10:20', N'3', N'8', N'5', N'16', CAST(0x0000A6B0010AD4D7 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'F4BD5D5F-CE2E-4D2B-A000-7DFCC5D88C70', 276, N'789578', N'18', N'02', N'2016-10-31 16:15:20', N'7', N'4', N'7', N'18', CAST(0x0000A6B0010C1D72 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'FCBDA291-A83A-432D-A2D0-F30656F78E57', 277, N'789579', N'11', N'02', N'2016-10-31 16:20:20', N'4', N'4', N'3', N'11', CAST(0x0000A6B0010DC67F AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'48EEE04D-079B-4D1F-97CB-6C6B27A1F390', 278, N'789580', N'18', N'03', N'2016-10-31 16:25:20', N'2', N'7', N'9', N'18', CAST(0x0000A6B0010EDC20 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'D5699AC7-753E-4433-B22F-68DDDF27F05B', 279, N'789581', N'6', N'01', N'2016-10-31 16:30:20', N'0', N'0', N'6', N'6', CAST(0x0000A6B001107BE2 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'5D5F81EB-CCF5-4BE7-9A00-FBC66FC645D9', 280, N'789582', N'11', N'03', N'2016-10-31 16:35:20', N'4', N'2', N'5', N'11', CAST(0x0000A6B00111B56E AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'E795DDF3-92AC-4EBD-94FC-66543FA62DF1', 281, N'789583', N'13', N'01', N'2016-10-31 16:40:20', N'0', N'8', N'5', N'13', CAST(0x0000A6B00112F8BD AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'48868C18-635F-4117-A662-35A2F057CD6A', 282, N'789584', N'17', N'03', N'2016-10-31 16:45:20', N'5', N'9', N'3', N'17', CAST(0x0000A6B0011469B7 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'4B589ADB-C45A-4586-A5A0-27CF2C2CFD30', 283, N'789585', N'13', N'05', N'2016-10-31 16:50:20', N'2', N'6', N'5', N'13', CAST(0x0000A6B00115E36B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A314F272-65EA-4597-AFE0-09C0E148FE13', 284, N'789586', N'17', N'01', N'2016-10-31 16:55:20', N'4', N'7', N'6', N'17', CAST(0x0000A6B001176ADB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C830EE9C-4D78-40EF-BE16-5338D9D86316', 285, N'789587', N'17', N'02', N'2016-10-31 17:00:20', N'6', N'9', N'2', N'17', CAST(0x0000A6B0011884E1 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'46AD836C-E018-4BE9-AE1E-006F44D2F354', 286, N'789588', N'17', N'02', N'2016-10-31 17:05:20', N'7', N'8', N'2', N'17', CAST(0x0000A6B00119C977 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'78DBEBC7-0120-44E7-BF0E-664CFDFF31A9', 287, N'789589', N'10', N'02', N'2016-10-31 17:10:20', N'0', N'4', N'6', N'10', CAST(0x0000A6B0011B6572 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'1C45B168-49E2-415D-8107-45CA61784769', 288, N'789590', N'13', N'02', N'2016-10-31 17:15:20', N'3', N'4', N'6', N'13', CAST(0x0000A6B0011C97D5 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'16B36457-EE0A-4C5E-B976-71DFD5148430', 289, N'789591', N'11', N'02', N'2016-10-31 17:20:20', N'2', N'1', N'8', N'11', CAST(0x0000A6B0011DDFFA AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'EA5D051F-775B-4961-81CD-81FA7A11F0E4', 290, N'789592', N'11', N'01', N'2016-10-31 17:25:20', N'6', N'5', N'0', N'11', CAST(0x0000A6B0011F64FB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'D95FB88F-3E76-49A1-9F87-DE67ECBFD9B9', 291, N'789593', N'12', N'01', N'2016-10-31 17:30:20', N'4', N'3', N'5', N'12', CAST(0x0000A6B00120CE6D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'236D0101-7493-483E-B049-B1A2FE9C4C97', 292, N'789594', N'7', N'01', N'2016-10-31 17:35:20', N'0', N'5', N'2', N'7', CAST(0x0000A6B00122104F AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'63FC17A7-60BD-4C4F-8E8E-9D55F2BB4D28', 293, N'789595', N'16', N'02', N'2016-10-31 17:40:20', N'8', N'2', N'6', N'16', CAST(0x0000A6B00123817F AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'BABBA7D2-7190-40BC-9042-2412F88D7527', 294, N'789596', N'13', N'02', N'2016-10-31 17:45:20', N'9', N'4', N'0', N'13', CAST(0x0000A6B001249DD0 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'D3D6E516-D543-40D4-8864-3F0437071C93', 295, N'789597', N'9', N'10', N'2016-10-31 17:50:20', N'6', N'0', N'3', N'9', CAST(0x0000A6B00126DF88 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'6E4849E5-1761-4733-99B4-58DA5FDFF26E', 296, N'789598', N'6', N'01', N'2016-10-31 17:55:20', N'3', N'1', N'2', N'6', CAST(0x0000A6B00127889D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'6C29A1B2-C235-4707-988D-9542677FE78F', 297, N'789599', N'23', N'01', N'2016-10-31 18:00:20', N'8', N'8', N'7', N'23', CAST(0x0000A6B00129E967 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'5AB6E6FF-F107-4478-9F07-AE0BE387AB39', 298, N'789600', N'15', N'02', N'2016-10-31 18:05:20', N'9', N'0', N'6', N'15', CAST(0x0000A6B0012A53D3 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'02D497C6-E9D5-4BC3-A914-673194019768', 299, N'789601', N'12', N'02', N'2016-10-31 18:10:20', N'2', N'6', N'4', N'12', CAST(0x0000A6B0012BE1D9 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C5966151-09A7-4FB3-8A03-A965C7550351', 300, N'789602', N'21', N'02', N'2016-10-31 18:15:20', N'5', N'7', N'9', N'21', CAST(0x0000A6B0012D1EBD AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'808924DE-794D-4A4C-AD7B-A8836B34EE4D', 301, N'789603', N'8', N'02', N'2016-10-31 18:20:20', N'2', N'3', N'3', N'8', CAST(0x0000A6B0012EA3EF AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'48A01B7B-6D2A-4B1C-8C64-B936EDA1082A', 302, N'789604', N'21', N'01', N'2016-10-31 18:25:20', N'8', N'4', N'9', N'21', CAST(0x0000A6B001300B1F AS DateTime), N'admin')
GO
print 'Processed 300 total records'
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'458A2884-82F3-471C-A793-938697DF56B9', 303, N'789606', N'22', N'01', N'2016-10-31 18:35:20', N'9', N'8', N'5', N'22', CAST(0x0000A6B00132BDA2 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'EB16D38E-6F6F-49BF-9EC1-A481C55AD8AD', 304, N'789607', N'15', N'01', N'2016-10-31 18:40:20', N'2', N'8', N'5', N'15', CAST(0x0000A6B0013407BF AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'1073DE59-B867-4D6F-A298-92CDF8592B0A', 305, N'789608', N'22', N'02', N'2016-10-31 18:45:20', N'9', N'6', N'7', N'22', CAST(0x0000A6B00135B004 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'EE8B194E-89E7-40A6-820B-36D18A0F25E6', 306, N'789609', N'20', N'01', N'2016-10-31 18:50:20', N'6', N'8', N'6', N'20', CAST(0x0000A6B00136C77A AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'EF53568E-2579-4210-A535-BF6989F4F557', 307, N'789610', N'13', N'04', N'2016-10-31 18:55:20', N'5', N'4', N'4', N'13', CAST(0x0000A6B001380F05 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'579FD1BA-0B33-4384-AEA6-274B649A2DB5', 308, N'789611', N'13', N'01', N'2016-10-31 19:00:20', N'5', N'7', N'1', N'13', CAST(0x0000A6B00139C2D1 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'DA324DD7-E0BD-45CB-B3A7-9B031CDB62B1', 309, N'789612', N'6', N'01', N'2016-10-31 19:05:20', N'1', N'0', N'5', N'6', CAST(0x0000A6B0013AD9F3 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'978DDD3F-9901-47CC-A61E-2E7EF365EEEC', 310, N'789613', N'13', N'01', N'2016-10-31 19:10:20', N'8', N'1', N'4', N'13', CAST(0x0000A6B0013C6A62 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'F1026D0F-54AD-4BBC-92CF-2AD27E3ED7A2', 311, N'789614', N'16', N'02', N'2016-10-31 19:15:20', N'8', N'7', N'1', N'16', CAST(0x0000A6B0013D54D7 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'B03FF11C-113D-4EB9-AC5C-D72FD9FFF75A', 312, N'789615', N'8', N'02', N'2016-10-31 19:20:20', N'6', N'1', N'1', N'8', CAST(0x0000A6B0013F1CFC AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'8EE72E0B-BDC1-419B-8F95-DE88256F9B92', 313, N'789616', N'15', N'02', N'2016-10-31 19:25:20', N'1', N'6', N'8', N'15', CAST(0x0000A6B0014063F4 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'58D7263C-5A1D-4694-8DDE-878B17CCFD6D', 314, N'789617', N'8', N'02', N'2016-10-31 19:30:20', N'2', N'6', N'0', N'8', CAST(0x0000A6B00141E96E AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C88EFBC1-D29D-4119-BDFC-E82F41E2D7F0', 315, N'789618', N'9', N'02', N'2016-10-31 19:35:20', N'8', N'0', N'1', N'9', CAST(0x0000A6B00143546A AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'AAC85184-8F8D-4A23-9D73-4326C987E306', 316, N'789619', N'9', N'01', N'2016-10-31 19:40:20', N'2', N'5', N'2', N'9', CAST(0x0000A6B001448519 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'5E0C290A-0135-401A-AAF3-7F6C9FE49FC7', 317, N'789620', N'20', N'02', N'2016-10-31 19:45:20', N'6', N'6', N'8', N'20', CAST(0x0000A6B00145D6B8 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A1B41B9A-700A-4417-913D-565A70C11BE1', 318, N'789621', N'20', N'02', N'2016-10-31 19:50:20', N'4', N'7', N'9', N'20', CAST(0x0000A6B001478235 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'CFB1A002-107B-4536-874C-96D7B631E658', 319, N'789622', N'16', N'02', N'2016-10-31 19:55:20', N'6', N'9', N'1', N'16', CAST(0x0000A6B00148A589 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'53E14997-E6EE-4697-B75F-C23DC4CD201B', 320, N'789623', N'25', N'03', N'2016-10-31 20:00:20', N'9', N'8', N'8', N'25', CAST(0x0000A6B00149F591 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'883FF01B-FEBE-4F57-93AE-C1205F26B2E4', 321, N'789624', N'18', N'01', N'2016-10-31 20:05:20', N'8', N'4', N'6', N'18', CAST(0x0000A6B0014B6C08 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'4490788E-3A31-48C9-B83B-1D531B72E1A7', 322, N'789625', N'7', N'02', N'2016-10-31 20:10:20', N'1', N'5', N'1', N'7', CAST(0x0000A6B0014CCBC1 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C1C1E1F7-6E7D-4B81-B11C-ADF932E7D412', 323, N'789626', N'19', N'02', N'2016-10-31 20:15:20', N'6', N'6', N'7', N'19', CAST(0x0000A6B0014DD956 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'7FC078D5-7E19-426C-B1A2-FC97B6042513', 324, N'789627', N'13', N'10', N'2016-10-31 20:20:20', N'1', N'5', N'7', N'13', CAST(0x0000A6B0014F5BF9 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'2266CA43-D238-4F3A-9302-05469705BC8C', 325, N'789628', N'11', N'01', N'2016-10-31 20:25:20', N'1', N'4', N'6', N'11', CAST(0x0000A6B001509862 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'BC332163-1005-4363-8865-F1888E184F3D', 326, N'789629', N'17', N'02', N'2016-10-31 20:30:20', N'5', N'4', N'8', N'17', CAST(0x0000A6B001523E1F AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'B42FD52B-10F9-47FE-B1A6-B5372A70E44A', 327, N'789630', N'1', N'02', N'2016-10-31 20:35:20', N'0', N'0', N'1', N'1', CAST(0x0000A6B001538691 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'05DE3F83-41AF-4063-ACED-5716E3FCDCAD', 328, N'789631', N'11', N'02', N'2016-10-31 20:40:20', N'3', N'4', N'4', N'11', CAST(0x0000A6B00154F2CC AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C1908C06-B034-4BE1-A0C9-DD3682170FA2', 329, N'789632', N'14', N'01', N'2016-10-31 20:30:20', N'2', N'9', N'3', N'14', CAST(0x0000A6B001564672 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'8ED3BC47-F479-479C-AFC9-0173B045757F', 330, N'789633', N'17', N'02', N'2016-10-31 20:50:20', N'4', N'6', N'7', N'17', CAST(0x0000A6B00157C823 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'7F9F3182-DA06-4C6B-B57E-B3D3EACB0571', 331, N'789634', N'17', N'02', N'2016-10-31 20:55:20', N'7', N'7', N'3', N'17', CAST(0x0000A6B001591B10 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'09D4A7A3-A24D-417B-A926-CC6FFB98BFFF', 332, N'789635', N'14', N'02', N'2016-10-31 21:00:20', N'3', N'5', N'6', N'14', CAST(0x0000A6B0015A7028 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'93F47105-A64A-4813-B6CB-7E3D011C1730', 333, N'789636', N'13', N'02', N'2016-10-31 21:05:20', N'9', N'4', N'0', N'13', CAST(0x0000A6B0015B9532 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'246CC7D8-91C8-419C-AE54-D2A88C20B393', 334, N'789637', N'21', N'01', N'2016-10-31 21:10:20', N'9', N'8', N'4', N'21', CAST(0x0000A6B0015D3A9B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'DA16B2A4-C8E3-4787-8C1B-13BD506DCCC1', 335, N'789638', N'17', N'04', N'2016-10-31 21:15:20', N'4', N'6', N'7', N'17', CAST(0x0000A6B0015E5F99 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'E1F88E34-0C9E-4C76-B3DC-8F94550EA75E', 336, N'789639', N'6', N'02', N'2016-10-31 21:20:20', N'0', N'6', N'0', N'6', CAST(0x0000A6B001602F47 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'1F3CE7D8-F0B2-4872-B03C-80BB450D8551', 337, N'789640', N'5', N'02', N'2016-10-31 21:25:20', N'0', N'5', N'0', N'5', CAST(0x0000A6B0016141E4 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'491A5E57-5C13-4783-8A50-2F0D0E6F9F78', 338, N'789642', N'13', N'01', N'2016-10-31 21:35:20', N'4', N'4', N'5', N'13', CAST(0x0000A6B001640112 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'4B9C677B-1D9E-4FC5-BE74-071B55E33288', 339, N'789643', N'19', N'03', N'2016-10-31 21:40:20', N'6', N'4', N'9', N'19', CAST(0x0000A6B0016577F6 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'3EF39450-FD26-4576-B693-88FF2CA8EBDB', 340, N'789644', N'9', N'01', N'2016-10-31 21:45:20', N'2', N'5', N'2', N'9', CAST(0x0000A6B00166EF01 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'470658B1-CB47-4E20-9554-CAB6446BD5CE', 341, N'789645', N'11', N'02', N'2016-10-31 21:50:20', N'0', N'3', N'8', N'11', CAST(0x0000A6B00167FD96 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'931810A4-AE3D-4A0B-95D6-8ADE8394CF17', 342, N'789646', N'12', N'01', N'2016-10-31 21:55:20', N'3', N'4', N'5', N'12', CAST(0x0000A6B001695072 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C127ADCD-0B00-4760-9501-4AC5C29D5FAD', 343, N'789647', N'14', N'01', N'2016-10-31 22:00:20', N'2', N'9', N'3', N'14', CAST(0x0000A6B0016ADED0 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'74E97AFD-44C4-42D1-A4E2-A480C95AB519', 344, N'789648', N'6', N'02', N'2016-10-31 22:05:20', N'0', N'4', N'2', N'6', CAST(0x0000A6B0016C0FE3 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'9C0B4306-D603-464C-A081-EB6E5A429096', 345, N'789650', N'6', N'02', N'2016-10-31 22:15:20', N'1', N'4', N'1', N'6', CAST(0x0000A6B0016EFD8D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'CBD57992-212F-46D4-B9FC-E6E209223FF5', 346, N'789651', N'8', N'04', N'2016-10-31 22:20:20', N'4', N'2', N'2', N'8', CAST(0x0000A6B001708BF6 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'0FFA758A-FAC7-4E47-A62F-2E9F0642D2A0', 347, N'789652', N'11', N'04', N'2016-10-31 22:25:20', N'2', N'5', N'4', N'11', CAST(0x0000A6B00171BCC6 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'6DA883AC-97CF-452F-B318-4695C3761658', 348, N'789653', N'21', N'02', N'2016-10-31 22:30:20', N'3', N'9', N'9', N'21', CAST(0x0000A6B001738F1D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'FECD3FF4-13D7-4F31-A208-1AC1822F3949', 349, N'789654', N'8', N'02', N'2016-10-31 22:35:20', N'7', N'1', N'0', N'8', CAST(0x0000A6B001745A42 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'401F2FBC-69DA-4316-A3B5-22267D1E757E', 350, N'789655', N'12', N'03', N'2016-10-31 22:40:20', N'2', N'5', N'5', N'12', CAST(0x0000A6B00175E702 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'79C8F59A-1195-4FA8-91A1-0F0F35367109', 351, N'789656', N'9', N'02', N'2016-10-31 22:45:20', N'3', N'0', N'6', N'9', CAST(0x0000A6B001775E24 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'1F928B64-C33A-409E-B0EB-631CF1EE261A', 352, N'789657', N'10', N'01', N'2016-10-31 22:50:20', N'2', N'7', N'1', N'10', CAST(0x0000A6B00178B802 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'1837B8EB-DE29-44FF-98F2-6E2E0758B542', 353, N'789658', N'13', N'02', N'2016-10-31 22:55:20', N'1', N'5', N'7', N'13', CAST(0x0000A6B00179FA72 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'1410E812-6BD4-4F9C-84D1-32D72221C6BF', 354, N'789659', N'5', N'01', N'2016-10-31 23:00:20', N'0', N'2', N'3', N'5', CAST(0x0000A6B0017B78C1 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'780C7FC7-52BC-417B-BB45-893A47E28060', 355, N'789660', N'20', N'02', N'2016-10-31 23:05:20', N'9', N'6', N'5', N'20', CAST(0x0000A6B0017CCA4D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'DADE64A1-2E35-45CE-8293-481ACF16D379', 356, N'789661', N'12', N'01', N'2016-10-31 23:10:20', N'5', N'6', N'1', N'12', CAST(0x0000A6B0017E2471 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'19E3F029-545F-4615-AF4F-FD7E6ECFEE70', 357, N'789662', N'20', N'03', N'2016-10-31 23:16:20', N'5', N'9', N'6', N'20', CAST(0x0000A6B0017F840E AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'23F449B6-0678-46E3-8F32-C2A31461EB97', 358, N'789663', N'10', N'01', N'2016-10-31 23:20:20', N'0', N'8', N'2', N'10', CAST(0x0000A6B00180EF51 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A07F273D-FDD4-4E75-95FA-82EFF510FC23', 359, N'789664', N'17', N'05', N'2016-10-31 23:25:20', N'8', N'6', N'3', N'17', CAST(0x0000A6B001823757 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'DC1B947D-82CA-4FE5-A8F1-6E24DE87C877', 360, N'789665', N'18', N'05', N'2016-10-31 23:30:20', N'1', N'9', N'8', N'18', CAST(0x0000A6B001837F73 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'29326E55-D6A1-45AC-9CC3-5DD1098D57EA', 361, N'789666', N'15', N'01', N'2016-10-31 23:35:20', N'9', N'0', N'6', N'15', CAST(0x0000A6B00184CA2A AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'BA23A0DA-382E-494D-8846-24EE38EA6A0C', 362, N'789667', N'19', N'02', N'2016-10-31 23:40:20', N'7', N'4', N'8', N'19', CAST(0x0000A6B001867AD1 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'0F5C2601-FE0E-47DA-AC5C-C527D5A46BC3', 363, N'789668', N'9', N'02', N'2016-10-31 23:45:20', N'6', N'1', N'2', N'9', CAST(0x0000A6B00187B5F4 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C60E177C-A865-4B61-A1B2-E82F4E67BBFA', 364, N'789669', N'25', N'02', N'2016-10-31 23:50:20', N'9', N'9', N'7', N'25', CAST(0x0000A6B00188F309 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'03A8FD33-B165-434A-B1F6-3245E8C0D493', 365, N'789670', N'9', N'04', N'2016-10-31 23:55:20', N'3', N'3', N'3', N'9', CAST(0x0000A6B0018A74C1 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'50060E69-D601-44B6-8A75-4EC70331970C', 366, N'789671', N'13', N'02', N'2016-11-01 09:05:20', N'7', N'3', N'3', N'13', CAST(0x0000A6B1009625D9 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'1A31EDAF-FC65-4272-AE2B-C746C4624BCE', 367, N'789672', N'14', N'01', N'2016-11-01 09:10:20', N'9', N'4', N'1', N'14', CAST(0x0000A6B1009788D1 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'40716203-B600-4A91-8271-B5DB3CE78510', 368, N'789673', N'12', N'03', N'2016-11-01 09:15:20', N'1', N'5', N'6', N'12', CAST(0x0000A6B10098D943 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'68EB270E-7D5B-42EC-A454-623C022F3451', 369, N'789674', N'19', N'01', N'2016-11-01 09:20:20', N'4', N'6', N'9', N'19', CAST(0x0000A6B10099FEB4 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'CA2F3369-9E87-4D2D-AD2A-F46DE5C4B9A7', 370, N'789675', N'19', N'01', N'2016-11-01 09:25:20', N'2', N'8', N'9', N'19', CAST(0x0000A6B1009B80DB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'2805BDE5-50FD-42EF-96E7-AF9E56C98A3C', 371, N'789676', N'2', N'02', N'2016-11-01 09:30:20', N'2', N'0', N'0', N'2', CAST(0x0000A6B1009CEF3C AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'275BAA45-7103-4160-8BBE-00AB0A23507A', 372, N'789677', N'14', N'02', N'2016-11-01 09:35:20', N'8', N'5', N'1', N'14', CAST(0x0000A6B1009E3455 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'4214A849-DD9F-419D-B644-43D67B6D1EB2', 373, N'789678', N'7', N'01', N'2016-11-01 09:40:20', N'4', N'0', N'3', N'7', CAST(0x0000A6B1009F9F97 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'89EC4557-D282-4D80-ADDD-AADAA6553BCA', 374, N'789679', N'12', N'01', N'2016-11-01 09:45:20', N'5', N'4', N'3', N'12', CAST(0x0000A6B100A0DC15 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'6146A96A-BFFB-4936-9FD1-3CDC22880694', 375, N'789680', N'14', N'01', N'2016-11-01 09:50:20', N'9', N'0', N'5', N'14', CAST(0x0000A6B100A23C4A AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'0F797EF9-4DA8-46D8-BAB6-0C5DCE1A44AC', 376, N'789681', N'17', N'05', N'2016-11-01 09:55:20', N'5', N'6', N'6', N'17', CAST(0x0000A6B100A3ED2B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'91EE8E7A-3825-4961-AC13-24FCA40CF781', 377, N'789682', N'15', N'01', N'2016-11-01 10:00:20', N'5', N'5', N'5', N'15', CAST(0x0000A6B100A51DF7 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'36A23CAE-18CF-4CD5-A101-CEAE1AF97455', 378, N'789683', N'20', N'10', N'2016-11-01 10:05:20', N'9', N'8', N'3', N'20', CAST(0x0000A6B100A65A38 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'DEB698EF-6453-4B37-A4BB-E6A62D3A72A9', 379, N'789684', N'9', N'01', N'2016-11-01 10:10:20', N'0', N'5', N'4', N'9', CAST(0x0000A6B100A7F471 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'D26C8C53-F27B-4346-8676-F9C5DEC01491', 380, N'789685', N'19', N'03', N'2016-11-01 10:15:20', N'2', N'9', N'8', N'19', CAST(0x0000A6B100A93C95 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'35804966-1728-49D3-9617-9C4B1B31CA47', 381, N'789686', N'3', N'02', N'2016-11-01 10:20:20', N'1', N'2', N'0', N'3', CAST(0x0000A6B100AAB38B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'6BC851AD-93CE-435D-B049-443DB1D4A231', 382, N'789687', N'19', N'01', N'2016-11-01 10:25:20', N'6', N'8', N'5', N'19', CAST(0x0000A6B100ABD887 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'65568F1B-A16A-400B-8EF1-09C89FC3259C', 383, N'789688', N'11', N'01', N'2016-11-01 10:30:20', N'7', N'4', N'0', N'11', CAST(0x0000A6B100AD7E65 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'51220951-E606-43D8-885E-7BC18B64398B', 384, N'789689', N'20', N'02', N'2016-11-01 10:35:20', N'3', N'9', N'8', N'20', CAST(0x0000A6B100AEBAEB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'5D47202F-1DEF-4AAA-8C32-123E6946D072', 385, N'789690', N'18', N'01', N'2016-11-01 10:40:20', N'6', N'9', N'3', N'18', CAST(0x0000A6B100B027B0 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'502C67D4-9FB1-45B2-9A09-3DDA066493A2', 386, N'789691', N'16', N'03', N'2016-11-01 10:45:20', N'9', N'6', N'1', N'16', CAST(0x0000A6B100B16284 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'D60EF534-DB66-4285-AA51-91BF3359E989', 387, N'789692', N'15', N'02', N'2016-11-01 10:50:20', N'7', N'6', N'2', N'15', CAST(0x0000A6B100B2F0E4 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'D7AA83C0-6146-4DA2-AECE-999DB3AA1B73', 388, N'789693', N'7', N'02', N'2016-11-01 10:55:20', N'1', N'1', N'5', N'7', CAST(0x0000A6B100B45C42 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'56C166F6-519A-442E-B0CC-84D03A249121', 389, N'789694', N'14', N'04', N'2016-11-01 11:00:20', N'0', N'9', N'5', N'14', CAST(0x0000A6B100B5A588 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'56F3F879-3773-40B8-807B-31CB007FA59D', 390, N'789695', N'17', N'03', N'2016-11-01 11:05:20', N'0', N'9', N'8', N'17', CAST(0x0000A6B100B6F8AD AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'474C5FBF-8C71-4B6B-94B4-2D4E9E878ECD', 391, N'789696', N'20', N'01', N'2016-11-01 11:10:20', N'5', N'8', N'7', N'20', CAST(0x0000A6B100B8C3C3 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'E1BDE3A7-3A66-45AD-9263-E2BA1DDFBC65', 392, N'789697', N'18', N'01', N'2016-11-01 11:15:20', N'8', N'8', N'2', N'18', CAST(0x0000A6B100B9ABB0 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'92586647-C397-4581-80E9-6821B68FEB54', 393, N'789698', N'20', N'01', N'2016-11-01 11:20:20', N'8', N'5', N'7', N'20', CAST(0x0000A6B100BB4627 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'3E5F0D11-D823-478C-952F-673B345136F8', 394, N'789699', N'10', N'01', N'2016-11-01 11:25:20', N'4', N'6', N'0', N'10', CAST(0x0000A6B100BC76E7 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'85F57062-049F-45DD-908F-19D37B5459CB', 395, N'789700', N'23', N'01', N'2016-11-01 11:30:20', N'9', N'5', N'9', N'23', CAST(0x0000A6B100BDBE7D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'3AC43571-0DF6-4081-AFC1-27040301970A', 396, N'789701', N'18', N'02', N'2016-11-01 11:35:20', N'4', N'9', N'5', N'18', CAST(0x0000A6B100BF3580 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'00880792-7A48-4702-AB65-CD8F56861C27', 397, N'789702', N'10', N'01', N'2016-11-01 11:40:20', N'2', N'7', N'1', N'10', CAST(0x0000A6B100C0B843 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'F6A8FD0A-11ED-4A97-AB66-34C926C5630B', 398, N'789703', N'14', N'04', N'2016-11-01 11:45:20', N'1', N'8', N'5', N'14', CAST(0x0000A6B100C1C5EA AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'CCC3DFF4-AD08-4F5C-A9EF-A30D200EDCB4', 399, N'789704', N'19', N'02', N'2016-11-01 11:50:20', N'8', N'2', N'9', N'19', CAST(0x0000A6B100C35FDE AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'BA3E682C-0A28-44E1-A627-C60740719818', 400, N'789705', N'13', N'01', N'2016-11-01 11:55:20', N'1', N'4', N'8', N'13', CAST(0x0000A6B100C490CD AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'FE65B7EA-4EBE-4B31-887B-85E2BC520AD8', 401, N'789706', N'7', N'02', N'2016-11-01 12:00:20', N'3', N'1', N'3', N'7', CAST(0x0000A6B100C5FBEC AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'6FE9A521-D27F-4878-B110-0577568DCB29', 402, N'789707', N'12', N'02', N'2016-11-01 12:05:20', N'7', N'1', N'4', N'12', CAST(0x0000A6B100C79B8F AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'F5F9EE7D-8D6D-4174-8FF6-74CFC134C5F5', 403, N'789708', N'16', N'01', N'2016-11-01 12:10:20', N'1', N'8', N'7', N'16', CAST(0x0000A6B100C97164 AS DateTime), N'admin')
GO
print 'Processed 400 total records'
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A1F2414C-DDE9-457F-B53D-8BCD7532A688', 404, N'789709', N'6', N'01', N'2016-11-01 12:15:20', N'1', N'0', N'5', N'6', CAST(0x0000A6B100CA5531 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'DCC56184-67A4-4E99-8EE3-84DF6ED36C8E', 405, N'789710', N'17', N'02', N'2016-11-01 12:20:20', N'7', N'6', N'4', N'17', CAST(0x0000A6B100CB6EA1 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'26D0A055-6AB6-4ED9-9698-F37B0AEE03B5', 406, N'789711', N'12', N'02', N'2016-11-01 12:25:20', N'5', N'0', N'7', N'12', CAST(0x0000A6B100CCB74C AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'D20C67DA-64A3-4261-B787-DEF1E8C7B2DE', 407, N'789712', N'14', N'01', N'2016-11-01 12:30:20', N'0', N'6', N'8', N'14', CAST(0x0000A6B100CE7FE8 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'5E6481C0-D739-4368-81C4-6D45F28DBEA2', 408, N'789713', N'13', N'02', N'2016-11-01 12:35:20', N'0', N'4', N'9', N'13', CAST(0x0000A6B100CFA47F AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'6F5EC6B6-4335-40D4-8924-A5207C0E7401', 409, N'789714', N'12', N'10', N'2016-11-01 12:40:20', N'4', N'1', N'7', N'12', CAST(0x0000A6B100D132ED AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'0099FF30-90BC-48D7-B407-A14D915B10C1', 410, N'789715', N'17', N'03', N'2016-11-01 12:45:20', N'4', N'7', N'6', N'17', CAST(0x0000A6B100D29E4F AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'4EAC2357-C843-4ADE-98BA-10DBE058E023', 411, N'789716', N'17', N'01', N'2016-11-01 12:50:20', N'1', N'8', N'8', N'17', CAST(0x0000A6B100D3FDDF AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'50D67FED-CFD9-4B84-8F6F-A8E291ED9F08', 412, N'789717', N'11', N'02', N'2016-11-01 12:55:20', N'0', N'5', N'6', N'11', CAST(0x0000A6B100D52EA1 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'77DC7E85-11A2-4BA5-93F4-91246907D67F', 413, N'789718', N'10', N'01', N'2016-11-01 13:00:20', N'2', N'4', N'4', N'10', CAST(0x0000A6B100D68F3A AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'B8681F00-04CB-4512-AC8A-139AED6F34CB', 414, N'789719', N'14', N'02', N'2016-11-01 13:05:20', N'7', N'5', N'2', N'14', CAST(0x0000A6B100D7EEA8 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'9F03D490-FD0F-45B4-9D43-A5092B81B59C', 415, N'789720', N'5', N'01', N'2016-11-01 13:10:20', N'0', N'3', N'2', N'5', CAST(0x0000A6B100D959F2 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'35AF50E6-8B66-4F9B-ADEE-71A265C43D31', 416, N'789721', N'23', N'02', N'2016-11-01 13:15:20', N'5', N'9', N'9', N'23', CAST(0x0000A6B100DAACC3 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'F1554D11-B541-4CAE-A670-51CB0116E8CE', 417, N'789722', N'13', N'01', N'2016-11-01 13:20:20', N'1', N'7', N'5', N'13', CAST(0x0000A6B100DC1803 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'D1D7E627-B9CA-450F-B459-546D3EDBECC1', 418, N'789723', N'17', N'01', N'2016-11-01 13:25:20', N'6', N'9', N'2', N'17', CAST(0x0000A6B100DD6CE0 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'28BEF4DF-AE85-4155-BD45-6CAC2CCB23C5', 419, N'789724', N'9', N'01', N'2016-11-01 13:30:20', N'3', N'2', N'4', N'9', CAST(0x0000A6B100DECBD1 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'8C1AC401-802E-49F0-B9BC-8D088B10A0F2', 420, N'789725', N'3', N'05', N'2016-11-01 13:35:20', N'2', N'0', N'1', N'3', CAST(0x0000A6B100E06D79 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'91383C9C-45CE-48A8-B895-F342EC740D09', 421, N'789726', N'16', N'04', N'2016-11-01 13:40:20', N'8', N'6', N'2', N'16', CAST(0x0000A6B100E1A475 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'3487160A-5302-4734-9CF1-43D9C94AB9E0', 422, N'789727', N'16', N'01', N'2016-11-01 13:45:20', N'3', N'4', N'9', N'16', CAST(0x0000A6B100E2F5DB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'1A624C04-3E4F-4D40-A212-E4CD644C7572', 423, N'789728', N'14', N'03', N'2016-11-01 13:50:20', N'8', N'2', N'4', N'14', CAST(0x0000A6B100E455FA AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'2262B00E-A406-4DF6-9391-5A5A06BFE60A', 424, N'789729', N'19', N'01', N'2016-11-01 13:55:20', N'9', N'1', N'9', N'19', CAST(0x0000A6B100E588A2 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'7CC89698-FD81-4A0C-B126-0E5296C5C468', 425, N'789730', N'6', N'01', N'2016-11-01 14:00:20', N'2', N'2', N'2', N'6', CAST(0x0000A6B100E6DD75 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'99435685-3048-4680-A74D-77F24B33720E', 426, N'789731', N'18', N'01', N'2016-11-01 14:05:20', N'8', N'7', N'3', N'18', CAST(0x0000A6B100E82F73 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'DF8B92E3-2765-4BDB-9966-DB172A288C32', 427, N'789732', N'13', N'01', N'2016-11-01 14:10:20', N'0', N'6', N'7', N'13', CAST(0x0000A6B100E9AA17 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'EBE51652-5F3D-43B0-B31F-23CC79E49C63', 428, N'789733', N'12', N'01', N'2016-11-01 14:15:20', N'6', N'4', N'2', N'12', CAST(0x0000A6B100EAED9D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'F512D979-C4CF-482B-9C60-3104A1D11313', 429, N'789734', N'12', N'01', N'2016-11-01 14:20:20', N'6', N'5', N'1', N'12', CAST(0x0000A6B100EC6959 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'ED876980-DA06-4318-96BA-0DE2719D07DD', 430, N'789735', N'18', N'05', N'2016-11-01 14:25:20', N'7', N'2', N'9', N'18', CAST(0x0000A6B100EDB021 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'550B14AA-BFC1-45D4-B475-AD52EBE388E9', 431, N'789736', N'14', N'01', N'2016-11-01 14:30:20', N'3', N'6', N'5', N'14', CAST(0x0000A6B100F00056 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'8EDC8CCD-9DB6-4304-8DC9-D1ADA04B53E4', 432, N'789737', N'16', N'02', N'2016-11-01 14:35:20', N'6', N'8', N'2', N'16', CAST(0x0000A6B100F072CF AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'92078E3E-0E38-4D0B-9499-931315B7AEE8', 433, N'789738', N'22', N'01', N'2016-11-01 14:40:20', N'9', N'7', N'6', N'22', CAST(0x0000A6B100F1F19E AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'7FB95399-6F03-4091-B61E-F42D908F4208', 434, N'789739', N'3', N'02', N'2016-11-01 14:45:20', N'1', N'0', N'2', N'3', CAST(0x0000A6B100F336A6 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'03C18D20-B51B-4493-803E-34462091869F', 435, N'789740', N'14', N'01', N'2016-11-01 14:50:20', N'5', N'3', N'6', N'14', CAST(0x0000A6B100F4B76C AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'BC164BEE-A576-465F-9E34-EC8DCD4E453F', 436, N'789741', N'18', N'02', N'2016-11-01 14:55:20', N'7', N'2', N'9', N'18', CAST(0x0000A6B100F5F3D3 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'6B1C1563-AB9E-4C27-8171-2B0E4CAE472E', 437, N'789742', N'11', N'01', N'2016-11-01 15:00:20', N'5', N'3', N'3', N'11', CAST(0x0000A6B100F762A7 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'BCDFC921-54F8-48AB-8A97-45210A28DDF6', 438, N'789743', N'11', N'01', N'2016-11-01 15:05:20', N'3', N'3', N'5', N'11', CAST(0x0000A6B100F8B041 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'B7C43D9E-A238-498A-A133-258CDBCA82A9', 439, N'789744', N'9', N'05', N'2016-11-01 15:10:20', N'0', N'3', N'6', N'9', CAST(0x0000A6B100FA1A74 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'D6A1F813-A312-4CBF-BC5C-241A43839CD2', 440, N'789745', N'14', N'02', N'2016-11-01 15:15:20', N'6', N'4', N'4', N'14', CAST(0x0000A6B100FB707B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'0608EE9F-6322-4FDE-B811-EF7B69121C79', 441, N'789746', N'10', N'02', N'2016-11-01 15:20:20', N'0', N'8', N'2', N'10', CAST(0x0000A6B100FCE0CE AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'7298D33E-A393-48B5-9A2F-7B1EF79F4C67', 442, N'789747', N'21', N'02', N'2016-11-01 15:25:20', N'7', N'7', N'7', N'21', CAST(0x0000A6B100FE293E AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'05BD0B8C-593E-4ED9-83D7-96CB01182E1A', 443, N'789748', N'7', N'02', N'2016-11-01 15:30:20', N'7', N'0', N'0', N'7', CAST(0x0000A6B1010069CB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A370FE78-65EC-4065-9A9E-A8BA529A7954', 444, N'789749', N'14', N'02', N'2016-11-01 15:35:20', N'5', N'4', N'5', N'14', CAST(0x0000A6B10100E06C AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'F6C03544-CB78-4485-B76C-6A9868F53C09', 445, N'789750', N'18', N'02', N'2016-11-01 15:40:20', N'5', N'7', N'6', N'18', CAST(0x0000A6B101025F61 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'1A062059-6957-4E91-BCD2-CA8432482BE1', 446, N'789757', N'5', N'01', N'2016-11-01 16:15:20', N'3', N'0', N'2', N'5', CAST(0x0000A6B1010C38FF AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'6F7C3C4D-696E-41F7-B460-6C4AA098F64E', 447, N'789763', N'9', N'02', N'2016-11-01 16:45:20', N'5', N'3', N'1', N'9', CAST(0x0000A6B101143F07 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'ED9FB413-CD5D-4662-9CA3-53E52FEFF417', 448, N'789764', N'18', N'05', N'2016-11-01 16:50:20', N'4', N'5', N'9', N'18', CAST(0x0000A6B10115AC42 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'0A250E3A-B933-41BE-834C-FF7057839A9B', 449, N'789765', N'7', N'03', N'2016-11-01 16:55:20', N'1', N'3', N'3', N'7', CAST(0x0000A6B10116EC06 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'44BAF3DF-BADB-46D0-B1A9-61354EB88051', 450, N'789767', N'6', N'01', N'2016-11-01 17:05:20', N'5', N'0', N'1', N'6', CAST(0x0000A6B10119A241 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'4B2C19DD-C08C-463C-A439-D8C94D10FA22', 451, N'789768', N'17', N'01', N'2016-11-01 17:10:20', N'6', N'9', N'2', N'17', CAST(0x0000A6B1011B1704 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'654A3C9F-C66A-4C66-8DA7-36F93B533DC0', 452, N'789769', N'9', N'10', N'2016-11-01 17:15:20', N'4', N'5', N'0', N'9', CAST(0x0000A6B1011D2B7B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'CFAC59A3-B4BB-4FD3-A7B5-F599D5AAD590', 453, N'789770', N'11', N'03', N'2016-11-01 17:20:20', N'7', N'4', N'0', N'11', CAST(0x0000A6B1011DC99D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'07C3AB3A-02CF-4708-B3FE-8F9B20DF00A4', 454, N'789771', N'6', N'02', N'2016-11-01 17:25:20', N'1', N'0', N'5', N'6', CAST(0x0000A6B1011F2F9B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A931DF35-A94C-493F-9954-1B37E2C0CEC1', 455, N'789772', N'14', N'01', N'2016-11-01 17:30:20', N'2', N'5', N'7', N'14', CAST(0x0000A6B101208C38 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'D00ED346-7645-4F10-BD67-B502694A8613', 456, N'789773', N'7', N'01', N'2016-11-01 17:35:20', N'1', N'4', N'2', N'7', CAST(0x0000A6B10122BC2D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'6DA01118-46AD-43AA-AFDF-066DAF6BF01A', 457, N'789774', N'11', N'02', N'2016-11-01 17:40:20', N'2', N'0', N'9', N'11', CAST(0x0000A6B101234EB7 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'F7E8B3C2-8467-4E68-ADA7-7857ABA6DA90', 458, N'789775', N'18', N'01', N'2016-11-01 17:45:20', N'3', N'8', N'7', N'18', CAST(0x0000A6B10124A70E AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'22353CB5-D016-4840-A890-492C04FDBF1A', 459, N'789776', N'9', N'02', N'2016-11-01 17:50:20', N'4', N'2', N'3', N'9', CAST(0x0000A6B10125FBFB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'498CE232-BD00-4836-B0D5-26D6F937F7B8', 460, N'789777', N'11', N'02', N'2016-11-01 17:55:20', N'0', N'8', N'3', N'11', CAST(0x0000A6B101275AF2 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A80D81F6-C22D-4C58-9494-2348956A86B2', 461, N'789778', N'6', N'01', N'2016-11-01 18:00:20', N'1', N'5', N'0', N'6', CAST(0x0000A6B10128D619 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'4EC5D729-0F07-4A6D-8B3B-F727626D7D59', 462, N'789779', N'11', N'02', N'2016-11-01 18:05:20', N'1', N'1', N'9', N'11', CAST(0x0000A6B1012A19FA AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'DE17CFAD-2D4D-439F-8153-39F80461DB2A', 463, N'789780', N'7', N'03', N'2016-11-01 18:10:20', N'2', N'3', N'2', N'7', CAST(0x0000A6B1012B7D7B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'410E59BD-A651-4B0E-BA40-48E026E36B8F', 464, N'789781', N'25', N'01', N'2016-11-01 18:15:20', N'8', N'9', N'8', N'25', CAST(0x0000A6B1012CE17E AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'295AD32D-EFDE-43F8-838E-39C1ACA1CF53', 465, N'789782', N'17', N'01', N'2016-11-01 18:20:20', N'6', N'8', N'3', N'17', CAST(0x0000A6B1012E5083 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'F30B9B12-4353-418F-B6DA-0B8C164EBEC2', 466, N'789783', N'8', N'02', N'2016-11-01 18:25:20', N'0', N'2', N'6', N'8', CAST(0x0000A6B1012F9AB0 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'EF832A5D-16E2-4E18-94E7-C7B9A0B13371', 467, N'789784', N'18', N'02', N'2016-11-01 18:30:20', N'7', N'5', N'6', N'18', CAST(0x0000A6B1013142E7 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'1E40DECE-302F-4B80-85F1-C2C2298CD1ED', 468, N'789785', N'13', N'02', N'2016-11-01 18:35:20', N'9', N'0', N'4', N'13', CAST(0x0000A6B101325F77 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C5D699D1-5AC8-486D-961F-824F815DAB16', 469, N'789786', N'18', N'03', N'2016-11-01 18:40:20', N'9', N'8', N'1', N'18', CAST(0x0000A6B10134BDD2 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'47CA0196-C0EE-43F5-826D-04A4F0158BB3', 470, N'789787', N'10', N'01', N'2016-11-01 18:45:20', N'3', N'6', N'1', N'10', CAST(0x0000A6B10135149B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'91AE092E-F3A7-4E48-A992-4811CC5637E2', 471, N'789788', N'19', N'02', N'2016-11-01 18:50:20', N'9', N'4', N'6', N'19', CAST(0x0000A6B101369FF0 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'2C216F76-6D7F-4F8D-84C7-EE6F63A672C4', 472, N'789789', N'17', N'02', N'2016-11-01 18:55:20', N'8', N'7', N'2', N'17', CAST(0x0000A6B10137ED12 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'6350037B-033A-4689-9146-291C6AFF0936', 473, N'789790', N'12', N'02', N'2016-11-01 19:00:20', N'8', N'1', N'3', N'12', CAST(0x0000A6B101394DAC AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A65B0C96-52D2-42E2-8C43-E491E2B5753D', 474, N'789791', N'11', N'04', N'2016-11-01 19:05:20', N'2', N'5', N'4', N'11', CAST(0x0000A6B1013B6910 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'9FDE151D-4DA1-4C71-B681-1F1E2F94C045', 475, N'789792', N'14', N'02', N'2016-11-01 19:10:20', N'2', N'9', N'3', N'14', CAST(0x0000A6B1013C053C AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A92B7001-CD01-4538-9586-150438908DE7', 476, N'789793', N'8', N'01', N'2016-11-01 19:15:20', N'6', N'1', N'1', N'8', CAST(0x0000A6B1013D5389 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'20562622-4876-4517-8ABC-7D4D54D42566', 477, N'789794', N'14', N'02', N'2016-11-01 19:20:20', N'8', N'4', N'2', N'14', CAST(0x0000A6B1013ECC15 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'99B658F7-BFED-4756-8D53-A733CB2E39F4', 478, N'789795', N'7', N'02', N'2016-11-01 19:25:20', N'1', N'1', N'5', N'7', CAST(0x0000A6B101401C1F AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'69F54DFF-C880-4439-A37D-D904F846B24F', 479, N'789796', N'2', N'01', N'2016-11-01 19:30:20', N'0', N'2', N'0', N'2', CAST(0x0000A6B101418CD4 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'5C55892C-3B6A-43B2-83D5-8973963270D9', 480, N'789797', N'23', N'02', N'2016-11-01 19:35:20', N'6', N'9', N'8', N'23', CAST(0x0000A6B10142D393 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'CF7464DA-1929-4EAC-A46A-F1CEF2528099', 481, N'789798', N'2', N'01', N'2016-11-01 19:40:20', N'0', N'1', N'1', N'2', CAST(0x0000A6B101446069 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'B6591F61-8891-4066-80AB-98F608410E1A', 482, N'789799', N'24', N'02', N'2016-11-01 19:45:20', N'6', N'9', N'9', N'24', CAST(0x0000A6B101458935 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'12D1FDB1-D20C-4DAF-82A1-3DF51AF18EC3', 483, N'789800', N'17', N'01', N'2016-11-01 19:50:20', N'2', N'8', N'7', N'17', CAST(0x0000A6B10146FDD0 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'E4700074-F048-4283-A05E-61C90C9CC081', 484, N'789801', N'12', N'04', N'2016-11-01 19:55:20', N'3', N'9', N'0', N'12', CAST(0x0000A6B10148568B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A3BC6AD8-2C4A-418D-BC36-91865E741524', 485, N'789802', N'17', N'02', N'2016-11-01 20:00:20', N'4', N'7', N'6', N'17', CAST(0x0000A6B10149D7A1 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C5CC3F51-7C28-45A6-96CF-4A40FFE62CC3', 486, N'789803', N'11', N'02', N'2016-11-01 20:05:20', N'0', N'4', N'7', N'11', CAST(0x0000A6B1014B0C57 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'07459BE2-0BD6-46F6-A308-DEB451E407BB', 487, N'789804', N'14', N'02', N'2016-11-01 20:10:20', N'2', N'5', N'7', N'14', CAST(0x0000A6B1014C8743 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'D4F284C6-EB3C-47B1-A9D7-971C86700960', 488, N'789805', N'8', N'02', N'2016-11-01 20:15:20', N'3', N'2', N'3', N'8', CAST(0x0000A6B1014DEA41 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'3D58FCE0-1497-4F73-9D19-20D259D7CEDB', 489, N'789806', N'17', N'02', N'2016-11-01 20:20:20', N'4', N'4', N'9', N'17', CAST(0x0000A6B1014F4C13 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'910DF4B9-301E-459D-AA99-71DAD6C9074F', 490, N'789807', N'0', N'02', N'2016-11-01 20:25:20', N'0', N'0', N'0', N'0', CAST(0x0000A6B101508EC8 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'E681AB67-B322-4E29-88B8-C701EE42F42E', 491, N'789808', N'9', N'02', N'2016-11-01 20:30:20', N'0', N'9', N'0', N'9', CAST(0x0000A6B10151F87B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'B9A055E3-C2A3-49D8-9C42-1D250973D5A3', 492, N'789809', N'20', N'02', N'2016-11-01 20:35:20', N'4', N'8', N'8', N'20', CAST(0x0000A6B1015377F6 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'033B8FFE-35ED-4DDC-9862-3B2A3251D988', 493, N'789810', N'6', N'01', N'2016-11-01 20:40:20', N'2', N'3', N'1', N'6', CAST(0x0000A6B10154ADC3 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'30A0022D-8862-486B-B847-540D1F10BD72', 494, N'789811', N'8', N'02', N'2016-11-01 20:45:20', N'0', N'1', N'7', N'8', CAST(0x0000A6B10156D8FC AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'90580AEE-4730-468F-BECA-028F2566ED11', 495, N'789812', N'24', N'02', N'2016-11-01 20:50:20', N'8', N'7', N'9', N'24', CAST(0x0000A6B101579347 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'ED6481E4-DC64-4E45-9312-169DD6042931', 496, N'789813', N'7', N'02', N'2016-11-01 20:55:20', N'0', N'0', N'7', N'7', CAST(0x0000A6B10158CC83 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'1FE3823C-955A-45CC-9142-C7DBB41AB1F9', 497, N'789814', N'22', N'02', N'2016-11-01 21:00:20', N'7', N'7', N'8', N'22', CAST(0x0000A6B1015A4939 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'118560C7-F442-43CB-9922-92BD662BE9B8', 498, N'789815', N'11', N'03', N'2016-11-01 21:05:20', N'3', N'4', N'4', N'11', CAST(0x0000A6B1015B9F11 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'70E12DE3-9211-4CC6-80C7-43C627D9ADFB', 499, N'789816', N'11', N'01', N'2016-11-01 21:10:20', N'4', N'4', N'3', N'11', CAST(0x0000A6B1015CEDD7 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'0975692B-9762-42E3-9EE4-4C5FB49F9D61', 500, N'789817', N'14', N'02', N'2016-11-01 21:15:20', N'6', N'5', N'3', N'14', CAST(0x0000A6B1015F15D5 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'454CF341-C895-4741-AA6C-F5EBD1105EB3', 501, N'789818', N'9', N'01', N'2016-11-01 21:20:20', N'6', N'1', N'2', N'9', CAST(0x0000A6B1015FCD62 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'DF151EBD-F6AB-4AFE-A8E4-780F2339D98E', 502, N'789819', N'13', N'01', N'2016-11-01 21:25:20', N'9', N'2', N'2', N'13', CAST(0x0000A6B101610DCF AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'1F52618D-CB07-404E-B4F5-D24C16A31316', 503, N'789820', N'2', N'02', N'2016-11-01 21:30:20', N'0', N'1', N'1', N'2', CAST(0x0000A6B101630B13 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'CED1205F-0374-4CDF-A69E-07A46BC29E06', 504, N'789821', N'19', N'01', N'2016-11-01 21:35:20', N'8', N'4', N'7', N'19', CAST(0x0000A6B10163C9C9 AS DateTime), N'admin')
GO
print 'Processed 500 total records'
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'02397871-CF4C-4FBF-9938-CB08B7083C97', 505, N'789822', N'6', N'04', N'2016-11-01 21:40:20', N'0', N'2', N'4', N'6', CAST(0x0000A6B101654456 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'79A9A1C5-A0BF-4104-86D9-EA9E487A88CD', 506, N'789823', N'4', N'01', N'2016-11-01 21:45:20', N'3', N'1', N'0', N'4', CAST(0x0000A6B1016721FA AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'43EE26F8-85D4-434C-AF46-5B7258A72A3E', 507, N'789824', N'7', N'02', N'2016-11-01 21:50:20', N'5', N'2', N'0', N'7', CAST(0x0000A6B101680447 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'CE42E8D1-CAE4-4E92-BA8C-06BB05C3ADE9', 508, N'789825', N'5', N'01', N'2016-11-01 21:55:20', N'3', N'2', N'0', N'5', CAST(0x0000A6B101694762 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'18BE9ACB-F135-4565-A051-5BD433883C6F', 509, N'789826', N'13', N'01', N'2016-11-01 22:00:20', N'6', N'1', N'6', N'13', CAST(0x0000A6B1016AB8C0 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'E3CE87B9-E69A-4A95-84A4-6E1FD001F8A6', 510, N'789827', N'20', N'01', N'2016-11-01 22:05:20', N'9', N'7', N'4', N'20', CAST(0x0000A6B1016C0BA2 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'857863A9-210B-4247-ADAF-FE655AA10212', 511, N'789828', N'17', N'01', N'2016-11-01 22:10:20', N'2', N'8', N'7', N'17', CAST(0x0000A6B1016DAED2 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'CA72EE0F-BADE-4D50-8C31-2A43C6D4DFD9', 512, N'789829', N'17', N'02', N'2016-11-01 22:15:20', N'7', N'8', N'2', N'17', CAST(0x0000A6B1016EC3DB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'CF4D3565-D31A-41D9-B2BA-9A154DA311B7', 513, N'789830', N'18', N'01', N'2016-11-01 22:20:20', N'7', N'5', N'6', N'18', CAST(0x0000A6B10170335C AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'2DAC5761-0F47-4B03-998F-46A1191CF366', 514, N'789831', N'12', N'02', N'2016-11-01 22:25:20', N'3', N'3', N'6', N'12', CAST(0x0000A6B101718CB4 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A2119019-C7ED-4C0D-A65F-D4D117A3E885', 515, N'789832', N'11', N'02', N'2016-11-01 22:30:20', N'4', N'1', N'6', N'11', CAST(0x0000A6B101730EC0 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'FF81A167-A77E-4DAF-99B5-2F73B64CE980', 516, N'789833', N'7', N'02', N'2016-11-01 22:35:20', N'4', N'1', N'2', N'7', CAST(0x0000A6B101744F31 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'1BCEAA6E-8365-459E-A10D-71D3085D57E7', 517, N'789834', N'16', N'02', N'2016-11-01 22:40:20', N'8', N'5', N'3', N'16', CAST(0x0000A6B10175B95C AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A3B5987E-72BF-41DE-83B6-BF9198C4FA8B', 518, N'789835', N'14', N'01', N'2016-11-01 22:45:20', N'2', N'8', N'4', N'14', CAST(0x0000A6B1017703EA AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'539FC4A9-692F-46B1-B9B7-54909D5E2E41', 519, N'789836', N'12', N'04', N'2016-11-01 22:50:20', N'9', N'0', N'3', N'12', CAST(0x0000A6B101787DE2 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'409F7118-C003-4FAA-97AC-9E52E9876289', 520, N'789837', N'22', N'01', N'2016-11-01 22:55:20', N'9', N'4', N'9', N'22', CAST(0x0000A6B1017A81AD AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'F72B5166-2A45-4280-BAD5-DC9BD71D55BF', 521, N'789838', N'19', N'02', N'2016-11-01 23:00:20', N'7', N'9', N'3', N'19', CAST(0x0000A6B1017B4791 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'9051F93C-B1A1-4223-959C-2B50F8D417ED', 522, N'789839', N'14', N'05', N'2016-11-01 23:05:20', N'6', N'1', N'7', N'14', CAST(0x0000A6B1017C8196 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'885BDD21-1DF1-4109-8961-139FDC49D038', 523, N'789840', N'15', N'01', N'2016-11-01 23:10:20', N'8', N'0', N'7', N'15', CAST(0x0000A6B1017DF154 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'8F92EDBD-5103-452A-868A-FAD33030C962', 524, N'789841', N'6', N'03', N'2016-11-01 23:15:20', N'5', N'0', N'1', N'6', CAST(0x0000A6B1017F416B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'E9EC7CDE-041C-448E-9D78-735BD8D7D2CA', 525, N'789842', N'7', N'01', N'2016-11-01 23:20:20', N'1', N'4', N'2', N'7', CAST(0x0000A6B10180CD0A AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'409724C0-5064-4311-A961-4D5521E456D8', 526, N'789843', N'18', N'02', N'2016-11-01 23:25:20', N'9', N'2', N'7', N'18', CAST(0x0000A6B101820022 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'2C12FEA7-FFFF-483F-815A-75FF7E8CBFBB', 527, N'789844', N'6', N'01', N'2016-11-01 23:30:20', N'1', N'0', N'5', N'6', CAST(0x0000A6B101837A2D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'06AA0EF9-8EFC-40FA-84C2-96F6565183B3', 528, N'789845', N'6', N'01', N'2016-11-01 23:35:20', N'1', N'4', N'1', N'6', CAST(0x0000A6B10184BE4C AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'E7669C73-D943-409F-94B8-A0E1BC2655D7', 529, N'789846', N'16', N'03', N'2016-11-01 23:40:20', N'1', N'8', N'7', N'16', CAST(0x0000A6B101862D7C AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'E60F6DE4-ECEC-4B5D-9503-0F9DD0397337', 530, N'789847', N'15', N'04', N'2016-11-01 23:45:20', N'2', N'5', N'8', N'15', CAST(0x0000A6B101877C67 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'462ADB18-B542-4E3A-8877-E26FFCA6E666', 531, N'789848', N'10', N'03', N'2016-11-01 23:50:20', N'0', N'3', N'7', N'10', CAST(0x0000A6B10188F47E AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'7580A4CD-F440-479A-BF89-7536C9F9ABD1', 532, N'789849', N'20', N'01', N'2016-11-01 23:55:20', N'9', N'6', N'5', N'20', CAST(0x0000A6B1018A48F9 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'244F88D1-D752-41D3-843D-3E332F320D2D', 533, N'789850', N'17', N'01', N'2016-11-02 09:05:20', N'9', N'4', N'4', N'17', CAST(0x0000A6B20095CD32 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'97E9C23D-590B-4902-B179-CE634FC7DD68', 534, N'789851', N'12', N'01', N'2016-11-02 09:10:20', N'8', N'2', N'2', N'12', CAST(0x0000A6B200974069 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'492BE155-8B44-4205-84B2-A6EE911A1C1F', 535, N'789852', N'12', N'02', N'2016-11-02 09:15:20', N'1', N'3', N'8', N'12', CAST(0x0000A6B200988E00 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'DE2758A2-A702-453D-8279-E921D3DCC22C', 536, N'789853', N'11', N'03', N'2016-11-02 09:20:20', N'1', N'7', N'3', N'11', CAST(0x0000A6B20099E853 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'19B5635C-33C8-4390-9B11-CA6D53CC1FBD', 537, N'789854', N'16', N'01', N'2016-11-02 09:25:20', N'9', N'6', N'1', N'16', CAST(0x0000A6B2009B480F AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'B221C71B-A865-439E-80AF-8532CB04F1B3', 538, N'789855', N'14', N'01', N'2016-11-02 09:30:20', N'2', N'6', N'6', N'14', CAST(0x0000A6B2009CAD54 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'897EE011-FFAA-4186-85CF-06C890E5074C', 539, N'789856', N'14', N'03', N'2016-11-02 09:35:20', N'9', N'1', N'4', N'14', CAST(0x0000A6B2009E0F88 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'9FDF9B1A-2C60-405C-AE0E-A02F52219C49', 540, N'789857', N'6', N'01', N'2016-11-02 09:40:20', N'0', N'3', N'3', N'6', CAST(0x0000A6B200A02964 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'871F3FC8-7152-463A-A4EE-76A32FAE9EBB', 541, N'789858', N'3', N'01', N'2016-11-02 09:45:20', N'2', N'1', N'0', N'3', CAST(0x0000A6B200A0C6FB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'10893240-A2A3-417A-BC1E-8C8A7D2B18C4', 542, N'789859', N'7', N'01', N'2016-11-02 09:50:20', N'5', N'2', N'0', N'7', CAST(0x0000A6B200A23BBB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'70A81EB6-8910-4870-8B42-B764148747FD', 543, N'789860', N'15', N'02', N'2016-11-02 09:55:20', N'8', N'5', N'2', N'15', CAST(0x0000A6B200A38F87 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'5225E979-CCB7-4E3A-B232-AC9E7F0D5DDC', 544, N'789861', N'5', N'02', N'2016-11-02 10:00:20', N'3', N'0', N'2', N'5', CAST(0x0000A6B200A4F4C5 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'13717BB3-1BF5-420B-8C6A-01CF65E4B901', 545, N'789862', N'19', N'01', N'2016-11-02 10:05:20', N'7', N'8', N'4', N'19', CAST(0x0000A6B200A649D2 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'BB75DF82-0D70-4172-9FEE-173784F05AF0', 546, N'789863', N'17', N'02', N'2016-11-02 10:10:20', N'0', N'9', N'8', N'17', CAST(0x0000A6B200A7BB61 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C6F51C11-5E61-41BD-984C-48B8AB9189C9', 547, N'789864', N'19', N'01', N'2016-11-02 10:15:20', N'8', N'8', N'3', N'19', CAST(0x0000A6B200A95559 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'D2DF485B-908E-4222-8587-C652C99AC598', 548, N'789865', N'14', N'02', N'2016-11-02 10:20:20', N'3', N'3', N'8', N'14', CAST(0x0000A6B200AA6F26 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'65AEBEBC-E50A-43FA-B976-D2AE29743101', 549, N'789866', N'13', N'01', N'2016-11-02 10:25:20', N'8', N'5', N'0', N'13', CAST(0x0000A6B200ABC3AB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'FB4C8FF8-2602-4120-8757-516A71019CF0', 550, N'789867', N'8', N'01', N'2016-11-02 10:30:20', N'5', N'3', N'0', N'8', CAST(0x0000A6B200AD2376 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'FEF1816C-EBB8-4566-A1C1-318D820C69F8', 551, N'789868', N'14', N'02', N'2016-11-02 10:35:20', N'1', N'6', N'7', N'14', CAST(0x0000A6B200AE86F1 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'77A562BB-802D-4626-9500-07E5C24CF437', 552, N'789869', N'5', N'02', N'2016-11-02 10:40:20', N'1', N'2', N'2', N'5', CAST(0x0000A6B200AFF86F AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'83F4AC2C-4C59-4DD5-B323-5535E7776DE0', 553, N'789870', N'16', N'02', N'2016-11-02 10:45:20', N'4', N'9', N'3', N'16', CAST(0x0000A6B200B140B7 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'00158912-F125-4640-9D45-53A73309F282', 554, N'789871', N'15', N'04', N'2016-11-02 10:50:20', N'5', N'5', N'5', N'15', CAST(0x0000A6B200B2B839 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'B056B4D1-FEEA-4108-9E5F-C6573A793BA4', 555, N'789872', N'12', N'05', N'2016-11-02 10:55:20', N'9', N'1', N'2', N'12', CAST(0x0000A6B200B4017A AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'1287EA00-886B-40B0-AFB4-6C95D96AF44D', 556, N'789873', N'8', N'01', N'2016-11-02 11:00:20', N'1', N'7', N'0', N'8', CAST(0x0000A6B200B56AE2 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'1C46DD67-7A4D-4DDD-9642-03874BC270E8', 557, N'789874', N'22', N'01', N'2016-11-02 11:05:20', N'6', N'8', N'8', N'22', CAST(0x0000A6B200B7B461 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'9166B9AB-87C7-4671-B50C-3A64E3AF04C4', 558, N'789875', N'14', N'04', N'2016-11-02 11:10:20', N'9', N'1', N'4', N'14', CAST(0x0000A6B200B8295F AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'457574A0-12A1-4EF7-B143-74DD47149BF4', 559, N'789876', N'12', N'02', N'2016-11-02 11:15:20', N'4', N'6', N'2', N'12', CAST(0x0000A6B200B99777 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'E5ECA725-2AF4-400C-8BC1-E0C882797FE6', 560, N'789877', N'19', N'04', N'2016-11-02 11:20:20', N'8', N'7', N'4', N'19', CAST(0x0000A6B200BAEA7F AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'39A772ED-38B8-4983-AE3D-98AF7DB4E6D0', 561, N'789878', N'12', N'01', N'2016-11-02 11:25:20', N'5', N'7', N'0', N'12', CAST(0x0000A6B200BCC816 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'44EA4FFD-926D-44BE-BB73-BB11E4B4B4D1', 562, N'789879', N'15', N'03', N'2016-11-02 11:30:20', N'7', N'3', N'5', N'15', CAST(0x0000A6B200BDB60C AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'DE58ABFF-7B26-431C-9235-8EC122799AEC', 563, N'789880', N'18', N'02', N'2016-11-02 11:35:20', N'6', N'9', N'3', N'18', CAST(0x0000A6B200BEFC54 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'E2150CF3-A5BA-4E50-BC37-180FC90D6A87', 564, N'789881', N'22', N'02', N'2016-11-02 11:40:20', N'9', N'8', N'5', N'22', CAST(0x0000A6B200C074D1 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'6AC3774C-E05A-4180-8EF3-3BE3F7AED5A2', 565, N'789882', N'12', N'01', N'2016-11-02 10:05:20', N'1', N'6', N'5', N'12', CAST(0x0000A6B200C1BB75 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'0AA03E9A-FE7C-44C3-864B-DED8AC40CC2B', 566, N'789883', N'16', N'02', N'2016-11-02 11:50:20', N'4', N'5', N'7', N'16', CAST(0x0000A6B200C3321C AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'30D88574-0096-4C3D-9734-9C681AD92396', 567, N'789884', N'15', N'02', N'2016-11-02 11:55:20', N'8', N'2', N'5', N'15', CAST(0x0000A6B200C47A2C AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'8890F289-7BFB-47F1-A003-5D2B5CEA149B', 568, N'789885', N'7', N'05', N'2016-11-02 12:00:20', N'5', N'1', N'1', N'7', CAST(0x0000A6B200C5E63D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'63A2BD04-CCF3-42CC-90F9-D0D3CDCF5E3B', 569, N'789886', N'13', N'01', N'2016-11-02 12:05:20', N'2', N'5', N'6', N'13', CAST(0x0000A6B200C74BB3 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'5CD28C84-4AAC-4596-8354-FC56BC9DCA62', 570, N'789887', N'11', N'02', N'2016-11-02 12:10:20', N'5', N'4', N'2', N'11', CAST(0x0000A6B200C8D6D4 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'DD12D2DB-6B65-4820-9112-D0A5DB8EF7DD', 571, N'789888', N'15', N'02', N'2016-11-02 12:15:20', N'3', N'3', N'9', N'15', CAST(0x0000A6B200C9F08C AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'17246BBC-C922-4FC0-8FAA-F944FDF57081', 572, N'789889', N'14', N'01', N'2016-11-02 12:20:20', N'6', N'0', N'8', N'14', CAST(0x0000A6B200CB7CFD AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'AA6E37D9-2C35-4557-9A90-8EBFF444324D', 573, N'789890', N'19', N'03', N'2016-11-02 12:25:20', N'3', N'9', N'7', N'19', CAST(0x0000A6B200CCBCDC AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'E30C9ED6-6C4C-4ED6-9D1C-F9C0E8E6EC70', 574, N'789891', N'20', N'01', N'2016-11-02 12:30:20', N'5', N'9', N'6', N'20', CAST(0x0000A6B200CE442E AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C8086A96-A266-441F-A7E9-BDF460D37897', 575, N'789892', N'15', N'01', N'2016-11-02 12:35:20', N'4', N'3', N'8', N'15', CAST(0x0000A6B200CF7722 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'B46A46A6-6237-497B-BEED-88FBE5714B42', 576, N'789893', N'6', N'02', N'2016-11-02 12:40:20', N'2', N'3', N'1', N'6', CAST(0x0000A6B200D0EE8D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'D2F2A525-1B4D-4B50-97A0-259CE2861467', 577, N'789894', N'18', N'03', N'2016-11-02 12:45:20', N'1', N'8', N'9', N'18', CAST(0x0000A6B200D237DC AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'F8C0C16B-66D1-4376-97B1-88514495D34C', 578, N'789895', N'8', N'01', N'2016-11-02 12:50:20', N'3', N'0', N'5', N'8', CAST(0x0000A6B200D46B0A AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'E3981B93-23B6-4483-AD81-440F12D8D713', 579, N'789896', N'10', N'02', N'2016-11-02 12:55:20', N'4', N'2', N'4', N'10', CAST(0x0000A6B200D50FDB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'954ECD6F-47B0-4D63-8D89-C85D5CE74FD0', 580, N'789897', N'12', N'10', N'2016-11-02 13:00:20', N'2', N'4', N'6', N'12', CAST(0x0000A6B200D7869B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'CD4AED9F-6511-4BA3-B1E5-F43FC0A4BC92', 581, N'789898', N'17', N'02', N'2016-11-02 13:05:20', N'2', N'9', N'6', N'17', CAST(0x0000A6B200D7BE1F AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'AB965C84-029C-4802-8012-BBFAADCEC5CE', 582, N'789899', N'14', N'02', N'2016-11-02 13:10:20', N'4', N'9', N'1', N'14', CAST(0x0000A6B200D923AB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'13C7A648-F1B9-4205-B87C-A4AE01D26C51', 583, N'789900', N'20', N'01', N'2016-11-02 13:15:20', N'9', N'5', N'6', N'20', CAST(0x0000A6B200DA77C0 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'EA8FE0AA-A564-4164-BED5-7F6BF41068F5', 584, N'789901', N'11', N'01', N'2016-11-02 13:20:20', N'0', N'6', N'5', N'11', CAST(0x0000A6B200DBEDE4 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'74CE2864-9FED-41C8-B599-E3F18603495B', 585, N'789902', N'15', N'02', N'2016-11-02 13:25:20', N'5', N'9', N'1', N'15', CAST(0x0000A6B200DD34D0 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'53D723E3-59B1-467A-8FFF-3B01077C82B5', 586, N'789903', N'16', N'01', N'2016-11-02 13:30:20', N'9', N'6', N'1', N'16', CAST(0x0000A6B200DEB57C AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'7D336CE1-69E9-4E93-9996-3A6D9C0F4428', 587, N'789904', N'15', N'02', N'2016-11-02 13:35:20', N'7', N'0', N'8', N'15', CAST(0x0000A6B200E00427 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'6D101143-2293-48D8-AA4E-F6776FCEFFD5', 588, N'789905', N'14', N'02', N'2016-11-02 13:40:20', N'2', N'5', N'7', N'14', CAST(0x0000A6B200E17407 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'096B3A08-D1D2-4963-9956-7D76566BD662', 589, N'789906', N'11', N'01', N'2016-11-02 13:45:20', N'5', N'6', N'0', N'11', CAST(0x0000A6B200E2BCC3 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'2662FD91-D45A-4754-A7B4-D7CD8D78DF9E', 590, N'789907', N'19', N'01', N'2016-11-02 13:50:20', N'1', N'9', N'9', N'19', CAST(0x0000A6B200E42960 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'DE1351CB-F216-4B0B-8B0C-848E93951070', 591, N'789908', N'17', N'02', N'2016-11-02 13:55:20', N'9', N'5', N'3', N'17', CAST(0x0000A6B200E5758D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'06172435-DE9B-4939-9E07-9EFF8E852931', 592, N'789909', N'18', N'03', N'2016-11-02 14:00:20', N'6', N'4', N'8', N'18', CAST(0x0000A6B200E6E8AB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'8200B6B6-9C7B-478D-8542-9B29ED500538', 593, N'789910', N'7', N'03', N'2016-11-02 14:05:20', N'1', N'4', N'2', N'7', CAST(0x0000A6B200E83B64 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'9EE92372-9A67-4724-8C4C-9DFCC5DF557B', 594, N'789911', N'12', N'04', N'2016-11-02 14:10:20', N'1', N'2', N'9', N'12', CAST(0x0000A6B200E9A5D6 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'67AED9CC-6F7E-4F8A-A68B-78F92FC024B3', 595, N'789912', N'14', N'01', N'2016-11-02 14:15:20', N'2', N'9', N'3', N'14', CAST(0x0000A6B200EAF1FF AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'5F9CE875-623D-4B2E-971E-8F84B1F0C830', 596, N'789913', N'20', N'01', N'2016-11-02 14:20:20', N'5', N'9', N'6', N'20', CAST(0x0000A6B200EC46C3 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'58A533AA-2E55-4BEB-B385-3FCA93850649', 597, N'789914', N'11', N'01', N'2016-11-02 14:25:20', N'2', N'5', N'4', N'11', CAST(0x0000A6B200EDB1B1 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'0725887E-6611-477A-8A78-2712F66EF4BF', 598, N'789915', N'9', N'01', N'2016-11-02 14:30:20', N'5', N'4', N'0', N'9', CAST(0x0000A6B200F00F15 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'96F20E03-4D7F-4596-B94B-5CFD50C354D2', 599, N'789916', N'16', N'02', N'2016-11-02 14:35:20', N'2', N'9', N'5', N'16', CAST(0x0000A6B200F07743 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'16474CDF-5D94-493C-99A1-1F8AC75FC464', 600, N'789917', N'18', N'02', N'2016-11-02 14:40:20', N'0', N'9', N'9', N'18', CAST(0x0000A6B200F1E15E AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'53BDF760-6ADA-4D3C-AB65-CEB1A7877F67', 601, N'789918', N'17', N'02', N'2016-11-02 14:45:20', N'8', N'9', N'0', N'17', CAST(0x0000A6B200F32DC0 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A3B65EE0-1E40-4105-A4CC-C5B37828B737', 602, N'789919', N'15', N'01', N'2016-11-02 14:50:20', N'4', N'3', N'8', N'15', CAST(0x0000A6B200F4B4A5 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'EC276E99-47A2-4413-AB2A-CFD4BBA04149', 603, N'789920', N'21', N'02', N'2016-11-02 14:55:20', N'8', N'4', N'9', N'21', CAST(0x0000A6B200F5F05B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'2B9D95B7-3DE3-423A-B3B0-A5413B3D545D', 604, N'789921', N'20', N'01', N'2016-11-02 15:00:20', N'9', N'7', N'4', N'20', CAST(0x0000A6B200F763CE AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'CF791F01-ABAE-4B28-A680-F061B19A2AF6', 605, N'789922', N'19', N'04', N'2016-11-02 15:05:20', N'3', N'8', N'8', N'19', CAST(0x0000A6B200F8B5CC AS DateTime), N'admin')
GO
print 'Processed 600 total records'
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'150CBFE3-9760-4E7C-A329-53ACD73907D1', 606, N'789923', N'18', N'02', N'2016-11-02 15:10:20', N'4', N'5', N'9', N'18', CAST(0x0000A6B200FA2E6F AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'8C9B711F-B557-44E6-A30B-08BD76B213FC', 607, N'789924', N'5', N'02', N'2016-11-02 15:15:20', N'2', N'0', N'3', N'5', CAST(0x0000A6B200FB62FD AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'9D5FF5FD-BE1F-4A2E-AD45-65C387671125', 608, N'789926', N'11', N'02', N'2016-11-02 15:25:20', N'2', N'5', N'4', N'11', CAST(0x0000A6B200FE2B64 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'74EFE853-9759-4EAF-A6CE-4A126BAA96BC', 609, N'789927', N'14', N'01', N'2016-11-02 15:30:20', N'0', N'7', N'7', N'14', CAST(0x0000A6B200FF9123 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'B6125EA1-E271-453D-84BE-A5381C99B0EE', 610, N'789928', N'6', N'01', N'2016-11-02 15:35:20', N'2', N'0', N'4', N'6', CAST(0x0000A6B20100DE5D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'F5EF4863-70B0-46A2-B486-867BB025C702', 611, N'789929', N'18', N'02', N'2016-11-02 15:40:20', N'1', N'8', N'9', N'18', CAST(0x0000A6B20102694C AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'30BCDE57-C6A9-4DC0-94F2-96BEF8B57C75', 612, N'789930', N'15', N'10', N'2016-11-02 15:45:20', N'5', N'3', N'7', N'15', CAST(0x0000A6B20103A916 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'82EF974B-12C4-4E67-AB6D-BF7D6427A018', 613, N'789931', N'13', N'02', N'2016-11-02 15:50:20', N'1', N'6', N'6', N'13', CAST(0x0000A6B20105111C AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'BB0B02D0-E815-4700-8EEE-FF7DF6D8CAD9', 614, N'789932', N'14', N'01', N'2016-11-02 15:30:20', N'5', N'5', N'4', N'14', CAST(0x0000A6B201066ABE AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'E2804DC8-C02E-4ED6-ACB1-74AB2E99A0AC', 615, N'789937', N'9', N'02', N'2016-11-02 16:20:20', N'3', N'4', N'2', N'9', CAST(0x0000A6B2010DD4BD AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'FAD610EA-A465-4206-9644-7D409FF5CBF9', 616, N'789938', N'9', N'04', N'2016-11-02 16:25:20', N'4', N'2', N'3', N'9', CAST(0x0000A6B2010EAF27 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'35B821A6-58E4-4058-B22F-4B4B3CA8CB78', 617, N'789939', N'12', N'01', N'2016-11-02 16:30:20', N'3', N'4', N'5', N'12', CAST(0x0000A6B201101906 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'73929A23-8955-4B77-8C0B-263F074E9BF4', 618, N'789940', N'13', N'04', N'2016-11-02 16:35:20', N'7', N'4', N'2', N'13', CAST(0x0000A6B201116634 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C16D9D7B-AF20-4CD4-BD4F-69B848942E5A', 619, N'789941', N'10', N'05', N'2016-11-02 16:40:20', N'8', N'0', N'2', N'10', CAST(0x0000A6B20112DFF0 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'5AACE308-C0C2-4244-82CF-14E2AC1516C1', 620, N'789942', N'9', N'02', N'2016-11-02 16:45:20', N'7', N'0', N'2', N'9', CAST(0x0000A6B20114364F AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A3E3D4D1-B69A-4D5C-9E3E-0F43501CFBC3', 621, N'789943', N'14', N'02', N'2016-11-02 16:50:20', N'4', N'6', N'4', N'14', CAST(0x0000A6B201158F32 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'77832676-50C4-4D1E-B8BF-483A06A0C216', 622, N'789944', N'19', N'02', N'2016-11-02 16:55:20', N'9', N'6', N'4', N'19', CAST(0x0000A6B20116E46A AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'9217CE25-316C-450A-A670-A63A2558C0BD', 623, N'789945', N'13', N'01', N'2016-11-02 17:00:20', N'5', N'5', N'3', N'13', CAST(0x0000A6B201185243 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'5C10EED1-41EA-4A5B-9976-289A9A37398F', 624, N'789946', N'20', N'02', N'2016-11-02 17:05:20', N'6', N'6', N'8', N'20', CAST(0x0000A6B20119B66B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'3EA5AB89-1ECE-4F16-B2EE-B37ED693E6D5', 625, N'789947', N'8', N'02', N'2016-11-02 17:10:20', N'1', N'7', N'0', N'8', CAST(0x0000A6B2011B166D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'1E34C134-CCBE-41AE-A4AF-0878595F2F49', 626, N'789948', N'9', N'01', N'2016-11-02 17:15:20', N'1', N'3', N'5', N'9', CAST(0x0000A6B2011C52FD AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'EE4CABC2-7D02-4739-AC22-9E10740BB5D3', 627, N'789949', N'15', N'01', N'2016-11-02 17:20:20', N'5', N'6', N'4', N'15', CAST(0x0000A6B2011DEC7F AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A04D51D6-E24D-4388-8AF1-BD76C8462DC2', 628, N'789950', N'18', N'01', N'2016-11-02 17:25:20', N'6', N'7', N'5', N'18', CAST(0x0000A6B2011F2622 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'36D9F9B7-3A63-4AC9-9210-B8AD13CF5DD2', 629, N'789951', N'6', N'02', N'2016-11-02 17:30:20', N'1', N'2', N'3', N'6', CAST(0x0000A6B20120B9E0 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C6EC37F6-936F-4CCB-9FAD-66FA5161B711', 630, N'789952', N'18', N'02', N'2016-11-02 17:35:20', N'6', N'4', N'8', N'18', CAST(0x0000A6B20121DC37 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'14869F45-244B-4D5A-A80D-2650576EC89E', 631, N'789953', N'21', N'02', N'2016-11-02 17:40:20', N'8', N'4', N'9', N'21', CAST(0x0000A6B201235E82 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'2FF6C3DC-F10C-4E54-948D-8C0F23B29C30', 632, N'789954', N'6', N'01', N'2016-11-02 17:45:20', N'1', N'4', N'1', N'6', CAST(0x0000A6B201249D49 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'68159BA9-A471-40DD-8963-838344500CC0', 633, N'789955', N'18', N'02', N'2016-11-02 17:50:20', N'6', N'9', N'3', N'18', CAST(0x0000A6B20125FF09 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'198D9A69-A724-4EE5-B05F-6BABA6797D2E', 634, N'789956', N'19', N'02', N'2016-11-02 17:55:20', N'1', N'9', N'9', N'19', CAST(0x0000A6B201275CCA AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'B2C14DF1-2759-4C2D-938F-AD055360ABD3', 635, N'789957', N'9', N'02', N'2016-11-02 18:00:20', N'2', N'3', N'4', N'9', CAST(0x0000A6B20128BF59 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'773D4AAD-93E8-476C-B236-CD7B88090948', 636, N'789958', N'15', N'02', N'2016-11-02 18:05:20', N'7', N'1', N'7', N'15', CAST(0x0000A6B2012B19C9 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'F171FD10-1BEA-4AA2-AF4A-54DF1D86134E', 637, N'789959', N'15', N'01', N'2016-11-02 18:10:20', N'2', N'6', N'7', N'15', CAST(0x0000A6B2012B91DE AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'57F8467C-B7E3-48CC-AC35-F230039C36CD', 638, N'789960', N'16', N'02', N'2016-11-02 18:15:20', N'7', N'7', N'2', N'16', CAST(0x0000A6B2012CDCFA AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'F567C6C8-0972-45D2-B40C-3A11220DA71A', 639, N'789961', N'19', N'01', N'2016-11-02 18:20:20', N'9', N'7', N'3', N'19', CAST(0x0000A6B2012E520E AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'ADB9A8F6-8C23-476E-B81B-9E97A366788F', 640, N'789962', N'13', N'01', N'2016-11-02 18:25:20', N'4', N'9', N'0', N'13', CAST(0x0000A6B2012F98D2 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'6498E31B-ED39-403B-A773-DBFD67236DA5', 641, N'789963', N'12', N'02', N'2016-11-02 18:30:20', N'3', N'3', N'6', N'12', CAST(0x0000A6B2013119C6 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'67AB2F44-D1C4-4D02-A007-D4EB8E0F6D3F', 642, N'789964', N'23', N'01', N'2016-11-02 18:35:20', N'5', N'9', N'9', N'23', CAST(0x0000A6B2013258CB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'3072750A-DDD6-458E-A031-3BD17E3362EE', 643, N'789965', N'18', N'01', N'2016-11-02 18:40:20', N'9', N'5', N'4', N'18', CAST(0x0000A6B20133D3BB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'88697DB0-A9F3-4561-B69F-9D2FA3EF31E8', 644, N'789966', N'11', N'01', N'2016-11-02 18:45:20', N'0', N'4', N'7', N'11', CAST(0x0000A6B2013515DF AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'53A965D7-51DF-47BA-A115-E66210C9B011', 645, N'789967', N'20', N'01', N'2016-11-02 18:50:20', N'2', N'9', N'9', N'20', CAST(0x0000A6B201369ECC AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'44D8997A-BA96-4C6C-87AA-537B355BD790', 646, N'789968', N'18', N'01', N'2016-11-02 18:55:20', N'4', N'8', N'6', N'18', CAST(0x0000A6B20137E714 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'22E7ACCD-6AF2-47D7-A80E-18F4F02B4F9B', 647, N'789969', N'12', N'01', N'2016-11-02 19:00:20', N'7', N'2', N'3', N'12', CAST(0x0000A6B2013935E7 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'0291D8D8-5C5D-4F61-85B9-A205290243F6', 648, N'789970', N'11', N'02', N'2016-11-02 19:05:20', N'5', N'5', N'1', N'11', CAST(0x0000A6B2013ACA49 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'CD6DEA5B-F64F-44EF-AD8D-2AB92D353E7A', 649, N'789971', N'23', N'02', N'2016-11-02 19:10:20', N'7', N'8', N'8', N'23', CAST(0x0000A6B2013C16B4 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'29631445-7B7B-47A0-A25C-730CA543F27A', 650, N'789972', N'20', N'02', N'2016-11-02 19:15:20', N'4', N'9', N'7', N'20', CAST(0x0000A6B2013D5767 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'AAEE6CBD-92EE-4E06-968D-27919742A7EB', 651, N'789973', N'14', N'01', N'2016-11-02 19:20:20', N'4', N'5', N'5', N'14', CAST(0x0000A6B2013ED69D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'CE2630CD-8A8F-447F-BE11-DEDC8B88861F', 652, N'789974', N'5', N'01', N'2016-11-02 19:25:20', N'0', N'3', N'2', N'5', CAST(0x0000A6B2014015CD AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'D184BD0C-AE23-4AE1-B474-C8A32B5753BE', 653, N'789975', N'5', N'01', N'2016-11-02 19:30:20', N'0', N'5', N'0', N'5', CAST(0x0000A6B201419384 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'3A9A41DF-343C-4390-BD6F-C5BD823955A1', 654, N'789976', N'24', N'01', N'2016-11-02 19:35:20', N'7', N'9', N'8', N'24', CAST(0x0000A6B20142DEF7 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'9F77F81E-330A-43B8-AB7A-9F52B4B2BDDE', 655, N'789977', N'8', N'02', N'2016-11-02 19:40:20', N'2', N'4', N'2', N'8', CAST(0x0000A6B201443D30 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'58CB27D5-A0EC-408D-9225-D9FEE09F7FFD', 656, N'789978', N'14', N'02', N'2016-11-02 19:45:20', N'7', N'7', N'0', N'14', CAST(0x0000A6B2014593E0 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'D1C07DC4-EB49-492A-9943-800DD4D4B27F', 657, N'789979', N'21', N'02', N'2016-11-02 19:50:20', N'4', N'9', N'8', N'21', CAST(0x0000A6B201471409 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'3841C301-5D34-46BA-A6AB-E1D9C0E19E3E', 658, N'789980', N'21', N'02', N'2016-11-02 19:55:20', N'8', N'8', N'5', N'21', CAST(0x0000A6B2014847BF AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'77589967-F2AB-4DC4-821B-442C5F6C19BD', 659, N'789981', N'12', N'03', N'2016-11-02 20:00:20', N'6', N'4', N'2', N'12', CAST(0x0000A6B20149BB97 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'D854C83D-B5A3-4FF1-853F-79B5BDAE1B24', 660, N'789982', N'18', N'04', N'2016-11-02 20:05:20', N'1', N'8', N'9', N'18', CAST(0x0000A6B2014B1101 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'64465F3E-19D9-4A16-995C-0712C2FC9FC1', 661, N'789983', N'21', N'01', N'2016-11-02 20:10:20', N'9', N'7', N'5', N'21', CAST(0x0000A6B2014C8A62 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'11E140BD-C516-4AA6-A704-1F23DCE642F0', 662, N'789984', N'17', N'02', N'2016-11-02 20:15:20', N'5', N'4', N'8', N'17', CAST(0x0000A6B2014DDC9E AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'35F48F7E-6A72-4E89-85AC-56F9ABE0D7AA', 663, N'789986', N'7', N'02', N'2016-11-02 20:24:20', N'1', N'2', N'4', N'7', CAST(0x0000A6B20150FF13 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'53E3C564-D02C-4993-830F-F19E0B93B2B9', 664, N'789987', N'14', N'02', N'2016-11-02 20:30:20', N'8', N'5', N'1', N'14', CAST(0x0000A6B20151F878 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'054362FD-BF51-4712-8772-B55ED23660BC', 665, N'789988', N'25', N'01', N'2016-11-02 20:35:20', N'9', N'8', N'8', N'25', CAST(0x0000A6B201535983 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'BD782F6D-141D-4CEC-88F0-09E619B3F331', 666, N'789989', N'23', N'01', N'2016-11-02 20:40:20', N'9', N'5', N'9', N'23', CAST(0x0000A6B20154D1AB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A51C0042-4CED-4F85-B1A9-7BC3BF324B28', 667, N'789990', N'10', N'02', N'2016-11-02 20:45:20', N'8', N'1', N'1', N'10', CAST(0x0000A6B201562E7D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'D02D98BD-1E27-4C75-99BD-C8BCD6261F9D', 668, N'789991', N'8', N'01', N'2016-11-02 20:50:20', N'7', N'0', N'1', N'8', CAST(0x0000A6B201579D1B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'8779C87D-78E5-46FE-955C-9318FB9AF84E', 669, N'789992', N'14', N'01', N'2016-11-02 20:55:20', N'8', N'1', N'5', N'14', CAST(0x0000A6B20158CBEB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'7F5604F2-94F5-4476-9C4D-101B8CF559F2', 670, N'789994', N'9', N'02', N'2016-11-02 21:05:20', N'1', N'8', N'0', N'9', CAST(0x0000A6B2015B9748 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'F22E6D76-8D77-4ACE-8D68-A1D049A00D58', 671, N'789995', N'18', N'02', N'2016-11-02 21:10:20', N'9', N'7', N'2', N'18', CAST(0x0000A6B2015D0EAE AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'1EBFD363-9413-4B8D-8DD2-9D98A4B410FB', 672, N'789996', N'14', N'02', N'2016-11-02 21:15:20', N'0', N'7', N'7', N'14', CAST(0x0000A6B2015E5826 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'982A1BA8-7306-473F-AB14-DEA4C88996EA', 673, N'789997', N'14', N'01', N'2016-11-02 21:20:20', N'8', N'1', N'5', N'14', CAST(0x0000A6B2015FC38F AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A2BBCA12-CEA9-47AC-9E81-178A3DEB4A03', 674, N'789998', N'4', N'02', N'2016-11-02 21:25:20', N'4', N'0', N'0', N'4', CAST(0x0000A6B20161E03E AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'9AFB3DC1-E18F-4CA8-A186-7A4D01840646', 675, N'789999', N'21', N'02', N'2016-11-02 21:30:20', N'9', N'6', N'6', N'21', CAST(0x0000A6B201627EE1 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'E41102F5-9279-476F-AFE2-57EFF2006D4B', 676, N'790000', N'14', N'01', N'2016-11-02 21:35:20', N'5', N'0', N'9', N'14', CAST(0x0000A6B20163CECA AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'28186E99-2243-43AE-8E07-F6153CE616F9', 677, N'790001', N'7', N'03', N'2016-11-02 21:40:20', N'2', N'1', N'4', N'7', CAST(0x0000A6B201655959 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'9EF26445-CF4F-4056-A7D5-FE211C09C54D', 678, N'790002', N'20', N'01', N'2016-11-02 21:45:20', N'7', N'8', N'5', N'20', CAST(0x0000A6B201668B54 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'9E6EF3D7-D437-402B-BD04-DAD48ECFCD36', 679, N'790003', N'9', N'02', N'2016-11-02 21:50:20', N'4', N'4', N'1', N'9', CAST(0x0000A6B20168B777 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C3D3BEBC-9368-4FD8-9F52-907D78C58DBD', 680, N'790004', N'19', N'01', N'2016-11-02 21:55:20', N'1', N'9', N'9', N'19', CAST(0x0000A6B2016948D3 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'05545DC3-5D6B-47AF-B97B-ED6A75A8ED0A', 681, N'790006', N'9', N'01', N'2016-11-02 22:05:20', N'4', N'5', N'0', N'9', CAST(0x0000A6B2016C2B5E AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'D40B6333-236D-451F-B3E8-4FDCEAC4EF5F', 682, N'790007', N'10', N'01', N'2016-11-02 22:10:20', N'4', N'4', N'2', N'10', CAST(0x0000A6B2016D8725 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'4BF6DAD1-455B-450C-AA60-1D185863C43B', 683, N'790008', N'9', N'02', N'2016-11-02 22:15:20', N'7', N'2', N'0', N'9', CAST(0x0000A6B2016EE320 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'3AEED25D-18A7-4A42-B9C6-B9B574286EB9', 684, N'790009', N'18', N'01', N'2016-11-02 22:20:20', N'9', N'5', N'4', N'18', CAST(0x0000A6B2017047BB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'0255A34C-3924-4282-B4CF-F470AC83B049', 685, N'790010', N'11', N'04', N'2016-11-02 22:25:20', N'1', N'8', N'2', N'11', CAST(0x0000A6B2017180B1 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'6BB061A1-4C4C-47A5-B9B6-32E4ADDDED04', 686, N'790011', N'10', N'01', N'2016-11-02 22:30:20', N'3', N'5', N'2', N'10', CAST(0x0000A6B20172EFB4 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'2F12E72C-5C6E-42DE-A5E7-AA8E908914AA', 687, N'790012', N'9', N'01', N'2016-11-02 22:35:20', N'5', N'0', N'4', N'9', CAST(0x0000A6B201744FA3 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A75B2E0A-FA0B-437C-ADA7-420540990104', 688, N'790013', N'9', N'02', N'2016-11-02 22:40:20', N'9', N'0', N'0', N'9', CAST(0x0000A6B20175BC38 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A16D98DF-0BA9-45C8-855C-606AB641B283', 689, N'790014', N'7', N'02', N'2016-11-02 22:45:20', N'4', N'3', N'0', N'7', CAST(0x0000A6B201770426 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C24503E3-D6DF-41F2-9C0C-AA36260EBFA5', 690, N'790015', N'8', N'03', N'2016-11-02 22:50:20', N'1', N'5', N'2', N'8', CAST(0x0000A6B201788BC2 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'772F498D-F37E-4FFE-AA31-081A52C3FD7C', 691, N'790016', N'22', N'01', N'2016-11-02 22:55:20', N'8', N'7', N'7', N'22', CAST(0x0000A6B2017A015A AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'575365A1-71F6-418A-A8A6-44E99E915FD9', 692, N'790017', N'20', N'01', N'2016-11-02 23:00:20', N'6', N'6', N'8', N'20', CAST(0x0000A6B2017B2C41 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'BFE3CD29-0FEF-4279-9CBE-7A88FA890D1B', 693, N'790018', N'20', N'01', N'2016-11-02 23:05:20', N'9', N'6', N'5', N'20', CAST(0x0000A6B2017C9B90 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'43A05DD5-618B-4A75-B292-96A65D754233', 694, N'790019', N'7', N'01', N'2016-11-02 23:10:20', N'2', N'0', N'5', N'7', CAST(0x0000A6B2017DF973 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'B2A0FBE2-80E5-48EC-8EB5-CC0E8C93525E', 695, N'790020', N'12', N'02', N'2016-11-02 23:15:20', N'0', N'9', N'3', N'12', CAST(0x0000A6B2017F4CFF AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'488F46CB-399B-44C0-97B9-83635F823925', 696, N'790021', N'9', N'02', N'2016-11-02 23:20:20', N'6', N'0', N'3', N'9', CAST(0x0000A6B20180B547 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'87DA8A7B-A10D-4426-BDAE-C6A34F9788C5', 697, N'790022', N'17', N'01', N'2016-11-02 23:25:20', N'7', N'9', N'1', N'17', CAST(0x0000A6B20181FFED AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'382673D4-EA88-4276-95FB-F6C016912145', 698, N'790023', N'23', N'02', N'2016-11-02 23:30:20', N'7', N'9', N'7', N'23', CAST(0x0000A6B2018375FE AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A2D92E62-1F73-427F-8B31-13D0B7291823', 699, N'790024', N'18', N'02', N'2016-11-02 23:35:20', N'7', N'4', N'7', N'18', CAST(0x0000A6B20184C165 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'54F55943-64B1-4ECC-91D2-ADD9B65AB4C9', 700, N'790025', N'18', N'02', N'2016-11-02 23:40:20', N'9', N'2', N'7', N'18', CAST(0x0000A6B201863F40 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'B024681A-448D-44BC-BA4F-7FE5984C58B9', 701, N'790026', N'5', N'01', N'2016-11-02 23:45:20', N'0', N'2', N'3', N'5', CAST(0x0000A6B2018776E6 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'087E8A3F-93F4-4BFE-A3FC-D09954CE9B80', 702, N'790027', N'14', N'01', N'2016-11-02 23:50:20', N'4', N'4', N'6', N'14', CAST(0x0000A6B20188F95B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'52CB2DF1-FE80-461D-B3FE-D197922CCC35', 703, N'790028', N'15', N'02', N'2016-11-02 23:55:20', N'2', N'9', N'4', N'15', CAST(0x0000A6B2018A47F0 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'527D16FF-7D17-4AEA-B438-7753F3EBB51B', 704, N'790029', N'20', N'02', N'2016-11-03 09:05:20', N'8', N'6', N'6', N'20', CAST(0x0000A6B30095C8A3 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'506860DF-5AB7-4130-A0C7-31BAEFFE8B16', 705, N'790030', N'14', N'05', N'2016-11-03 09:10:20', N'7', N'6', N'1', N'14', CAST(0x0000A6B300973FB8 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'41B1DFC2-0FAA-47AF-A4B0-F3A76681707A', 706, N'790031', N'13', N'02', N'2016-11-03 09:15:20', N'5', N'1', N'7', N'13', CAST(0x0000A6B3009886BB AS DateTime), N'admin')
GO
print 'Processed 700 total records'
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'B0D2C7B3-F4E1-4353-8718-2E6DB3EFF9F6', 707, N'790032', N'22', N'02', N'2016-11-03 09:20:20', N'8', N'7', N'7', N'22', CAST(0x0000A6B30099FE1F AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'B0698C28-2BAF-45C4-84A6-861394760613', 708, N'790033', N'17', N'02', N'2016-11-03 09:25:20', N'6', N'4', N'7', N'17', CAST(0x0000A6B3009B526E AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'9AEB553A-9EA9-42F5-B367-0907B1573103', 709, N'790034', N'9', N'02', N'2016-11-03 09:30:20', N'4', N'5', N'0', N'9', CAST(0x0000A6B3009CEC6E AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'DCD2CCFF-E14E-4F46-BAD3-E22DC30971FD', 710, N'790035', N'14', N'02', N'2016-11-03 09:35:20', N'7', N'3', N'4', N'14', CAST(0x0000A6B3009E0ADE AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'5A6B6E5F-C0D2-4EE2-BCC9-D3CBEEF98EC5', 711, N'790036', N'15', N'04', N'2016-11-03 09:40:20', N'0', N'6', N'9', N'15', CAST(0x0000A6B3009F9568 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'89AD291D-ADAA-4BAE-BE50-C5BBACD8E36E', 712, N'790037', N'7', N'02', N'2016-11-03 09:45:20', N'0', N'3', N'4', N'7', CAST(0x0000A6B300A0C4D0 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'B4D5E854-A798-4DDF-84CB-755BFA0509C8', 713, N'790039', N'11', N'02', N'2016-11-03 09:55:20', N'4', N'0', N'7', N'11', CAST(0x0000A6B300A3F872 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'9BAF604B-A4F5-49ED-85D2-0ECCCAA085C5', 714, N'790040', N'13', N'03', N'2016-11-03 10:00:20', N'7', N'6', N'0', N'13', CAST(0x0000A6B300A52B7D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'ED7B18FD-2483-4850-B82D-AB2A41CD7083', 715, N'790041', N'11', N'04', N'2016-11-03 10:05:20', N'3', N'8', N'0', N'11', CAST(0x0000A6B300A652AD AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'C7A11EDB-B619-4311-92D5-BD33164C7B53', 716, N'790042', N'15', N'02', N'2016-11-03 10:10:20', N'7', N'1', N'7', N'15', CAST(0x0000A6B300A7A564 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'18FF4AE9-3851-4C70-9BA0-3C2266213607', 717, N'790043', N'17', N'03', N'2016-11-03 10:15:20', N'0', N'8', N'9', N'17', CAST(0x0000A6B300A93F2E AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'75A79B9D-FBDE-4788-827B-481D0D2259E8', 718, N'790044', N'13', N'02', N'2016-11-03 10:20:20', N'4', N'6', N'3', N'13', CAST(0x0000A6B300AA69FE AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'D27B1002-AC2B-4606-ACC1-D6B519AE3D9C', 719, N'790045', N'4', N'01', N'2016-11-03 10:25:20', N'0', N'4', N'0', N'4', CAST(0x0000A6B300ABB577 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'8B4233AE-64CE-49F6-B941-AAF74F576B55', 720, N'790046', N'16', N'01', N'2016-11-03 10:30:20', N'1', N'9', N'6', N'16', CAST(0x0000A6B300AD735B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'09442A7A-1BEB-41F8-9231-45CDC89897A3', 721, N'790047', N'16', N'01', N'2016-11-03 10:35:20', N'5', N'4', N'7', N'16', CAST(0x0000A6B300AE9DC7 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'5E9BEA38-EA11-4BCF-863F-260D68178B7F', 722, N'790048', N'21', N'01', N'2016-11-03 10:40:20', N'8', N'4', N'9', N'21', CAST(0x0000A6B300AFEF9D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'358474FA-81D8-4DD8-809E-9698073C2E73', 723, N'790049', N'15', N'01', N'2016-11-03 10:45:20', N'6', N'4', N'5', N'15', CAST(0x0000A6B300B185A1 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'AE1055B6-F965-400B-A4FF-079DEA580D09', 724, N'790050', N'22', N'01', N'2016-11-03 10:50:20', N'7', N'7', N'8', N'22', CAST(0x0000A6B300B2C22D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'B627951B-28CE-43E4-9F7C-A01E1C3D28DD', 725, N'790051', N'12', N'02', N'2016-11-03 10:55:20', N'9', N'3', N'0', N'12', CAST(0x0000A6B300B40743 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'81C75E83-1248-48E4-84BD-CB96A76FDFFC', 726, N'790052', N'7', N'01', N'2016-11-03 11:00:20', N'4', N'0', N'3', N'7', CAST(0x0000A6B300B55EE5 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'CB3A2048-E5AB-4340-8A6A-D1525229E301', 727, N'790053', N'7', N'01', N'2016-11-03 11:05:20', N'3', N'4', N'0', N'7', CAST(0x0000A6B300B6E0C7 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'885277D4-868E-476D-B1E8-059303937A3B', 728, N'790054', N'7', N'02', N'2016-11-03 11:10:20', N'2', N'4', N'1', N'7', CAST(0x0000A6B300B857D9 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'0D9FAEFB-7EF8-4748-AED0-2F1FB7291CBF', 729, N'790055', N'13', N'02', N'2016-11-03 11:15:20', N'6', N'0', N'7', N'13', CAST(0x0000A6B300B9C200 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'0D2D7E10-6C3C-4367-83A3-E4E9938806E9', 730, N'790056', N'8', N'01', N'2016-11-03 11:20:20', N'4', N'2', N'2', N'8', CAST(0x0000A6B300BAFF79 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'19DB3051-566B-437D-8A7B-1EB698410490', 731, N'790057', N'18', N'02', N'2016-11-03 11:25:20', N'2', N'7', N'9', N'18', CAST(0x0000A6B300BC76AA AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'6AD78813-C704-472D-BB8B-012FD4B78CDE', 732, N'790058', N'22', N'02', N'2016-11-03 11:30:20', N'8', N'8', N'6', N'22', CAST(0x0000A6B300BDDE43 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'72061F6B-9565-4A73-969F-20474291BAEC', 733, N'790059', N'25', N'02', N'2016-11-03 11:35:20', N'8', N'9', N'8', N'25', CAST(0x0000A6B300BF6BB9 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'84D0101B-A6D1-46AA-AFDC-55FF848137AB', 734, N'790060', N'12', N'01', N'2016-11-03 11:40:20', N'4', N'2', N'6', N'12', CAST(0x0000A6B300C093D8 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'0926FA3B-1930-48BE-B9E1-01D35B7385CE', 735, N'790061', N'15', N'01', N'2016-11-03 11:45:20', N'9', N'2', N'4', N'15', CAST(0x0000A6B300C1EA27 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'7748FB26-8E6E-42BB-85FD-92A4512A0951', 736, N'790062', N'14', N'02', N'2016-11-03 11:50:20', N'7', N'7', N'0', N'14', CAST(0x0000A6B300C345DC AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'ADF5C616-DC87-44AD-9846-85FADFC76C50', 737, N'790063', N'14', N'01', N'2016-11-03 11:55:20', N'8', N'1', N'5', N'14', CAST(0x0000A6B300C4A7CF AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'6AA53A5B-2AE2-427E-83F9-24F8B2C3D3B8', 738, N'790064', N'7', N'02', N'2016-11-03 12:00:20', N'0', N'6', N'1', N'7', CAST(0x0000A6B300C6020C AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'DC72A5B2-61F5-42E0-85AF-BE3F1749B58B', 739, N'790065', N'8', N'02', N'2016-11-03 12:05:20', N'0', N'5', N'3', N'8', CAST(0x0000A6B300C73855 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'BF0B4529-88FA-481B-B713-EE34257364A5', 740, N'790067', N'16', N'04', N'2016-11-03 12:15:20', N'7', N'3', N'6', N'16', CAST(0x0000A6B300CA184F AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'B33F0B02-B0F8-456B-9B69-FB58AD13B8B7', 741, N'790068', N'3', N'01', N'2016-11-03 12:20:20', N'2', N'0', N'1', N'3', CAST(0x0000A6B300CB9188 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'54FAD72D-D6CE-4303-9823-34731174E60F', 742, N'790069', N'16', N'02', N'2016-11-03 12:25:20', N'1', N'7', N'8', N'16', CAST(0x0000A6B300CCD28B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'24B46BB6-883D-4CB0-B93E-0FEEA91CBDDE', 743, N'790070', N'9', N'02', N'2016-11-03 12:30:20', N'5', N'4', N'0', N'9', CAST(0x0000A6B300CEF057 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'444534EF-121E-47C0-9C91-BE61C2DCEDD8', 744, N'790071', N'17', N'04', N'2016-11-03 12:35:20', N'9', N'7', N'1', N'17', CAST(0x0000A6B300CFA4E8 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'038BA791-32E6-4B32-87F2-1DFB058020D9', 745, N'790072', N'11', N'01', N'2016-11-03 12:40:20', N'2', N'8', N'1', N'11', CAST(0x0000A6B300D0E200 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'DD373D9F-A658-4479-BF19-D888EBA9DD50', 746, N'790073', N'7', N'02', N'2016-11-03 12:45:20', N'5', N'0', N'2', N'7', CAST(0x0000A6B300D27B81 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'1ACE4D32-66E5-48B8-A572-ECCD6E048382', 747, N'790074', N'17', N'02', N'2016-11-03 12:50:20', N'8', N'3', N'6', N'17', CAST(0x0000A6B300D3C342 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'E210105C-FA89-4D12-A916-0BCB2FB04417', 748, N'790075', N'6', N'01', N'2016-11-03 12:55:20', N'3', N'0', N'3', N'6', CAST(0x0000A6B300D50B6D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'3C2CB198-3ED1-4453-BB24-D641F9728A6B', 749, N'790076', N'11', N'05', N'2016-11-03 13:00:20', N'3', N'3', N'5', N'11', CAST(0x0000A6B300D6B1F9 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'04CBFCD3-1768-4697-B79D-2E2F895669A3', 750, N'790077', N'19', N'01', N'2016-11-03 13:05:20', N'3', N'9', N'7', N'19', CAST(0x0000A6B300D7F95D AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'AC9C4673-E25F-433F-8D09-C9785095EEDF', 751, N'790078', N'6', N'01', N'2016-11-03 13:10:20', N'1', N'0', N'5', N'6', CAST(0x0000A6B300D965D5 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'FCFCA5A5-840E-4FEA-A204-F2D5464EC241', 752, N'790079', N'4', N'02', N'2016-11-03 13:15:20', N'2', N'2', N'0', N'4', CAST(0x0000A6B300DBECEA AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'9D316445-1716-4D47-9033-2B1C89B9FE95', 753, N'790080', N'6', N'02', N'2016-11-03 13:20:20', N'2', N'3', N'1', N'6', CAST(0x0000A6B300DBF66E AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'3542B847-5446-459A-9F10-C2DEE179F883', 754, N'790081', N'17', N'05', N'2016-11-03 13:25:20', N'0', N'9', N'8', N'17', CAST(0x0000A6B300DD3D13 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'D8D5E0C5-EF91-405F-A637-26CF4B60D1F8', 755, N'790082', N'12', N'02', N'2016-11-03 13:30:20', N'3', N'4', N'5', N'12', CAST(0x0000A6B300DFCFEB AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'11FC821E-025C-44F2-8E97-2B34B8D45C65', 756, N'790083', N'14', N'02', N'2016-11-03 13:35:20', N'1', N'9', N'4', N'14', CAST(0x0000A6B300E02B1F AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'10F74897-2092-42B2-A5DE-35729FA763CB', 757, N'790084', N'13', N'02', N'2016-11-03 13:40:20', N'8', N'4', N'1', N'13', CAST(0x0000A6B300E1D5C6 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'A807DE9E-6C88-4506-A9E2-B648AEC59DE8', 758, N'790085', N'3', N'02', N'2016-11-03 13:45:20', N'0', N'2', N'1', N'3', CAST(0x0000A6B300E2EA25 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'582F6930-3A3F-4FA0-A352-6C4EAB412AAB', 759, N'790086', N'10', N'02', N'2016-11-03 13:50:20', N'2', N'5', N'3', N'10', CAST(0x0000A6B300E49013 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'7EE64184-D587-4E01-9A81-692FCA948303', 760, N'790088', N'5', N'02', N'2016-11-03 14:00:20', N'1', N'1', N'3', N'5', CAST(0x0000A6B300E77584 AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'BA8D1FAB-F824-4173-A253-6A6C43F31137', 761, N'790089', N'13', N'02', N'2016-11-03 14:05:20', N'6', N'4', N'3', N'13', CAST(0x0000A6B300E8687B AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'98CF4328-920B-40FA-A84D-5AD4E87DC501', 762, N'790090', N'20', N'01', N'2016-11-03 14:10:20', N'5', N'6', N'9', N'20', CAST(0x0000A6B300EA3F2A AS DateTime), N'admin')
INSERT [dbo].[FCLuckyResult] ([ObjId], [ObjName], [FCNum], [FCLuckyNum], [FCLuckFly], [FCLotteryTime], [First], [Second], [Thread], [Result], [CreateTime], [CreateUser]) VALUES (N'6F304A74-6F0C-49D6-9876-AE65A52F301F', 763, N'790091', N'22', N'04', N'2016-11-03 14:15:20', N'8', N'7', N'7', N'22', CAST(0x0000A6B300EB33C7 AS DateTime), N'admin')
SET IDENTITY_INSERT [dbo].[FCLuckyResult] OFF
/****** Object:  Table [dbo].[FCBettingInfo]    Script Date: 11/03/2016 14:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[FCBettingInfo](
	[ObjId] [varchar](50) NULL,
	[ObjName] [int] IDENTITY(1,1) NOT NULL,
	[FCNum] [varchar](20) NOT NULL,
	[LotteryTime] [varchar](30) NOT NULL,
	[BettNum] [int] NOT NULL,
	[BettEggNum] [int] NOT NULL,
	[LuckyUsersCount] [int] NULL,
	[FCStatus] [varchar](1) NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_CusBettingInfo] PRIMARY KEY CLUSTERED 
(
	[FCNum] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[FCBettingInfo] ON
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'64347B0F-D4A7-4A9F-8B6C-FB41073AB406', 1, N'787355', N'2016-10-19 09:55', 0, 0, 0, N'2', CAST(0x0000A6A400A2D42F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'6468E444-193D-49FF-8B12-040E27847544', 2, N'787356', N'2016-10-19 10:00', 0, 0, 0, N'2', CAST(0x0000A6A400A2D434 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'77E16777-46BA-4540-B6DA-ED7A6A3E75B9', 3, N'787357', N'2016-10-19 10:05', 0, 0, 0, N'2', CAST(0x0000A6A400A2D434 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'42A70837-9B05-45E4-A28E-933A92F4EB07', 4, N'787358', N'2016-10-19 10:10', 0, 0, 0, N'2', CAST(0x0000A6A400A2D434 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'DD867D9D-21A2-4F7C-BB5D-0AD1C8D2ABC2', 5, N'787359', N'2016-10-19 10:15', 0, 0, 0, N'2', CAST(0x0000A6A400A2D434 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D2452640-F0AB-41B1-8F2E-EEECAE45AEE8', 6, N'787360', N'2016-10-19 10:20', 0, 0, 0, N'2', CAST(0x0000A6A400A319EA AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'926EEBAE-BF7F-4B57-BFFF-F32DA272EA0E', 7, N'787361', N'2016-10-19 10:25', 0, 0, 0, N'0', CAST(0x0000A6A400A4797C AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D69468A2-C280-4A53-888D-31C9EDBCB741', 8, N'787362', N'2016-10-19 10:30', 0, 0, 0, N'0', CAST(0x0000A6A400A5D90A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'57AB44CF-4A9C-4688-B018-6362B5323F3E', 9, N'787363', N'2016-10-19 10:35', 0, 0, 0, N'0', CAST(0x0000A6A400A73898 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A0EB39A9-2865-49AE-9116-3ABFD69C8D10', 10, N'787364', N'2016-10-19 10:40', 0, 0, 0, N'0', CAST(0x0000A6A400A89829 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'DD58E436-372A-4B1D-9C98-5FAC2E8BB137', 11, N'787365', N'2016-10-19 10:45', 0, 0, 0, N'0', CAST(0x0000A6A400A9F7B8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'5A94E64D-65EF-4743-A817-846EF38B72E5', 12, N'787801', N'2016-10-21 17:15', 0, 0, 0, N'2', CAST(0x0000A6A6011BF2FC AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A0B4EF1D-40AE-41A0-BCD7-F0A46730A21E', 13, N'787802', N'2016-10-21 17:20', 0, 0, 0, N'2', CAST(0x0000A6A6011BF2FC AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'58364C4E-E2FA-4F7D-97DF-2B7FBEE3B436', 14, N'787803', N'2016-10-21 17:25', 0, 0, 0, N'2', CAST(0x0000A6A6011BF2FC AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'8D2A828E-20FC-4781-855F-640A354EE6DC', 15, N'787804', N'2016-10-21 17:30', 0, 0, 0, N'2', CAST(0x0000A6A6011BF2FC AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'0947AAA6-D9CC-4A7D-9216-963F834D098E', 16, N'787805', N'2016-10-21 17:35', 0, 0, 0, N'2', CAST(0x0000A6A6011BF2FC AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F7F5BFE4-B51F-43E3-A0AD-3C99A54CE4E2', 17, N'787806', N'2016-10-21 17:40', 0, 0, 0, N'2', CAST(0x0000A6A6011BFF24 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B04EE919-5B36-42D7-BDB6-67B4CEBFB903', 18, N'787807', N'2016-10-21 17:45', 0, 0, 0, N'2', CAST(0x0000A6A6011D52FA AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'97EBC2E2-AE32-420B-AFA5-5F73325E357F', 19, N'787808', N'2016-10-21 17:50', 0, 0, 0, N'2', CAST(0x0000A6A6011EB288 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'6530ADF7-CECB-4A53-BB29-DEBB734DB5B4', 20, N'787809', N'2016-10-21 17:55', 0, 0, 0, N'2', CAST(0x0000A6A601201219 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'DF95C20F-6E12-480E-8F4D-6CB63FE463A1', 21, N'787810', N'2016-10-21 18:00', 0, 0, 0, N'2', CAST(0x0000A6A6012171AC AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A258F012-1DD7-44B5-A0D9-EF6EE32B6DC2', 22, N'787811', N'2016-10-21 18:05', 0, 0, 0, N'2', CAST(0x0000A6A60122C598 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'AFD9C88E-39A0-4ABF-A151-2949FF310749', 23, N'787812', N'2016-10-21 18:10', 0, 0, 0, N'2', CAST(0x0000A6A6012430CA AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'EE698CC1-2465-44DB-B5A7-14E3157AD7B3', 24, N'787813', N'2016-10-21 18:15', 0, 0, 0, N'2', CAST(0x0000A6A60125905B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'BFBBACBF-44F0-4899-8318-5FE7CBAEAE42', 25, N'787814', N'2016-10-21 18:20', 0, 0, 0, N'2', CAST(0x0000A6A60126EFE9 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'79A1F795-EA47-4CE9-BE7D-0535B85C9789', 26, N'787815', N'2016-10-21 18:25', 0, 0, 0, N'2', CAST(0x0000A6A601284F7A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'088EAD65-0A69-485F-8914-4212C877138F', 27, N'787816', N'2016-10-21 18:30', 0, 0, 0, N'2', CAST(0x0000A6A60129AF0C AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'3BC8D3EB-99F3-44C1-8814-1E431834DA13', 28, N'787817', N'2016-10-21 18:35', 0, 0, 0, N'2', CAST(0x0000A6A6012B0E98 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'8CF1A7FE-F669-4EC3-827F-C1FEE7CF2708', 29, N'787818', N'2016-10-21 18:40', 0, 0, 0, N'2', CAST(0x0000A6A6012C6E28 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'9F98EB0C-C1AE-4507-A468-A30847725BAC', 30, N'787819', N'2016-10-21 18:45', 0, 0, 0, N'0', CAST(0x0000A6A6012DCDBB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B66C0C9B-CAB5-44AF-A55C-53D01ABE8969', 31, N'787820', N'2016-10-21 18:50', 0, 0, 0, N'0', CAST(0x0000A6A6012F2D4B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1EC29B36-02E3-461B-B6B2-2F7CAEB98758', 32, N'787821', N'2016-10-21 18:55', 0, 0, 0, N'0', CAST(0x0000A6A60130813B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'65FB4013-8382-41ED-B19D-F510C8090405', 33, N'787822', N'2016-10-21 19:00', 0, 0, 0, N'0', CAST(0x0000A6A60131EC69 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'AC40C595-32BB-4434-BB17-D9D45E4CAC5D', 34, N'787823', N'2016-10-21 19:05', 0, 0, 0, N'0', CAST(0x0000A6A601334BFA AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'0F6FEE84-4459-4C2F-9832-0AF98E7B9F49', 35, N'787883', N'2016-10-22 09:10', 0, 0, 0, N'2', CAST(0x0000A6A70095CB18 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1E33E55B-079C-4698-9796-58D5490F7731', 36, N'787884', N'2016-10-22 09:15', 0, 0, 0, N'2', CAST(0x0000A6A70095CB18 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A488C353-0CE2-4445-83B2-B9CCF7A0D22C', 37, N'787885', N'2016-10-22 09:20', 0, 0, 0, N'2', CAST(0x0000A6A70095CB18 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F8AFFCAB-E163-4C14-B20C-F20F62F543A2', 38, N'787886', N'2016-10-22 09:25', 0, 0, 0, N'2', CAST(0x0000A6A70095CB18 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'260469FD-DBB7-4310-9841-60D3F9B5D08F', 39, N'787887', N'2016-10-22 09:30', 0, 0, 0, N'2', CAST(0x0000A6A70095CB18 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'C2EF5044-4085-4884-8FA5-074874F28D79', 40, N'787888', N'2016-10-22 09:35', 0, 0, 0, N'2', CAST(0x0000A6A70096B23B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A2944D94-D058-4BA0-BA06-952510B5A2BD', 41, N'787889', N'2016-10-22 09:40', 0, 0, 0, N'2', CAST(0x0000A6A700981D68 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'015C3F3C-0837-4B29-B67B-A5EC68A12FFE', 42, N'787890', N'2016-10-22 09:45', 0, 0, 0, N'2', CAST(0x0000A6A700997CFC AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1203AF54-8A05-4828-A057-533D4B414C27', 43, N'787891', N'2016-10-22 09:50', 0, 0, 0, N'2', CAST(0x0000A6A7009ADC88 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'4906C6E5-2490-4C69-B8F2-98E15A88734F', 44, N'787892', N'2016-10-22 09:55', 0, 0, 0, N'2', CAST(0x0000A6A7009C3C1A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'7414F720-7F8F-422B-87B6-9030A5C2F60D', 45, N'787893', N'2016-10-22 10:00', 0, 0, 0, N'2', CAST(0x0000A6A7009D9BA9 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'83938664-D629-420F-953A-516801A69A2C', 46, N'787894', N'2016-10-22 10:05', 0, 0, 0, N'2', CAST(0x0000A6A7009EEF9E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'54B97EFB-61FC-4B40-B707-2E7A2968107F', 47, N'787895', N'2016-10-22 10:10', 0, 0, 0, N'2', CAST(0x0000A6A700A05ACB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'6070D8EA-DFFD-4D28-B8D3-9548807CAEA9', 48, N'787896', N'2016-10-22 10:15', 0, 0, 0, N'2', CAST(0x0000A6A700A1BA5B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'25B553D3-42FC-47CB-BF67-92387E00C1B3', 49, N'787897', N'2016-10-22 10:20', 0, 0, 0, N'2', CAST(0x0000A6A700A319E9 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'E807FFA7-30BB-41E7-9C41-4567F1AAD9D6', 50, N'787898', N'2016-10-22 10:25', 0, 0, 0, N'2', CAST(0x0000A6A700A47979 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1066C864-EE7D-4337-A051-849215C03276', 51, N'787899', N'2016-10-22 10:30', 0, 0, 0, N'2', CAST(0x0000A6A700A5D90A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'2A3261DB-4001-494C-935F-8801BD5999C2', 52, N'787900', N'2016-10-22 10:35', 0, 0, 0, N'2', CAST(0x0000A6A700A7389A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'04C4924F-677A-4E42-BABB-4ED7992007F1', 53, N'787901', N'2016-10-22 10:40', 0, 0, 0, N'2', CAST(0x0000A6A700A89830 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'E68CF08B-F865-4837-B85B-9FBE2781C852', 54, N'787902', N'2016-10-22 10:45', 0, 0, 0, N'2', CAST(0x0000A6A700A9F7B8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'DDC110DB-AA34-40E0-89B9-9A880318C933', 55, N'787903', N'2016-10-22 10:50', 0, 0, 0, N'2', CAST(0x0000A6A700AB5749 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F321746C-D76B-4BC1-9314-517678DF1DE4', 56, N'787904', N'2016-10-22 10:55', 0, 0, 0, N'2', CAST(0x0000A6A700ACB6D9 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'129C1D6F-AB53-408C-A43C-6B112388B998', 57, N'787905', N'2016-10-22 11:00', 0, 0, 0, N'2', CAST(0x0000A6A700AE1669 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'01D3C38E-0F3D-4B22-9063-62E9DF570A80', 58, N'787906', N'2016-10-22 11:05', 0, 0, 0, N'2', CAST(0x0000A6A700AF75FB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'7C198AC5-A203-4170-BE16-408B2FD86521', 59, N'787907', N'2016-10-22 11:10', 0, 0, 0, N'2', CAST(0x0000A6A700B0D58A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1C1830BE-1322-4096-870D-90B7B780AC43', 60, N'787908', N'2016-10-22 11:15', 0, 0, 0, N'2', CAST(0x0000A6A700B2351B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'99BDC1A5-7FE1-414C-99E3-C45149174465', 61, N'787909', N'2016-10-22 11:20', 0, 0, 0, N'2', CAST(0x0000A6A700B394A9 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'754002CF-2BCF-4BDA-9647-7F074AD69D21', 62, N'787910', N'2016-10-22 11:25', 0, 0, 0, N'2', CAST(0x0000A6A700B4F43B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'0B5266E6-7F29-4B8E-B99B-100E31E42E71', 63, N'787911', N'2016-10-22 11:30', 0, 0, 0, N'2', CAST(0x0000A6A700B653CB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'52C313AF-4446-47F3-81AB-4106E2B6D8F9', 64, N'787912', N'2016-10-22 11:35', 0, 0, 0, N'2', CAST(0x0000A6A700B7B359 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'120821D0-4862-474C-B653-97D1CBB285E6', 65, N'787913', N'2016-10-22 11:40', 0, 0, 0, N'2', CAST(0x0000A6A700B912E9 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'E08BC7A8-2D74-4411-85B7-BDEB9B0DF88D', 66, N'787914', N'2016-10-22 11:45', 0, 0, 0, N'2', CAST(0x0000A6A700BA727A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A3B9E326-6C1A-45EA-A81C-E4AEFDC84BA2', 67, N'787915', N'2016-10-22 11:50', 0, 0, 0, N'2', CAST(0x0000A6A700BBD20A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'93311BE3-BBCA-4A2D-8F98-5D605FC1B64B', 68, N'787916', N'2016-10-22 11:55', 0, 0, 0, N'2', CAST(0x0000A6A700BD319A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'FC2EAD52-DAF9-4029-A3F0-031638A45977', 69, N'787917', N'2016-10-22 12:00', 0, 0, 0, N'2', CAST(0x0000A6A700BE912C AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'819CF14D-02E8-45EC-B0F3-38CE76B73E9E', 70, N'787918', N'2016-10-22 12:05', 0, 0, 0, N'2', CAST(0x0000A6A700BFF0BC AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'01728867-8043-4226-873D-6B0748D8CB14', 71, N'787919', N'2016-10-22 12:10', 0, 0, 0, N'2', CAST(0x0000A6A700C15049 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'DB6914EC-C15E-404E-AE82-42AFF7E28F65', 72, N'787920', N'2016-10-22 12:15', 0, 0, 0, N'2', CAST(0x0000A6A700C2AFD8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'503ED2CE-C936-45E2-A3FF-C9136E6486F3', 73, N'787921', N'2016-10-22 12:20', 0, 0, 0, N'2', CAST(0x0000A6A700C40F6A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'267856E4-A39A-447B-923C-AF06FA102080', 74, N'787922', N'2016-10-22 12:25', 0, 0, 0, N'2', CAST(0x0000A6A700C56EF8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'0F28B176-9B55-470C-A2D3-B9D120B6DC88', 75, N'787923', N'2016-10-22 12:30', 0, 0, 0, N'0', CAST(0x0000A6A700C6CE8A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'25616938-B490-484F-9672-4BEF7EF9202F', 76, N'787924', N'2016-10-22 12:35', 0, 0, 0, N'0', CAST(0x0000A6A700C82E1A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'3BB4E689-6599-41B3-BE9A-06C3EEA8AE9F', 77, N'787925', N'2016-10-22 12:40', 0, 0, 0, N'0', CAST(0x0000A6A700C98DAC AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D1331344-F631-436B-A299-81DA370EAA06', 78, N'787926', N'2016-10-22 12:45', 0, 0, 0, N'0', CAST(0x0000A6A700CAED3B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'08AB3212-027B-488B-8482-14A8455381D8', 79, N'787927', N'2016-10-22 12:50', 0, 0, 0, N'0', CAST(0x0000A6A700CC4CC9 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F8F4F24D-AAA3-4E14-BE96-C25B5C3BBEB3', 80, N'788420', N'2016-10-25 09:10', 0, 0, 0, N'2', CAST(0x0000A6AA0095E36E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D3F7C599-0618-452F-8059-EF2D9547D5A0', 81, N'788421', N'2016-10-25 09:15', 0, 0, 0, N'2', CAST(0x0000A6AA0095E36E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B699AEA2-FFFA-4A53-BD39-0F7644AD2808', 82, N'788422', N'2016-10-25 09:20', 0, 0, 0, N'2', CAST(0x0000A6AA0095E36E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'9A268276-4C4E-40FE-B971-E9F1A3D52688', 83, N'788423', N'2016-10-25 09:25', 0, 0, 0, N'2', CAST(0x0000A6AA0095E36E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'8B6197E5-4E1C-4E0B-A2B7-84A5E06ECEA6', 84, N'788424', N'2016-10-25 09:30', 0, 0, 0, N'2', CAST(0x0000A6AA0095E36E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'DE029934-8FE8-46F3-9168-97A15C76408E', 85, N'788425', N'2016-10-25 09:35', 0, 0, 0, N'2', CAST(0x0000A6AA0096BDD8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'83A0A255-A883-4A0A-88E9-6AC91FDE3E7D', 86, N'788426', N'2016-10-25 09:40', 0, 0, 0, N'2', CAST(0x0000A6AA009811CB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'EE8370D5-58A0-4811-9AFE-7D18D88100D7', 87, N'788427', N'2016-10-25 09:45', 0, 0, 0, N'2', CAST(0x0000A6AA00997CFB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'10C4FB76-E852-4FE1-B462-CE0F788E146A', 88, N'788428', N'2016-10-25 09:50', 0, 0, 0, N'2', CAST(0x0000A6AA009ADC8A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D8A45829-F765-474B-90A4-7295426C03FB', 89, N'788429', N'2016-10-25 09:55', 0, 0, 0, N'2', CAST(0x0000A6AA009C3C1A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'0CE943F9-6ACB-4CD7-86CC-28EC8445B5F7', 90, N'788430', N'2016-10-25 10:00', 0, 0, 0, N'2', CAST(0x0000A6AA009D9BA8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'551D9941-03AD-4937-A0E6-4788A5CE38DD', 91, N'788431', N'2016-10-25 10:05', 0, 0, 0, N'2', CAST(0x0000A6AA009EEF97 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'5B43451F-8758-4993-B4C4-ACB2D9B9F569', 92, N'788432', N'2016-10-25 10:10', 0, 0, 0, N'2', CAST(0x0000A6AA00A05AC8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'3D179783-56C9-465F-926C-1D34F7F044E0', 93, N'788433', N'2016-10-25 10:15', 0, 0, 0, N'2', CAST(0x0000A6AA00A1AEB8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'4BE88541-8C93-4DBB-88B3-C293EFA5E837', 94, N'788434', N'2016-10-25 10:20', 0, 0, 0, N'2', CAST(0x0000A6AA00A30E4A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1AD804E6-8BE2-4785-8AD0-B768A3225237', 95, N'788435', N'2016-10-25 10:25', 0, 0, 0, N'2', CAST(0x0000A6AA00A47979 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'C37516AA-F681-4DB2-AF62-AE947ABF95C2', 96, N'788436', N'2016-10-25 10:30', 0, 0, 0, N'2', CAST(0x0000A6AA00A5D90B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D15E02CF-38C9-462E-A2E5-10A6F58FA000', 97, N'788437', N'2016-10-25 10:35', 0, 0, 0, N'2', CAST(0x0000A6AA00A7389B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'787A02BA-8585-4974-A26E-3ACE737516E0', 98, N'788438', N'2016-10-25 10:40', 0, 0, 0, N'2', CAST(0x0000A6AA00A8982C AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'0362CF61-42BF-41F0-BA62-7D939D269DE0', 99, N'788439', N'2016-10-25 10:45', 0, 0, 0, N'2', CAST(0x0000A6AA00A9F7BB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'C3C13F96-11DA-46F7-B9E3-9DFDD1CCB5D5', 100, N'788440', N'2016-10-25 10:50', 0, 0, 0, N'2', CAST(0x0000A6AA00AB574A AS DateTime))
GO
print 'Processed 100 total records'
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'C1839787-1003-425B-A337-0E4C21319C4B', 101, N'788441', N'2016-10-25 10:55', 0, 0, 0, N'2', CAST(0x0000A6AA00ACB6D9 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'477BAE8C-98B1-4A9A-9667-F2C5F81041E1', 102, N'788442', N'2016-10-25 11:00', 0, 0, 0, N'2', CAST(0x0000A6AA00AE0AC7 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'FFDF54F3-0064-4BD4-A5F4-5944FCEF348E', 103, N'788443', N'2016-10-25 11:05', 0, 0, 0, N'2', CAST(0x0000A6AA00AF75FA AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D3FE40D8-EC46-4C2E-AFF1-AAAE30F86303', 104, N'788444', N'2016-10-25 11:10', 0, 0, 0, N'2', CAST(0x0000A6AA00B0D58C AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A236E541-9E54-4113-978D-C9A11C2F1B1E', 105, N'788445', N'2016-10-25 11:15', 0, 0, 0, N'2', CAST(0x0000A6AA00B2351B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'8D9B09DD-78C4-4413-9D46-6D3B9BD35F78', 106, N'788446', N'2016-10-25 11:20', 0, 0, 0, N'2', CAST(0x0000A6AA00B394AA AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'52CF35FF-D60E-40E9-9080-9DB0EAB35A8D', 107, N'788447', N'2016-10-25 11:25', 0, 0, 0, N'2', CAST(0x0000A6AA00B4F439 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'095EB5A1-4DCF-43C1-A15B-CF6BEDBA4548', 108, N'788448', N'2016-10-25 11:30', 0, 0, 0, N'2', CAST(0x0000A6AA00B653CB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'E598104B-EDE6-4BBA-916B-8BEEC4C60B0D', 109, N'788449', N'2016-10-25 11:35', 0, 0, 0, N'2', CAST(0x0000A6AA00B7B35A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'8CC8918E-515F-4949-B3CA-BAC3EC8B8497', 110, N'788450', N'2016-10-25 11:40', 0, 0, 0, N'2', CAST(0x0000A6AA00B912E8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'CA12F8BC-C5BB-473A-A260-0ABB04D80434', 111, N'788451', N'2016-10-25 11:45', 0, 0, 0, N'2', CAST(0x0000A6AA00BA7279 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1B82519F-DA59-429F-8B85-9E28EC3C1E2E', 112, N'788452', N'2016-10-25 11:50', 0, 0, 0, N'2', CAST(0x0000A6AA00BBD209 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'C53FD49C-0025-4384-BAFA-433D24E79BEB', 113, N'788453', N'2016-10-25 11:55', 0, 0, 0, N'2', CAST(0x0000A6AA00BD319B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'FEFF97D8-A90F-4F45-A1E1-BCCA9925E47E', 114, N'788454', N'2016-10-25 12:00', 0, 0, 0, N'2', CAST(0x0000A6AA00BE912C AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'022FB1DC-A74B-4FAA-A359-5894F76F30D6', 115, N'788455', N'2016-10-25 12:05', 0, 0, 0, N'2', CAST(0x0000A6AA00BFF0BB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'E3200084-5FE5-4201-A4C1-F8F2EAFF177B', 116, N'788456', N'2016-10-25 12:10', 0, 0, 0, N'2', CAST(0x0000A6AA00C1504B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B6E8CADE-D566-4DE4-B7FC-F6FF955BDC1C', 117, N'788457', N'2016-10-25 12:15', 0, 0, 0, N'2', CAST(0x0000A6AA00C2AFD8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'5481B3C2-D3A1-43B1-BA9E-B6ABA9D0EBA6', 118, N'788458', N'2016-10-25 12:20', 0, 0, 0, N'2', CAST(0x0000A6AA00C403C9 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'93851BEB-5849-45C5-A7F3-7E6527524947', 119, N'788459', N'2016-10-25 12:25', 0, 0, 0, N'2', CAST(0x0000A6AA00C56EF8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F8A83F69-F28C-4A4D-8770-CFA88C44EAED', 120, N'788460', N'2016-10-25 12:30', 0, 0, 0, N'0', CAST(0x0000A6AA00C6CE8C AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A12795BC-A041-4731-9ABB-2E1A2F0BF6C9', 121, N'788461', N'2016-10-25 12:35', 0, 0, 0, N'0', CAST(0x0000A6AA00C82E19 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'5CA4CC60-BE8A-4925-BFA6-CA342EC18945', 122, N'788462', N'2016-10-25 12:40', 0, 0, 0, N'0', CAST(0x0000A6AA00C98DAA AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'23270F75-8D56-410B-8B21-E71BD2039EB6', 123, N'788463', N'2016-10-25 12:45', 0, 0, 0, N'0', CAST(0x0000A6AA00CAED3C AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'5E263F85-F1FA-4D10-9CB2-A890ADED6489', 124, N'788464', N'2016-10-25 12:50', 0, 0, 0, N'0', CAST(0x0000A6AA00CC412F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'CC19454E-5397-4214-BBCD-F2FB4EE01527', 125, N'788599', N'2016-10-26 09:10', 0, 0, 0, N'2', CAST(0x0000A6AB00960FA5 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'CD66BB39-CB9A-49C3-BDBE-7C0A91458339', 126, N'788600', N'2016-10-26 09:15', 0, 0, 0, N'2', CAST(0x0000A6AB00960FA5 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B76B8EF1-3E2A-4BC3-B299-23BB747EB1A2', 127, N'788601', N'2016-10-26 09:20', 0, 0, 0, N'2', CAST(0x0000A6AB00960FA5 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'312881E5-D66A-4539-A2C6-390F023AA5C4', 128, N'788602', N'2016-10-26 09:25', 0, 0, 0, N'2', CAST(0x0000A6AB00960FA5 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'3678C330-1F3D-4706-85B0-B0CD51AD07A5', 129, N'788603', N'2016-10-26 09:30', 0, 0, 0, N'2', CAST(0x0000A6AB00960FA5 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D323CDC1-3DC9-4A12-BB68-40DDE0721275', 130, N'788604', N'2016-10-26 09:35', 0, 0, 0, N'2', CAST(0x0000A6AB0096B23D AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'AA1591E3-AA69-4F3A-9A62-261315BCD7BA', 131, N'788605', N'2016-10-26 09:40', 0, 0, 0, N'2', CAST(0x0000A6AB009811C9 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B050BF6F-90E5-4E6B-8A9C-05C241B10311', 132, N'788606', N'2016-10-26 09:45', 0, 0, 0, N'2', CAST(0x0000A6AB00997CFA AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'0818DFB1-5ACA-4B93-8327-278BA3986AD4', 133, N'788607', N'2016-10-26 09:50', 0, 0, 0, N'2', CAST(0x0000A6AB009ADC8A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'E657FE47-149F-4803-A48B-27C8B8AD827A', 134, N'788608', N'2016-10-26 09:55', 0, 0, 0, N'2', CAST(0x0000A6AB009C3078 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B34BDDD2-943A-4477-8B1F-090B80098DA9', 135, N'788609', N'2016-10-26 10:00', 0, 0, 0, N'2', CAST(0x0000A6AB009D9BA9 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'18474FA9-5033-4002-ADF8-BBB48560E78D', 136, N'788610', N'2016-10-26 10:05', 0, 0, 0, N'2', CAST(0x0000A6AB009EFB3B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'377991E5-7C07-42CD-8658-67DF4D32C41C', 137, N'788611', N'2016-10-26 10:10', 0, 0, 0, N'2', CAST(0x0000A6AB00A05ACA AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'EE9A266C-F3C6-4BF6-96F8-433A61AD73FB', 138, N'788612', N'2016-10-26 10:15', 0, 0, 0, N'2', CAST(0x0000A6AB00A1BA5A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'57989E55-4693-4DAD-BAAB-6F52BD8206C4', 139, N'788613', N'2016-10-26 10:20', 0, 0, 0, N'2', CAST(0x0000A6AB00A30E49 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'07E5C471-80C5-44DF-989E-3540A117F0F8', 140, N'788614', N'2016-10-26 10:25', 0, 0, 0, N'2', CAST(0x0000A6AB00A47978 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1C982A04-3D08-4D39-80DA-530A72DB9478', 141, N'788615', N'2016-10-26 10:30', 0, 0, 0, N'2', CAST(0x0000A6AB00A5D90B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'5F7E475E-FFEC-4407-8274-C8B4BE5A1DF7', 142, N'788616', N'2016-10-26 10:35', 0, 0, 0, N'2', CAST(0x0000A6AB00A72CFE AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B91505E2-7F38-4B72-8057-8FE2E8A2FD36', 143, N'788617', N'2016-10-26 10:40', 0, 0, 0, N'2', CAST(0x0000A6AB00A8982C AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1E37EF7C-0CD3-4A77-ABC2-5B8BC742AA2D', 144, N'788618', N'2016-10-26 10:45', 0, 0, 0, N'2', CAST(0x0000A6AB00A9EC31 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F8CC78BE-27C6-4244-8883-37B23451BD01', 145, N'788619', N'2016-10-26 10:50', 0, 0, 0, N'2', CAST(0x0000A6AB00AB574B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'80DDC2F8-7DD4-4D65-A97B-53B318F4A128', 146, N'788620', N'2016-10-26 10:55', 0, 0, 0, N'2', CAST(0x0000A6AB00ACAB42 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'093B29BE-9AA9-44A3-9E4B-42B8D8DF0D16', 147, N'788621', N'2016-10-26 11:00', 0, 0, 0, N'2', CAST(0x0000A6AB00AE1667 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'E59EDFF1-AF9C-4C1B-B47E-035ADC2EF9CC', 148, N'788622', N'2016-10-26 11:05', 0, 0, 0, N'0', CAST(0x0000A6AB00AF75FB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'3DCC358F-A185-45CD-A51C-44737200963E', 149, N'788623', N'2016-10-26 11:10', 0, 0, 0, N'0', CAST(0x0000A6AB00B0D58B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'80F123C0-AB1A-426C-9D95-07388A426C16', 150, N'788624', N'2016-10-26 11:15', 0, 0, 0, N'0', CAST(0x0000A6AB00B2351C AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'201B1EB2-5AF2-478B-BA24-9F6EF3F22682', 151, N'788625', N'2016-10-26 11:20', 0, 0, 0, N'0', CAST(0x0000A6AB00B394AB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'163416EF-E41F-4396-842C-56E440E94485', 152, N'788626', N'2016-10-26 11:25', 0, 0, 0, N'0', CAST(0x0000A6AB00B4E897 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'43F98AB2-0ED2-4A44-A20C-895D4C10FB6D', 153, N'788778', N'2016-10-27 09:10', 0, 0, 0, N'2', CAST(0x0000A6AC0095CB41 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'EDE3A5A8-CD0B-468E-89F6-7B579602F251', 154, N'788779', N'2016-10-27 09:15', 0, 0, 0, N'2', CAST(0x0000A6AC0095CB41 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'7C3D4D96-2BC3-47DC-A852-C3A589E38CD6', 155, N'788780', N'2016-10-27 09:20', 0, 0, 0, N'2', CAST(0x0000A6AC0095CB41 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'92D14D7F-2C34-470F-A7CB-CA698CAA6F15', 156, N'788781', N'2016-10-27 09:25', 0, 0, 0, N'2', CAST(0x0000A6AC0095CB41 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'8A57A650-2798-486F-8C01-3F59ED4B36CC', 157, N'788782', N'2016-10-27 09:30', 0, 0, 0, N'2', CAST(0x0000A6AC0095CB41 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'09CEC785-C8E7-496D-B4D9-18D0420D4CE0', 158, N'788783', N'2016-10-27 09:35', 0, 0, 0, N'2', CAST(0x0000A6AC0096BDD8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'6BA35D80-3B9B-4AD0-A089-48566972122B', 159, N'788784', N'2016-10-27 09:40', 0, 0, 0, N'2', CAST(0x0000A6AC00981D6B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D55E02EF-CFBC-4EB9-93AB-239F71A47E5F', 160, N'788785', N'2016-10-27 09:45', 0, 0, 0, N'2', CAST(0x0000A6AC00997CF8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'98D8431B-7E23-42F5-B545-7B50D09D56C0', 161, N'788786', N'2016-10-27 09:50', 0, 0, 0, N'2', CAST(0x0000A6AC009AD0E8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'BBCE8DC3-2DAF-4713-821B-4C3B12E9712F', 162, N'788787', N'2016-10-27 09:55', 0, 0, 0, N'2', CAST(0x0000A6AC009C3C1D AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1FDA2CF9-E6BD-47EC-8A37-48F85009EC1B', 163, N'788788', N'2016-10-27 10:00', 0, 0, 0, N'2', CAST(0x0000A6AC009D9BA8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1C1F4ED8-E168-48CE-801D-675D563914BF', 164, N'788789', N'2016-10-27 10:05', 0, 0, 0, N'2', CAST(0x0000A6AC009EFB3B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'2D927F98-9B70-4DA9-892C-21A1D8DF3C2F', 165, N'788790', N'2016-10-27 10:10', 0, 0, 0, N'2', CAST(0x0000A6AC00A05ACB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A2AC5010-BBA6-4C9A-B235-1F34AA8BE7C7', 166, N'788791', N'2016-10-27 10:15', 0, 0, 0, N'2', CAST(0x0000A6AC00A1BA5A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F46E3D0C-0356-4C98-862E-C315E5B041EE', 167, N'788792', N'2016-10-27 10:20', 0, 0, 0, N'2', CAST(0x0000A6AC00A319E9 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'2760CA50-D5FE-4B76-A7DE-71954F4EF56F', 168, N'788793', N'2016-10-27 10:25', 0, 0, 0, N'2', CAST(0x0000A6AC00A4797B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'313DF302-6630-4A9C-973A-2A40A49DAE1F', 169, N'788794', N'2016-10-27 10:30', 0, 0, 0, N'2', CAST(0x0000A6AC00A5D908 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'2713E01C-9373-4DA2-BA27-0ACC5DE4F5A8', 170, N'788795', N'2016-10-27 10:35', 0, 0, 0, N'2', CAST(0x0000A6AC00A73898 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A6E74FA5-DE80-46E0-9DF1-08BA468C02F5', 171, N'788796', N'2016-10-27 10:40', 0, 0, 0, N'2', CAST(0x0000A6AC00A8982B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'13978141-EA1F-4A36-80C2-43449AD52C27', 172, N'788797', N'2016-10-27 10:45', 0, 0, 0, N'2', CAST(0x0000A6AC00A9F7B9 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'5EC4B0A2-C01C-4BB3-8A26-36641E37DB91', 173, N'788798', N'2016-10-27 10:50', 0, 0, 0, N'2', CAST(0x0000A6AC00AB574A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'43D438DE-C243-493A-9D1C-C44024C74174', 174, N'788799', N'2016-10-27 10:55', 0, 0, 0, N'2', CAST(0x0000A6AC00ACB6D8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'0124D464-E648-4495-8016-319EB152D47E', 175, N'788800', N'2016-10-27 11:00', 0, 0, 0, N'2', CAST(0x0000A6AC00AE166A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'298D5EAF-0D17-4CBF-A561-CB615D277C87', 176, N'788801', N'2016-10-27 11:05', 0, 0, 0, N'2', CAST(0x0000A6AC00AF75F8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'C9E0A642-75CA-43B5-939F-B1FE8A1B0A4E', 177, N'788802', N'2016-10-27 11:10', 0, 0, 0, N'2', CAST(0x0000A6AC00B0D58A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'9270E672-6690-4A84-B4F1-F512D0889626', 178, N'788803', N'2016-10-27 11:15', 0, 0, 0, N'2', CAST(0x0000A6AC00B2351B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'EAB44B06-9075-40A9-BC41-74C0566F6FA0', 179, N'788804', N'2016-10-27 11:20', 0, 0, 0, N'2', CAST(0x0000A6AC00B394A9 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'61B0A991-255C-4305-9308-D8B37E8E4B4B', 180, N'788805', N'2016-10-27 11:25', 0, 0, 0, N'2', CAST(0x0000A6AC00B4F438 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F50044E4-942D-4B25-8450-81E1FCF402B7', 181, N'788806', N'2016-10-27 11:30', 0, 0, 0, N'2', CAST(0x0000A6AC00B653CB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'4D1D48E2-91E9-4E98-9357-FD4C4AFF939D', 182, N'788807', N'2016-10-27 11:35', 0, 0, 0, N'2', CAST(0x0000A6AC00B7B35B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F688860B-BEDB-4045-8D35-B0000C11F98C', 183, N'788808', N'2016-10-27 11:40', 0, 0, 0, N'2', CAST(0x0000A6AC00B912E8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'AA51B330-C44E-42FE-9CE1-0BB4688D4064', 184, N'788809', N'2016-10-27 11:45', 0, 0, 0, N'2', CAST(0x0000A6AC00BA727B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'C806000F-2B36-4FD8-95C7-D0C009523ABB', 185, N'788810', N'2016-10-27 11:50', 0, 0, 0, N'2', CAST(0x0000A6AC00BBC66C AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'73EB8507-8B39-4C15-8FF7-6F312FE15F1A', 186, N'788811', N'2016-10-27 11:55', 0, 0, 0, N'2', CAST(0x0000A6AC00BD25F9 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'9E794E4B-9F65-4FD4-98F2-94541E3D8831', 187, N'788812', N'2016-10-27 12:00', 0, 0, 0, N'2', CAST(0x0000A6AC00BE912C AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'28286233-1577-43B6-950D-9DB13B8B7AF6', 188, N'788813', N'2016-10-27 12:05', 0, 0, 0, N'2', CAST(0x0000A6AC00BFF0B9 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D867AF93-2E2C-4954-9E87-DD85ECDB21CD', 189, N'788814', N'2016-10-27 12:10', 0, 0, 0, N'2', CAST(0x0000A6AC00C144AA AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'17FD9473-A24C-4A6D-A337-58D9CEB84093', 190, N'788815', N'2016-10-27 12:15', 0, 0, 0, N'2', CAST(0x0000A6AC00C2A43F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'4F8234F8-D2BC-4B8E-9A76-B827353F545F', 191, N'788816', N'2016-10-27 12:20', 0, 0, 0, N'2', CAST(0x0000A6AC00C403CD AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'59F91ABD-5882-4E63-8FDB-7CAE95A39F4A', 192, N'788817', N'2016-10-27 12:25', 0, 0, 0, N'2', CAST(0x0000A6AC00C56EF9 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'38999EB7-7DE8-458B-BEB2-2827DE78B8CA', 193, N'788818', N'2016-10-27 12:30', 0, 0, 0, N'0', CAST(0x0000A6AC00C6C2EC AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'914764F2-B819-45FA-9F9D-E7BEA53D8B23', 194, N'788819', N'2016-10-27 12:35', 0, 0, 0, N'0', CAST(0x0000A6AC00C82E18 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A006842D-1BD2-4A1A-A973-D32DAA526598', 195, N'788820', N'2016-10-27 12:40', 0, 0, 0, N'0', CAST(0x0000A6AC00C98DB0 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'2ACE197B-4B59-4EFA-BEB0-2B91504A4ED5', 196, N'788821', N'2016-10-27 12:45', 0, 0, 0, N'0', CAST(0x0000A6AC00CAED39 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'16995993-6ED2-4B7E-83B3-74B9B3A26DBB', 197, N'788822', N'2016-10-27 12:50', 0, 0, 0, N'0', CAST(0x0000A6AC00CC4CCC AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'EEB6CF8A-2B26-4EFF-A692-FF351036BF8B', 198, N'788957', N'2016-10-28 09:10', 0, 0, 0, N'2', CAST(0x0000A6AD0096049A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'C4934A59-6F4B-4166-BCB1-2B4319897165', 199, N'788958', N'2016-10-28 09:15', 0, 0, 0, N'2', CAST(0x0000A6AD0096049F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'FB750156-4657-4CB4-A7D2-ACDA482DD131', 200, N'788959', N'2016-10-28 09:20', 0, 0, 0, N'2', CAST(0x0000A6AD0096049F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'622E2BD7-A235-4FDA-9866-3C21246914A6', 201, N'788960', N'2016-10-28 09:25', 0, 0, 0, N'2', CAST(0x0000A6AD0096049F AS DateTime))
GO
print 'Processed 200 total records'
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A9EEF49C-9AD9-45E5-B4EA-F06E3BE9E9FB', 202, N'788961', N'2016-10-28 09:30', 0, 0, 0, N'2', CAST(0x0000A6AD0096049F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'E339F068-E71D-4675-BC71-FB13F2755EBF', 203, N'788962', N'2016-10-28 09:35', 0, 0, 0, N'2', CAST(0x0000A6AD0096BDD8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'2E476FB6-CD46-42F6-87BF-3CD775E27555', 204, N'788963', N'2016-10-28 09:40', 0, 0, 0, N'2', CAST(0x0000A6AD00981D6A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F5A9D937-FA64-4196-8CF4-110F37FFE5A8', 205, N'788964', N'2016-10-28 09:45', 0, 0, 0, N'2', CAST(0x0000A6AD00997CFC AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'77580189-B903-40DE-A36B-0BEBF6CAAC21', 206, N'788965', N'2016-10-28 09:50', 0, 0, 0, N'2', CAST(0x0000A6AD009ADC8A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B2F1049C-2771-4EBF-A9A0-08028109217D', 207, N'788966', N'2016-10-28 09:55', 0, 0, 0, N'2', CAST(0x0000A6AD009C3C18 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'8E51A31F-6D95-4DD7-A5C7-7F43281689EF', 208, N'788967', N'2016-10-28 10:00', 0, 0, 0, N'2', CAST(0x0000A6AD009D9BA8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D86A3B2A-4A14-446F-A988-B91075A87B69', 209, N'788968', N'2016-10-28 10:05', 0, 0, 0, N'2', CAST(0x0000A6AD009EFB38 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B171C454-B1CE-4AE7-B8B9-0A91C3EE6BD6', 210, N'788969', N'2016-10-28 10:10', 0, 0, 0, N'2', CAST(0x0000A6AD00A05ACA AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'64D6D7BF-1879-43E3-A321-6FEF8159C732', 211, N'788970', N'2016-10-28 10:15', 0, 0, 0, N'2', CAST(0x0000A6AD00A1BA59 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'582F7295-F012-480C-B9D1-94555E5EA68C', 212, N'788971', N'2016-10-28 10:20', 0, 0, 0, N'2', CAST(0x0000A6AD00A319EA AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'52952111-3434-4ACE-AD26-672FC478BFB2', 213, N'788972', N'2016-10-28 10:25', 0, 0, 0, N'2', CAST(0x0000A6AD00A4797A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'DCD3764B-49E7-4845-92B5-53A23FCFB712', 214, N'788973', N'2016-10-28 10:30', 0, 0, 0, N'2', CAST(0x0000A6AD00A5D90A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'AB383B12-C590-4657-9396-309DF9F5B7B0', 215, N'788974', N'2016-10-28 10:35', 0, 0, 0, N'2', CAST(0x0000A6AD00A7389B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'637D4417-E7B8-4F75-810F-EF06E0F1025F', 216, N'788975', N'2016-10-28 10:40', 0, 0, 0, N'0', CAST(0x0000A6AD00A89828 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'073E53DF-8AB2-42CC-B03D-9982E15CF5F4', 217, N'788976', N'2016-10-28 10:45', 0, 0, 0, N'2', CAST(0x0000A6AD00A9F7B8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'817A8DB6-C814-4C24-9BE0-FA44B414F788', 218, N'788977', N'2016-10-28 10:50', 0, 0, 0, N'2', CAST(0x0000A6AD00AB574A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F0AE8144-06C7-4D56-A1CD-C4A6523B9B37', 219, N'788978', N'2016-10-28 10:55', 0, 0, 0, N'2', CAST(0x0000A6AD00ACB6D8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'9A718F47-6E81-4A36-A79C-DC76231F9707', 220, N'788979', N'2016-10-28 11:00', 0, 0, 0, N'2', CAST(0x0000A6AD00AE0AD4 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'14046875-5314-40D4-A3A8-BD068BDF9851', 221, N'788980', N'2016-10-28 11:05', 0, 0, 0, N'2', CAST(0x0000A6AD00B0D58C AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'BC81B843-B78E-4EA4-823F-3A5169836D5A', 222, N'788981', N'2016-10-28 11:10', 0, 0, 0, N'2', CAST(0x0000A6AD00B2351B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'94097D97-35D9-4B4B-9089-E182B1187961', 223, N'788982', N'2016-10-28 11:15', 0, 0, 0, N'2', CAST(0x0000A6AD00B394A9 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'51E142FA-054E-4A57-991F-A0EFA8446F97', 224, N'788983', N'2016-10-28 11:20', 0, 0, 0, N'2', CAST(0x0000A6AD00B4F43A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'91E84641-77AB-447E-9524-D24C6D4D334D', 225, N'788984', N'2016-10-28 11:25', 0, 0, 0, N'2', CAST(0x0000A6AD00B6482E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'5E34796E-AE25-4087-8DD4-700ED71BD6AE', 226, N'788985', N'2016-10-28 11:30', 0, 0, 0, N'2', CAST(0x0000A6AD00B7B358 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'24A202DA-82A5-420A-90CE-C18EA12FE50F', 227, N'788986', N'2016-10-28 11:35', 0, 0, 0, N'0', CAST(0x0000A6AD00B912EB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1FC9EF9D-67CE-4896-AA98-4B55A8F8D529', 228, N'788987', N'2016-10-28 11:40', 0, 0, 0, N'0', CAST(0x0000A6AD00BA7278 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D863B182-2205-4EF1-A609-29F5D66EC8A1', 229, N'788988', N'2016-10-28 11:45', 0, 0, 0, N'0', CAST(0x0000A6AD00BBD208 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'C0C4C6B5-2410-49D3-BECF-5D881E80396C', 230, N'788989', N'2016-10-28 11:50', 0, 0, 0, N'0', CAST(0x0000A6AD00C33CDE AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B652D4E9-9419-40EE-9402-F000877669FF', 231, N'789245', N'2016-10-29 18:15', 0, 0, 0, N'2', CAST(0x0000A6AE012C3873 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'3468706E-5D21-47FA-9109-11AE3612D347', 232, N'789246', N'2016-10-29 18:20', 0, 0, 0, N'2', CAST(0x0000A6AE012C3873 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'493E800D-F612-488C-A0FC-CA8A29DD3561', 233, N'789247', N'2016-10-29 18:25', 0, 0, 0, N'2', CAST(0x0000A6AE012C3873 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'96DBBBF5-6F1B-480B-B21B-8A9CF0E2CA20', 234, N'789248', N'2016-10-29 18:30', 0, 0, 0, N'2', CAST(0x0000A6AE012C3873 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'945AA5BE-6832-46C0-8477-DD82F9196BF8', 235, N'789249', N'2016-10-29 18:35', 0, 0, 0, N'2', CAST(0x0000A6AE012C3873 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'6F1A4850-41BA-413C-BD2F-565AAEFE719E', 236, N'789250', N'2016-10-29 18:40', 0, 0, 0, N'2', CAST(0x0000A6AE012C6294 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'FEC99D33-2D09-4CE3-9F7D-A5316EEF3C41', 237, N'789251', N'2016-10-29 18:45', 0, 0, 0, N'2', CAST(0x0000A6AE012DCDBA AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A790B796-63EB-4E57-AB59-97AE7B5A41A1', 238, N'789252', N'2016-10-29 18:50', 0, 0, 0, N'2', CAST(0x0000A6AE012F2D4A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'24E115A2-9FCF-4457-9C2C-5DA9ED2D49D8', 239, N'789253', N'2016-10-29 18:55', 0, 0, 0, N'2', CAST(0x0000A6AE01308138 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'E91BD659-CD40-41AB-A6DB-51641329AF1C', 240, N'789254', N'2016-10-29 19:00', 0, 0, 0, N'2', CAST(0x0000A6AE0131E0C5 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'5E264C14-F38F-4262-8E45-FA358BB82806', 241, N'789255', N'2016-10-29 19:05', 0, 0, 0, N'2', CAST(0x0000A6AE01334BFA AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'2A3A46E9-2E86-446C-82F8-58E3A3D772A3', 242, N'789256', N'2016-10-29 19:10', 0, 0, 0, N'2', CAST(0x0000A6AE0134AB89 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'6B07A8DA-B7DA-47A6-94B6-06146CE4491A', 243, N'789257', N'2016-10-29 19:15', 0, 0, 0, N'0', CAST(0x0000A6AE01360B18 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'4D4C378D-B5A5-400E-BD64-AA746A583B8A', 244, N'789258', N'2016-10-29 19:20', 0, 0, 0, N'0', CAST(0x0000A6AE01376AA8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'4E0807D2-DCAB-4F92-A234-110924EB967F', 245, N'789259', N'2016-10-29 19:25', 0, 0, 0, N'0', CAST(0x0000A6AE0138CA38 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'BC9652DA-EC64-435C-9BEC-431BA032F021', 246, N'789260', N'2016-10-29 19:30', 0, 0, 0, N'0', CAST(0x0000A6AE013A29CC AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'92460B4F-B725-41A0-8ACC-6670B2F2D7E6', 247, N'789261', N'2016-10-29 19:35', 0, 0, 0, N'0', CAST(0x0000A6AE013B8958 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'2601BFD7-26A7-4588-A52F-7DCA73868DBD', 248, N'789499', N'2016-10-31 09:40', 1, 500, 1, N'2', CAST(0x0000A6B0009DAA0E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B1017CE9-4C2E-4098-9CF9-447EAAA5C9B9', 249, N'789500', N'2016-10-31 09:45', 1, 500, 0, N'2', CAST(0x0000A6B0009DAA0E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D547A307-599E-445C-91A4-BED1791D46E7', 250, N'789501', N'2016-10-31 09:50', 1, 1000, 1, N'2', CAST(0x0000A6B0009DAA0E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'4A88B100-70B8-46E1-83E3-F9AF17F9169E', 251, N'789502', N'2016-10-31 09:55', 1, 333, 0, N'2', CAST(0x0000A6B0009DAA0E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'24768EB5-2703-451A-A785-4172E4C12993', 252, N'789503', N'2016-10-31 10:00', 0, 0, 0, N'2', CAST(0x0000A6B0009F8EFD AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'C4570BBC-5C62-48D6-AA08-6A69010AEA6E', 253, N'789504', N'2016-10-31 10:05', 0, 0, 0, N'2', CAST(0x0000A6B0009F8EFD AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'FE392752-D9D4-43E5-A6CC-CD6AC79350CC', 254, N'789505', N'2016-10-31 10:10', 0, 0, 0, N'2', CAST(0x0000A6B000A253B6 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'5DDF0303-2D66-4375-A9F9-EAD858D30F8E', 255, N'789506', N'2016-10-31 10:15', 0, 0, 0, N'2', CAST(0x0000A6B000A253B6 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'3BB3D214-3646-436A-A4F2-B0932067CD14', 256, N'789507', N'2016-10-31 10:20', 0, 0, 0, N'0', CAST(0x0000A6B000A5299A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'4650313B-8D24-44F5-B01C-EBB515B224C7', 257, N'789508', N'2016-10-31 10:25', 0, 0, 0, N'0', CAST(0x0000A6B000A5299A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'80EFC2F5-CA06-45E4-971A-0098DF4595C8', 258, N'789509', N'2016-10-31 10:30', 0, 0, 0, N'0', CAST(0x0000A6B000A7C5C8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'2503A6BC-0CF2-4279-AF4E-29850FBE4CFC', 259, N'789510', N'2016-10-31 10:35', 0, 0, 0, N'0', CAST(0x0000A6B000A7C5C8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'E3CE38E0-52AA-439B-8549-0F7719DFE8F6', 260, N'789513', N'2016-10-31 10:50', 0, 0, 0, N'2', CAST(0x0000A6B000B0B2DF AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'78023C62-A414-4709-809C-2F3E6748576C', 261, N'789514', N'2016-10-31 10:55', 0, 0, 0, N'2', CAST(0x0000A6B000B0B2DF AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'35F1BE49-81D5-422E-9F55-6FBDBA86AB8D', 262, N'789515', N'2016-10-31 11:00', 0, 0, 0, N'2', CAST(0x0000A6B000B0B2DF AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'0DDD8045-DADE-48A1-A100-C399B3C57129', 263, N'789516', N'2016-10-31 11:05', 0, 0, 0, N'2', CAST(0x0000A6B000B0B2DF AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D2072525-CA46-4E4D-9B45-BA7DBF718E44', 264, N'789517', N'2016-10-31 11:10', 0, 0, 0, N'2', CAST(0x0000A6B000B2ABDB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'11B0775C-D9AB-4BEE-902F-6F6B64B5EE7D', 265, N'789518', N'2016-10-31 11:15', 0, 0, 0, N'2', CAST(0x0000A6B000B2ABDB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'940B2453-1EE7-4E29-A4EF-E7BF29BC376D', 266, N'789519', N'2016-10-31 11:20', 0, 0, 0, N'2', CAST(0x0000A6B000B56C89 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'61D59537-CADD-4566-8564-172ED661AE35', 267, N'789520', N'2016-10-31 11:25', 0, 0, 0, N'2', CAST(0x0000A6B000B56C89 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'0836432E-EF13-4EBA-8467-FC4F6560418E', 268, N'789521', N'2016-10-31 11:30', 0, 0, 0, N'2', CAST(0x0000A6B000B82DBC AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B44F0729-5CA6-415A-A938-98463442302F', 269, N'789522', N'2016-10-31 11:35', 0, 0, 0, N'2', CAST(0x0000A6B000B82DBC AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'2218578C-551A-49E7-8335-A303067CFF24', 270, N'789523', N'2016-10-31 11:40', 0, 0, 0, N'2', CAST(0x0000A6B000BBCECB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'DCF27C0F-5BBB-4EC8-80C0-39B896D13424', 271, N'789524', N'2016-10-31 11:45', 0, 0, 0, N'2', CAST(0x0000A6B000BBCECB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'C8F0B337-895C-45EB-94A7-7A1614FCD2EC', 272, N'789525', N'2016-10-31 11:50', 0, 0, 0, N'2', CAST(0x0000A6B000BDE5C8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'345C21A6-5D79-43C6-96FD-706E8EB3BE44', 273, N'789526', N'2016-10-31 11:55', 0, 0, 0, N'2', CAST(0x0000A6B000BDE5C8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'69DDEA66-0781-4025-9A4F-BF344F2C40FC', 274, N'789527', N'2016-10-31 12:00', 0, 0, 0, N'0', CAST(0x0000A6B000C08A9F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'3ABE1408-5F7E-47F4-A720-9DE522D92879', 275, N'789528', N'2016-10-31 12:05', 0, 0, 0, N'2', CAST(0x0000A6B000C08AA4 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'EF53CBF3-EA5A-461F-A355-50BBBCFA1914', 276, N'789529', N'2016-10-31 12:10', 0, 0, 0, N'2', CAST(0x0000A6B000C37566 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'C1E4A74C-EAAF-4891-8B54-48E2EDCB2435', 277, N'789530', N'2016-10-31 12:15', 0, 0, 0, N'2', CAST(0x0000A6B000C37566 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'E7FB938D-1DA5-40B3-82F9-974E7D527506', 278, N'789531', N'2016-10-31 12:20', 0, 0, 0, N'2', CAST(0x0000A6B000C795CB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F00DC045-B17A-4201-B2A1-84DE625F6830', 279, N'789532', N'2016-10-31 12:25', 0, 0, 0, N'2', CAST(0x0000A6B000C795CB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'471DB9E2-F810-4CA5-87DE-DD45E928A480', 280, N'789533', N'2016-10-31 12:30', 0, 0, 0, N'2', CAST(0x0000A6B000C795CB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'C1FEB88D-4D06-4A83-BB9F-828E107BDFBF', 281, N'789534', N'2016-10-31 12:35', 0, 0, 0, N'2', CAST(0x0000A6B000CA1025 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'E2DDF8DC-CFF7-4112-8736-F4B0761F729C', 282, N'789535', N'2016-10-31 12:40', 0, 0, 0, N'0', CAST(0x0000A6B000CA1025 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'7DCD89EF-7264-42BA-88E3-791678995804', 283, N'789536', N'2016-10-31 12:45', 0, 0, 0, N'2', CAST(0x0000A6B000CCDB56 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'8FE547CD-D0F3-439D-ADC1-323E942266A5', 284, N'789537', N'2016-10-31 12:50', 0, 0, 0, N'2', CAST(0x0000A6B000CCDB56 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'4F716FE4-EFE8-495E-B621-7D7F9724F253', 285, N'789538', N'2016-10-31 12:55', 0, 0, 0, N'2', CAST(0x0000A6B000CFA70D AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1CA431A0-8AE2-4FB7-8B17-606D4D05091B', 286, N'789539', N'2016-10-31 13:00', 0, 0, 0, N'2', CAST(0x0000A6B000CFA70D AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'E00528FA-3E67-4EBC-BDF3-B813215DEDE9', 287, N'789540', N'2016-10-31 13:05', 0, 0, 0, N'2', CAST(0x0000A6B000D235B6 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'FB8263B2-AD41-4EA1-A684-EDDB347599B9', 288, N'789541', N'2016-10-31 13:10', 0, 0, 0, N'2', CAST(0x0000A6B000D235B6 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'0E450195-A789-4301-8167-2D6FB27FA05A', 289, N'789542', N'2016-10-31 13:15', 0, 0, 0, N'2', CAST(0x0000A6B000D5057E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'DC209627-CE24-4BC8-9154-B2FBEE2D9638', 290, N'789543', N'2016-10-31 13:20', 0, 0, 0, N'2', CAST(0x0000A6B000D5057E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'4AA8022C-4A0B-4EF3-A568-DE89948EF150', 291, N'789544', N'2016-10-31 13:25', 0, 0, 0, N'0', CAST(0x0000A6B000D7B308 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'8690CB2D-63F2-401D-9EA5-1D1BB9D27607', 292, N'789545', N'2016-10-31 13:30', 0, 0, 0, N'2', CAST(0x0000A6B000D7B308 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F9FD0752-08CF-4175-BA53-9DEDBEE2E6EB', 293, N'789546', N'2016-10-31 13:35', 0, 0, 0, N'2', CAST(0x0000A6B000DA7609 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'8BB87D78-8806-4643-AA80-024375573FBF', 294, N'789547', N'2016-10-31 13:40', 0, 0, 0, N'2', CAST(0x0000A6B000DA7609 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'3570B535-6C6B-4677-8985-B909D4B1E023', 295, N'789548', N'2016-10-31 13:45', 0, 0, 0, N'2', CAST(0x0000A6B000DEB422 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'9E62E8CE-1928-4CC4-93D8-24ABC922EFA7', 296, N'789549', N'2016-10-31 13:50', 0, 0, 0, N'2', CAST(0x0000A6B000DEB422 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'AA134FA4-46D0-4813-A161-C92CB3B13DDB', 297, N'789550', N'2016-10-31 13:55', 0, 0, 0, N'2', CAST(0x0000A6B000DEB422 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'6B3B9C2C-FA33-4F77-AE44-A2041C55495A', 298, N'789551', N'2016-10-31 14:00', 0, 0, 0, N'2', CAST(0x0000A6B000E19655 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'C3386023-956D-40C2-8415-9365EC01BAA2', 299, N'789552', N'2016-10-31 14:05', 0, 0, 0, N'2', CAST(0x0000A6B000E19655 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'70E2789A-3808-4463-BF56-BF573960338C', 300, N'789553', N'2016-10-31 14:10', 0, 0, 0, N'2', CAST(0x0000A6B000E455EC AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F5C98506-FBE7-4984-B0D8-4B75F9DF5610', 301, N'789554', N'2016-10-31 14:15', 0, 0, 0, N'2', CAST(0x0000A6B000E455EC AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'CD009E86-B4C7-4D83-A488-F25156DF4F06', 302, N'789555', N'2016-10-31 14:20', 0, 0, 0, N'2', CAST(0x0000A6B000E6FD98 AS DateTime))
GO
print 'Processed 300 total records'
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B4270238-1B11-4618-9954-FE9B0F462DE0', 303, N'789556', N'2016-10-31 14:25', 0, 0, 0, N'2', CAST(0x0000A6B000E6FD98 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'57E3BC27-DE3E-44AB-BC22-E784A00CEFFE', 304, N'789557', N'2016-10-31 14:30', 0, 0, 0, N'2', CAST(0x0000A6B000E9BC38 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'3868341E-F6A1-47D7-93B5-1E40CCD75A6B', 305, N'789558', N'2016-10-31 14:35', 0, 0, 0, N'2', CAST(0x0000A6B000E9BC38 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'391EC827-883B-4A78-BE4F-4135DF661241', 306, N'789559', N'2016-10-31 14:40', 0, 0, 0, N'2', CAST(0x0000A6B000EC89A5 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'E2E17CB2-BBC3-42E2-915A-E42A63F2A69E', 307, N'789560', N'2016-10-31 14:45', 0, 0, 0, N'0', CAST(0x0000A6B000EC89A5 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'716D7441-4C32-4D5A-98E8-61770DA6EEB5', 308, N'789561', N'2016-10-31 14:50', 0, 0, 0, N'2', CAST(0x0000A6B000EF5DDB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'7FEF6F45-0BCA-49D5-ADD0-B341377AA752', 309, N'789562', N'2016-10-31 14:55', 0, 0, 0, N'2', CAST(0x0000A6B000EF5DDB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'CAEE20C7-5C8F-4ABA-B340-609AA3E44984', 310, N'789563', N'2016-10-31 15:00', 0, 0, 0, N'2', CAST(0x0000A6B000F1D770 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'6CF674EA-0CB9-45C7-B6B3-2A07E7DCCE78', 311, N'789564', N'2016-10-31 15:05', 0, 0, 0, N'2', CAST(0x0000A6B000F1D770 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'7261BD6D-ACE4-4142-B194-4257333A72C6', 312, N'789565', N'2016-10-31 15:10', 0, 0, 0, N'2', CAST(0x0000A6B000F5A750 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'AF27DB9D-2C3E-4284-9EB8-8576F33560B8', 313, N'789566', N'2016-10-31 15:15', 0, 0, 0, N'0', CAST(0x0000A6B000F5A750 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D796441F-AE00-4DC5-8845-67F36AB0BF80', 314, N'789567', N'2016-10-31 15:20', 0, 0, 0, N'0', CAST(0x0000A6B000F7B8E8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'EA9BF54D-3E47-4FF8-94D4-2B83F6E488B9', 315, N'789568', N'2016-10-31 15:25', 0, 0, 0, N'2', CAST(0x0000A6B000F7B8ED AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'AF285B54-5EB4-42AC-968D-0F128105E005', 316, N'789569', N'2016-10-31 15:30', 0, 0, 0, N'2', CAST(0x0000A6B000FA4E94 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1C138770-B559-4CBF-938A-0254018219EF', 317, N'789570', N'2016-10-31 15:35', 0, 0, 0, N'2', CAST(0x0000A6B000FA4E94 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'7830B9BF-D560-49A1-B71D-C0B761747281', 318, N'789571', N'2016-10-31 15:40', 0, 0, 0, N'2', CAST(0x0000A6B000FF8677 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'65D4E51C-5FE8-44C4-8F3D-7630426A015E', 319, N'789572', N'2016-10-31 15:45', 0, 0, 0, N'0', CAST(0x0000A6B000FF8677 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'61C8C683-01E9-48BC-8229-13380C51233D', 320, N'789573', N'2016-10-31 15:50', 0, 0, 0, N'0', CAST(0x0000A6B000FF8677 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1734BBC7-1AF6-4B60-B9C6-67377D67DC77', 321, N'789574', N'2016-10-31 15:55', 0, 0, 0, N'0', CAST(0x0000A6B00101023E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'25B2E14F-12DE-4584-B9F0-E65FA60788E8', 322, N'789575', N'2016-10-31 16:00', 0, 0, 0, N'2', CAST(0x0000A6B00101023E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'713565CF-62D4-41ED-8874-3C3362B9537C', 323, N'789577', N'2016-10-31 16:10', 0, 0, 0, N'2', CAST(0x0000A6B00108FD4D AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'775C232A-A10D-4358-9D0E-1A68A3F5505C', 324, N'789578', N'2016-10-31 16:15', 0, 0, 0, N'2', CAST(0x0000A6B00108FD4D AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'DDA649D1-AE28-45D4-B07A-328E112BCF19', 325, N'789579', N'2016-10-31 16:20', 0, 0, 0, N'2', CAST(0x0000A6B00108FD4D AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'AED9E226-2F8A-45D8-BED5-CEA113834C82', 326, N'789580', N'2016-10-31 16:25', 0, 0, 0, N'2', CAST(0x0000A6B00108FD4D AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'177E6DC8-616E-4701-A61E-072D27170E38', 327, N'789581', N'2016-10-31 16:30', 0, 0, 0, N'2', CAST(0x0000A6B0010AD4CE AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F28BA86C-2D7C-49B3-9DD7-6AAF66042412', 328, N'789582', N'2016-10-31 16:35', 0, 0, 0, N'2', CAST(0x0000A6B0010AD4CE AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D3325A62-2AF8-499D-A6D6-B8B678A72B51', 329, N'789583', N'2016-10-31 16:40', 2, 1000, 2, N'2', CAST(0x0000A6B0010DC671 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'400BDF99-75C0-4527-AD86-A40FC2EA2188', 330, N'789584', N'2016-10-31 16:45', 1, 500, 1, N'2', CAST(0x0000A6B0010DC671 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'7E4A1717-115C-4521-878C-F32C28390F0B', 331, N'789585', N'2016-10-31 16:50', 1, 560, 1, N'2', CAST(0x0000A6B001107BD4 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'7AF46A35-320B-417E-A221-D4005DC2F128', 332, N'789586', N'2016-10-31 16:55', 1, 1400, 1, N'2', CAST(0x0000A6B001107BD4 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'2D1493C3-F893-4296-B61B-681B74B612E9', 333, N'789587', N'2016-10-31 17:00', 0, 0, 0, N'2', CAST(0x0000A6B00112F8AF AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'14705DFD-4283-4B86-A4D0-532754CEFFE1', 334, N'789588', N'2016-10-31 17:05', 1, 1000, 1, N'2', CAST(0x0000A6B00112F8AF AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'958E0600-7331-4883-93B0-E034E98A259F', 335, N'789589', N'2016-10-31 17:10', 1, 560, 1, N'2', CAST(0x0000A6B00115E358 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'82AFCD4B-A1D3-4FAE-A3B3-11F3561DD140', 336, N'789590', N'2016-10-31 17:15', 1, 994, 0, N'2', CAST(0x0000A6B00115E358 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'0177DB2B-0FC3-42D4-9DE7-29DACF161B20', 337, N'789591', N'2016-10-31 17:20', 0, 0, 0, N'2', CAST(0x0000A6B0011884D3 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'691F0056-1B49-4154-82FA-0EE9D5AFD973', 338, N'789592', N'2016-10-31 17:25', 0, 0, 0, N'2', CAST(0x0000A6B0011884D3 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A2E7CA9A-97B7-44B2-BFF8-A9BAA2208CA6', 339, N'789593', N'2016-10-31 17:30', 0, 0, 0, N'2', CAST(0x0000A6B0011B6563 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B63957B9-20E0-468F-B5F1-E6BD4EEBAE03', 340, N'789594', N'2016-10-31 17:35', 0, 0, 0, N'2', CAST(0x0000A6B0011B6563 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'0F363049-C7A9-4EA1-AE71-37BC92DCFC13', 341, N'789595', N'2016-10-31 17:40', 0, 0, 0, N'2', CAST(0x0000A6B0011DDFEC AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'72E96973-72A6-4381-B5E8-B73B63696DF8', 342, N'789596', N'2016-10-31 17:45', 0, 0, 0, N'2', CAST(0x0000A6B0011DDFF1 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'32F3407F-C95E-4E7D-A0E1-C85D4586C102', 343, N'789597', N'2016-10-31 17:50', 0, 0, 0, N'2', CAST(0x0000A6B00120CE5E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'27A62B22-A718-41E7-84DD-D9AF6E90BFFD', 344, N'789598', N'2016-10-31 17:55', 0, 0, 0, N'2', CAST(0x0000A6B00120CE5E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'8D4759E9-9481-4DDD-9530-55BEB5E2B673', 345, N'789599', N'2016-10-31 18:00', 0, 0, 0, N'2', CAST(0x0000A6B001238171 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B623F895-B726-4AF3-8A1A-EF005DFFB34B', 346, N'789600', N'2016-10-31 18:05', 0, 0, 0, N'2', CAST(0x0000A6B001238171 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'82C6B6CE-7D62-4A7E-8829-7C7EE1580032', 347, N'789601', N'2016-10-31 18:10', 0, 0, 0, N'2', CAST(0x0000A6B00126DF38 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'8B96C9EF-51A8-48E5-A59E-7F5A72798A37', 348, N'789602', N'2016-10-31 18:15', 0, 0, 0, N'2', CAST(0x0000A6B00126DF38 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D96AA963-9FCC-4BDD-94EC-47518D295EC1', 349, N'789603', N'2016-10-31 18:20', 1, 1000, 1, N'2', CAST(0x0000A6B00129E959 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'99ED42C0-70C8-4024-87D5-591393C459F1', 350, N'789604', N'2016-10-31 18:25', 0, 0, 0, N'2', CAST(0x0000A6B00129E959 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'78C5FF7B-6D61-47E4-912B-288FBCD6E790', 351, N'789605', N'2016-10-31 18:30', 0, 0, 0, N'0', CAST(0x0000A6B0012BE1CA AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D758ED05-BE36-4F55-8BCA-AEE515B72B50', 352, N'789606', N'2016-10-31 18:35', 0, 0, 0, N'2', CAST(0x0000A6B0012BE1CA AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'714CAFD6-B14B-4EA0-B3C0-566A957EF46F', 353, N'789607', N'2016-10-31 18:40', 0, 0, 0, N'2', CAST(0x0000A6B0012EA3E1 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'E3522A9E-BD4C-4884-99EB-4DD976BC11AF', 354, N'789608', N'2016-10-31 18:45', 0, 0, 0, N'2', CAST(0x0000A6B0012EA3E6 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A7D853AF-5EC1-4BC4-9F80-04B58DBCA855', 355, N'789609', N'2016-10-31 18:50', 0, 0, 0, N'2', CAST(0x0000A6B00132BD8F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'523352DC-606F-404B-9B43-073ADAA53903', 356, N'789610', N'2016-10-31 18:55', 0, 0, 0, N'2', CAST(0x0000A6B00132BD8F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'503B1570-38D0-4711-897F-0690F52A6889', 357, N'789611', N'2016-10-31 19:00', 0, 0, 0, N'2', CAST(0x0000A6B00132BD8F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'98F44920-509C-4292-A977-440CB797DED3', 358, N'789612', N'2016-10-31 19:05', 0, 0, 0, N'2', CAST(0x0000A6B00135AFF6 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'4497B1AB-79D0-448B-9A09-439DE56C9667', 359, N'789613', N'2016-10-31 19:10', 0, 0, 0, N'2', CAST(0x0000A6B00135AFF6 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'C78A3FDA-DF08-418C-9862-CD1AEC137D1D', 360, N'789614', N'2016-10-31 19:15', 0, 0, 0, N'2', CAST(0x0000A6B001380EF2 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'61B0FC3B-39C2-4C3E-8444-1100E79F7A27', 361, N'789615', N'2016-10-31 19:20', 0, 0, 0, N'2', CAST(0x0000A6B001380EF2 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'E3F42CEF-C0D4-49F1-A335-568712B1DD04', 362, N'789616', N'2016-10-31 19:25', 0, 0, 0, N'2', CAST(0x0000A6B0013AD9E9 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'6B6CFC3B-4149-4A3E-ABB2-28A3B411D6ED', 363, N'789617', N'2016-10-31 19:30', 0, 0, 0, N'2', CAST(0x0000A6B0013AD9E9 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A0AB4468-1412-473F-8617-35DA52C8A271', 364, N'789618', N'2016-10-31 19:35', 0, 0, 0, N'2', CAST(0x0000A6B0013D54C4 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'3544625B-E29A-4E63-9DD8-A4B62DBE9077', 365, N'789619', N'2016-10-31 19:40', 0, 0, 0, N'2', CAST(0x0000A6B0013D54C4 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'CEE1EEB6-7375-4CFE-B979-CBAEBA46373C', 366, N'789620', N'2016-10-31 19:45', 0, 0, 0, N'2', CAST(0x0000A6B0014063E6 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'EB580C18-788D-4C78-9353-2911E8EA77E1', 367, N'789621', N'2016-10-31 19:50', 0, 0, 0, N'2', CAST(0x0000A6B0014063E6 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'324509E1-EC47-4EF9-943E-6352F8143E60', 368, N'789622', N'2016-10-31 19:55', 0, 0, 0, N'2', CAST(0x0000A6B00143545C AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F13E0291-D898-4EA5-A3DE-BBA200C0D373', 369, N'789623', N'2016-10-31 20:00', 0, 0, 0, N'2', CAST(0x0000A6B001435461 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'E1A98760-FF1F-4A62-9702-7FD47B2B14DE', 370, N'789624', N'2016-10-31 20:05', 0, 0, 0, N'2', CAST(0x0000A6B00145D6AA AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A34BB7E8-0F7C-4A96-A6AB-BFECD88EF8A2', 371, N'789625', N'2016-10-31 20:10', 0, 0, 0, N'2', CAST(0x0000A6B00145D6AA AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'7511D5BC-859C-42F0-8297-FF363EE7BC3B', 372, N'789626', N'2016-10-31 20:15', 0, 0, 0, N'2', CAST(0x0000A6B00148A57F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D6B0B302-D421-47FE-BCFF-454132580AD9', 373, N'789627', N'2016-10-31 20:20', 0, 0, 0, N'2', CAST(0x0000A6B00148A57F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'FE150B1D-EC23-4F2C-82CE-4A53CF20A95A', 374, N'789628', N'2016-10-31 20:25', 0, 0, 0, N'2', CAST(0x0000A6B0014B6BFF AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'CE1C82A7-3047-4B7A-933C-159A9EADE954', 375, N'789629', N'2016-10-31 20:30', 0, 0, 0, N'2', CAST(0x0000A6B0014B6BFF AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'76186B8D-3439-40C3-BCD1-DDFD5ED4D11A', 376, N'789630', N'2016-10-31 20:35', 0, 0, 0, N'2', CAST(0x0000A6B0014DD94D AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'3D0999F8-1B54-47D2-A72C-B167147D7793', 377, N'789631', N'2016-10-31 20:40', 0, 0, 0, N'2', CAST(0x0000A6B0014DD94D AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'46FDFCE8-08DD-4BA3-B2E1-9C87EAE91ED9', 378, N'789632', N'2016-10-31 20:45', 0, 0, 0, N'2', CAST(0x0000A6B001509854 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'2FB0E7F5-E848-48EE-B139-B242ABC039E2', 379, N'789633', N'2016-10-31 20:50', 0, 0, 0, N'2', CAST(0x0000A6B001509859 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'2DF1F739-E3BB-48DB-ABB1-6215E1F52D35', 380, N'789634', N'2016-10-31 20:55', 0, 0, 0, N'2', CAST(0x0000A6B001538688 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A5B09C6C-766F-4E14-A80E-417C0D7AA7F5', 381, N'789635', N'2016-10-31 21:00', 0, 0, 0, N'2', CAST(0x0000A6B001538688 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'3BE985B2-C2E2-47B0-ABD1-C06D8B197CF1', 382, N'789636', N'2016-10-31 20:50', 0, 0, 0, N'2', CAST(0x0000A6B001564669 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'96C3D99C-5946-47BD-970A-047AF8186985', 383, N'789637', N'2016-10-31 20:55', 0, 0, 0, N'2', CAST(0x0000A6B001564669 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1B015A57-5E2E-4BA0-A370-34D550788A25', 384, N'789638', N'2016-10-31 21:15', 0, 0, 0, N'2', CAST(0x0000A6B001591B07 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F223211E-5C83-4B50-8E01-CD1788D0743F', 385, N'789639', N'2016-10-31 21:20', 0, 0, 0, N'2', CAST(0x0000A6B001591B07 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'8A21CDFB-A505-4FFF-861F-F274252D97FA', 386, N'789640', N'2016-10-31 21:25', 0, 0, 0, N'2', CAST(0x0000A6B0015B9524 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'7C5483D6-F50A-4058-9A3A-1B943C4E0CA8', 387, N'789641', N'2016-10-31 21:30', 0, 0, 0, N'0', CAST(0x0000A6B0015B9524 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'3D4558B8-5B1E-42E4-9B0B-0453AFB20847', 388, N'789642', N'2016-10-31 21:35', 0, 0, 0, N'2', CAST(0x0000A6B0015E5F8F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'DFBABFF3-C5DE-48AA-BD14-AF94E15E5123', 389, N'789643', N'2016-10-31 21:40', 0, 0, 0, N'2', CAST(0x0000A6B0015E5F8F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1430D583-5A92-47F7-89D3-197FA14BF9E6', 390, N'789644', N'2016-10-31 21:45', 0, 0, 0, N'2', CAST(0x0000A6B0016141D1 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'6FD753B9-77F2-4AA9-B1BF-13EE926FB4EA', 391, N'789645', N'2016-10-31 21:50', 0, 0, 0, N'2', CAST(0x0000A6B0016141D6 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'4307B056-386B-4685-B482-440D5DE9059A', 392, N'789646', N'2016-10-31 21:55', 0, 0, 0, N'2', CAST(0x0000A6B001640104 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'181F7EAC-A8A3-490A-96D2-0C18225D3EC2', 393, N'789647', N'2016-10-31 22:00', 0, 0, 0, N'2', CAST(0x0000A6B001640104 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D2CFDE7C-377D-426F-905D-203E85F821D8', 394, N'789648', N'2016-10-31 22:05', 0, 0, 0, N'2', CAST(0x0000A6B00166EEF3 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'116E0F88-FACA-497D-9B46-531FC6100CDB', 395, N'789649', N'2016-10-31 22:10', 0, 0, 0, N'0', CAST(0x0000A6B00166EEF8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'0733D88B-BB7F-4B27-80B7-30278333F14B', 396, N'789650', N'2016-10-31 22:15', 0, 0, 0, N'2', CAST(0x0000A6B001695063 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'428DBBC1-D993-4649-9486-F0B3353FA8BB', 397, N'789651', N'2016-10-31 22:20', 0, 0, 0, N'2', CAST(0x0000A6B001695063 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'5131066C-5A2F-4D08-8179-51E4A6BFF961', 398, N'789652', N'2016-10-31 22:25', 0, 0, 0, N'2', CAST(0x0000A6B0016C0FCB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'64C47B96-972A-48DD-A2E0-6A7809B2F33F', 399, N'789653', N'2016-10-31 22:30', 0, 0, 0, N'2', CAST(0x0000A6B0016C0FCB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'6285C8A8-5D2D-46F9-907F-A5BD9D1C455F', 400, N'789654', N'2016-10-31 22:35', 0, 0, 0, N'2', CAST(0x0000A6B0016EFD7F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'34635075-F00D-4ADB-AD15-EB7A4A3B2D7E', 401, N'789655', N'2016-10-31 22:40', 0, 0, 0, N'2', CAST(0x0000A6B0016EFD83 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'13208F8D-0505-49BF-808A-06AE85785FA4', 402, N'789656', N'2016-10-31 22:45', 0, 0, 0, N'2', CAST(0x0000A6B00171BCB8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F37F39CA-C273-4880-AF72-8B26ED3239C9', 403, N'789657', N'2016-10-31 22:50', 0, 0, 0, N'2', CAST(0x0000A6B00171BCB8 AS DateTime))
GO
print 'Processed 400 total records'
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A9D18092-77C7-4689-986C-7A0B4DC775AB', 404, N'789658', N'2016-10-31 22:55', 0, 0, 0, N'2', CAST(0x0000A6B001745A34 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'8D462530-6611-40A8-BC0A-106781DE571A', 405, N'789659', N'2016-10-31 23:00', 0, 0, 0, N'2', CAST(0x0000A6B001745A34 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'705E48D8-72AA-422C-8E86-7E542827AC02', 406, N'789660', N'2016-10-31 23:05', 0, 0, 0, N'2', CAST(0x0000A6B001775E16 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'4472AADE-9BEE-43BA-A2BA-1B689CC0C472', 407, N'789661', N'2016-10-31 23:10', 0, 0, 0, N'2', CAST(0x0000A6B001775E16 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F6C037AA-7A8D-459D-9DA0-4069D465A4D7', 408, N'789662', N'2016-10-31 23:15', 0, 0, 0, N'2', CAST(0x0000A6B00179FA64 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'ED96C666-29FB-46B1-B73F-0D58EDEC8B21', 409, N'789663', N'2016-10-31 23:20', 0, 0, 0, N'2', CAST(0x0000A6B00179FA64 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'E45012ED-F189-416D-9E8D-B124BBA303C7', 410, N'789664', N'2016-10-31 23:25', 0, 0, 0, N'2', CAST(0x0000A6B0017CCA3F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D7014E04-315C-4EBC-A858-AB3AF8277642', 411, N'789665', N'2016-10-31 23:30', 0, 0, 0, N'2', CAST(0x0000A6B0017CCA3F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'96E722A4-5639-49A9-9590-66272C353778', 412, N'789666', N'2016-10-31 23:36', 0, 0, 0, N'2', CAST(0x0000A6B0017F8404 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'02BE466A-44AF-4985-999F-8812E3CD9A12', 413, N'789667', N'2016-10-31 23:41', 0, 0, 0, N'2', CAST(0x0000A6B0017F8404 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F7083CA0-1891-4B4A-9ECD-3C0EEECC2AA3', 414, N'789668', N'2016-10-31 23:45', 0, 0, 0, N'2', CAST(0x0000A6B00182374E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'BDC52281-192D-4F08-9DFE-8F021A9FD7CB', 415, N'789669', N'2016-10-31 23:50', 0, 0, 0, N'2', CAST(0x0000A6B00182374E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A869AC55-A2C5-44DD-B87C-A12822462ABE', 416, N'789670', N'2016-10-31 23:55', 0, 0, 0, N'2', CAST(0x0000A6B00184CA1C AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'23116CC2-5E52-4E5B-A4E6-15D8BE83B5BE', 417, N'789671', N'2016-11-01 09:05', 0, 0, 0, N'2', CAST(0x0000A6B00184CA1C AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'E74EDDB9-4BC9-48DE-AEB7-24096F0F19CA', 418, N'789672', N'2016-11-01 09:10', 0, 0, 0, N'2', CAST(0x0000A6B00187B5E6 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'97BDFEB3-3F9D-4266-B9AF-F0D7E34DAF1B', 419, N'789673', N'2016-11-01 09:15', 0, 0, 0, N'2', CAST(0x0000A6B00187B5E6 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'333E40A6-5A30-404A-B3DA-E620AC115093', 420, N'789674', N'2016-11-01 09:20', 0, 0, 0, N'2', CAST(0x0000A6B1009625CB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'5451AAC3-0D3B-430F-8318-1A2BAA042EBE', 421, N'789675', N'2016-11-01 09:25', 0, 0, 0, N'2', CAST(0x0000A6B1009625CB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A10385D3-9952-418B-BF6D-7DB09133F53E', 422, N'789676', N'2016-11-01 09:30', 0, 0, 0, N'2', CAST(0x0000A6B1009625CB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'571C0828-9804-4371-BCAD-A90601C2D73D', 423, N'789677', N'2016-11-01 09:35', 0, 0, 0, N'2', CAST(0x0000A6B10098D92C AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A260620B-09A9-43B0-B27C-6B1FA1D45B32', 424, N'789678', N'2016-11-01 09:40', 0, 0, 0, N'2', CAST(0x0000A6B10098D92C AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A6C3340A-447C-42C1-89F0-8C3EB4227E53', 425, N'789679', N'2016-11-01 09:45', 0, 0, 0, N'2', CAST(0x0000A6B1009B80D2 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'28C997BF-CED8-4C67-BA48-BD2740605FC5', 426, N'789680', N'2016-11-01 09:50', 0, 0, 0, N'2', CAST(0x0000A6B1009B80D2 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'56E74EB2-1490-4EBB-9AF5-502DA3BB2165', 427, N'789681', N'2016-11-01 09:55', 0, 0, 0, N'2', CAST(0x0000A6B1009E344B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1A1F86E1-7A9B-4900-96C2-9BA031051ED7', 428, N'789682', N'2016-11-01 10:00', 0, 0, 0, N'2', CAST(0x0000A6B1009E344B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'56E6988B-2C6D-4EA1-B298-C7290F24847E', 429, N'789683', N'2016-11-01 10:05', 0, 0, 0, N'2', CAST(0x0000A6B100A0DC07 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D3702482-B5DE-4933-8DE3-0C75280D8815', 430, N'789684', N'2016-11-01 10:10', 0, 0, 0, N'2', CAST(0x0000A6B100A0DC0B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'635FA4BD-1E13-45AD-9D14-2ED10C885300', 431, N'789685', N'2016-11-01 10:15', 0, 0, 0, N'2', CAST(0x0000A6B100A3ED1D AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'84EA1A8B-477D-47B3-BE43-74034A2D40E8', 432, N'789686', N'2016-11-01 10:20', 0, 0, 0, N'2', CAST(0x0000A6B100A3ED1D AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'978D269C-014A-4E63-BA1C-E00A89DC1EDF', 433, N'789687', N'2016-11-01 10:25', 0, 0, 0, N'2', CAST(0x0000A6B100A65A29 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'BA3E717F-0913-4C60-A876-F9C7353D6C65', 434, N'789688', N'2016-11-01 10:30', 0, 0, 0, N'2', CAST(0x0000A6B100A65A2E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'00DF1FDA-A642-43C7-8C8C-F1C8853DD87F', 435, N'789689', N'2016-11-01 10:35', 0, 0, 0, N'2', CAST(0x0000A6B100A93C82 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'DD65FD78-0073-41C0-AC12-BC35869E018E', 436, N'789690', N'2016-11-01 10:40', 0, 0, 0, N'2', CAST(0x0000A6B100A93C82 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'18947E9E-A8AE-49A5-924B-37D789B3AAB2', 437, N'789691', N'2016-11-01 10:45', 0, 0, 0, N'2', CAST(0x0000A6B100ABD879 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'6D7058D8-C5C5-4F33-B65D-17CE7F8DC1BD', 438, N'789692', N'2016-11-01 10:50', 0, 0, 0, N'2', CAST(0x0000A6B100ABD87E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'4C8646B2-6D6B-4F55-B954-A6F81901536F', 439, N'789693', N'2016-11-01 10:55', 0, 0, 0, N'2', CAST(0x0000A6B100AEBADD AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'AD8AD5C3-7431-484C-BB2F-7BAAAB86DB48', 440, N'789694', N'2016-11-01 11:00', 0, 0, 0, N'2', CAST(0x0000A6B100AEBAE1 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F9BAA526-E8BB-4395-9DE1-AF4A6B9956A2', 441, N'789695', N'2016-11-01 11:05', 0, 0, 0, N'2', CAST(0x0000A6B100B16276 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'E2BFA60E-643B-4C7D-B824-FD7F84E5F4C4', 442, N'789696', N'2016-11-01 11:10', 0, 0, 0, N'2', CAST(0x0000A6B100B16276 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'12E11136-6E84-483A-B04A-2C7863DDF97A', 443, N'789697', N'2016-11-01 11:15', 0, 0, 0, N'2', CAST(0x0000A6B100B45C2F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'2827CA7A-BABF-4484-B4B5-9467F9B36C41', 444, N'789698', N'2016-11-01 11:20', 0, 0, 0, N'2', CAST(0x0000A6B100B45C34 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'81D860E9-6E7C-43B2-9023-AAF261090004', 445, N'789699', N'2016-11-01 11:25', 0, 0, 0, N'2', CAST(0x0000A6B100B6F89A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'DCA69832-2DC4-4580-BA01-EB0B84C0A3F3', 446, N'789700', N'2016-11-01 11:30', 0, 0, 0, N'2', CAST(0x0000A6B100B6F89A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'0E98E6CC-6B9B-44CC-BF60-DEC47B1E556A', 447, N'789701', N'2016-11-01 11:35', 0, 0, 0, N'2', CAST(0x0000A6B100B9ABA6 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'BC3DA6F0-DC90-49E5-8305-62A8D3546594', 448, N'789702', N'2016-11-01 11:40', 0, 0, 0, N'2', CAST(0x0000A6B100B9ABA6 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'414F86E6-FC12-4022-9352-EFCEB1E5CB5D', 449, N'789703', N'2016-11-01 11:45', 0, 0, 0, N'2', CAST(0x0000A6B100BC76D9 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'61B29FE3-956D-4E53-8C44-676835F8254C', 450, N'789704', N'2016-11-01 11:50', 0, 0, 0, N'2', CAST(0x0000A6B100BC76D9 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'5418BE5A-8ADF-44D3-9E33-82FA207554BE', 451, N'789705', N'2016-11-01 11:55', 0, 0, 0, N'2', CAST(0x0000A6B100BF3572 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1101993F-B84A-4C59-8E50-0688C89DCB79', 452, N'789706', N'2016-11-01 12:00', 0, 0, 0, N'2', CAST(0x0000A6B100BF3577 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'6CED0A4F-46AB-4CF9-9D17-B998DE9B518D', 453, N'789707', N'2016-11-01 12:05', 0, 0, 0, N'2', CAST(0x0000A6B100C1C5DB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'5B3CC0AB-43BB-4F48-8266-21CC91527775', 454, N'789708', N'2016-11-01 12:10', 0, 0, 0, N'2', CAST(0x0000A6B100C1C5DB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'9B6A0324-2DA6-4F63-9F3F-C0A551D42F80', 455, N'789709', N'2016-11-01 12:15', 0, 0, 0, N'2', CAST(0x0000A6B100C490C4 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'59AFBDA6-3319-4FE5-83A2-43F156064417', 456, N'789710', N'2016-11-01 12:20', 0, 0, 0, N'2', CAST(0x0000A6B100C490C4 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'52796D59-C431-4774-8841-3F4DB67B9B49', 457, N'789711', N'2016-11-01 12:25', 0, 0, 0, N'2', CAST(0x0000A6B100C79B81 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'9C555E66-EE20-4855-8C27-C2D94AFE11CA', 458, N'789712', N'2016-11-01 12:30', 0, 0, 0, N'2', CAST(0x0000A6B100C79B81 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'726CDC2F-1C31-4960-9BC9-93621E841E9B', 459, N'789713', N'2016-11-01 12:35', 0, 0, 0, N'2', CAST(0x0000A6B100CA5523 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D4CFADE2-2DA0-41FE-B81D-4A4ED614DFF1', 460, N'789714', N'2016-11-01 12:40', 0, 0, 0, N'2', CAST(0x0000A6B100CA5523 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A00A08E7-E9C8-4619-B941-95D1B218D9DC', 461, N'789715', N'2016-11-01 12:45', 0, 0, 0, N'2', CAST(0x0000A6B100CCB73E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'27DB56C6-1292-4FB8-849A-F60981352EE6', 462, N'789716', N'2016-11-01 12:50', 0, 0, 0, N'2', CAST(0x0000A6B100CCB73E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'80F3E473-130E-48CB-A1E9-9AC94D31E25E', 463, N'789717', N'2016-11-01 12:55', 0, 0, 0, N'2', CAST(0x0000A6B100CFA471 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'92FACBF5-FC5F-41E1-9A4D-153C54537D73', 464, N'789718', N'2016-11-01 13:00', 0, 0, 0, N'2', CAST(0x0000A6B100CFA471 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'AE9FE935-3D5D-40D8-B05C-B9FE7A91EC06', 465, N'789719', N'2016-11-01 13:05', 0, 0, 0, N'2', CAST(0x0000A6B100D29E41 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'CE20C5A3-E0CC-493A-8CEB-38D3D91869A2', 466, N'789720', N'2016-11-01 13:10', 0, 0, 0, N'2', CAST(0x0000A6B100D29E46 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'10F91AF4-0337-4BD5-80E2-B31516C441A5', 467, N'789721', N'2016-11-01 13:15', 0, 0, 0, N'2', CAST(0x0000A6B100D52E93 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'35DE37B1-8FAA-4F4B-ABE1-4DEF790EB845', 468, N'789722', N'2016-11-01 13:20', 0, 0, 0, N'2', CAST(0x0000A6B100D52E93 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'99AD7A8D-0B8E-4A8E-A660-3F0E7659E953', 469, N'789723', N'2016-11-01 13:25', 0, 0, 0, N'2', CAST(0x0000A6B100D7EE9F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'3550AD92-C31F-42A0-B5E1-67DEEB3BA1A0', 470, N'789724', N'2016-11-01 13:30', 0, 0, 0, N'2', CAST(0x0000A6B100D7EE9F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'C3049C39-ABE5-4853-91EC-5B5CDB0DF23F', 471, N'789725', N'2016-11-01 13:35', 0, 0, 0, N'2', CAST(0x0000A6B100DAACBA AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'5C50BCC1-843E-4C7D-92A8-24AD22FD7468', 472, N'789726', N'2016-11-01 13:40', 0, 0, 0, N'2', CAST(0x0000A6B100DAACBA AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'3A328069-5566-41AF-AD29-65E71ED940D5', 473, N'789727', N'2016-11-01 13:45', 0, 0, 0, N'2', CAST(0x0000A6B100DD6CD7 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'E850A1F5-58B5-4AC4-B8C8-A4691D27A12C', 474, N'789728', N'2016-11-01 13:50', 0, 0, 0, N'2', CAST(0x0000A6B100DD6CD7 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'0C08DF7E-2921-4262-B1FD-83927A207B56', 475, N'789729', N'2016-11-01 13:55', 0, 0, 0, N'2', CAST(0x0000A6B100E06D6B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'18D80B2F-A0F1-4BE9-8C55-812BBA780397', 476, N'789730', N'2016-11-01 14:00', 0, 0, 0, N'2', CAST(0x0000A6B100E06D6B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'2B632906-CA73-4E9B-9A8E-34B010F760FA', 477, N'789731', N'2016-11-01 14:05', 0, 0, 0, N'2', CAST(0x0000A6B100E2F5CD AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'E78E3498-4259-4212-9D72-0B57804C7E75', 478, N'789732', N'2016-11-01 14:10', 0, 0, 0, N'2', CAST(0x0000A6B100E2F5CD AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A5245EFD-F3B1-4F77-9AEE-60EC94824366', 479, N'789733', N'2016-11-01 14:15', 0, 0, 0, N'2', CAST(0x0000A6B100E58894 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D0510363-267D-4D1B-BBC6-51422103AB4D', 480, N'789734', N'2016-11-01 14:20', 0, 0, 0, N'2', CAST(0x0000A6B100E58894 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'01081D13-7844-4F09-B57D-C0CE7D685CF0', 481, N'789735', N'2016-11-01 14:25', 0, 0, 0, N'2', CAST(0x0000A6B100E82F65 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1AAA0490-AB17-483D-BE14-984FF579ECA1', 482, N'789736', N'2016-11-01 14:30', 0, 0, 0, N'2', CAST(0x0000A6B100E82F65 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'34BCB385-2B74-439D-B748-7A9A4B5EF591', 483, N'789737', N'2016-11-01 14:35', 0, 0, 0, N'2', CAST(0x0000A6B100EAED8F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'0F2AD31C-9040-4952-A3B6-3B55276FA4F2', 484, N'789738', N'2016-11-01 14:40', 0, 0, 0, N'2', CAST(0x0000A6B100EAED8F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'12E917C1-3AC3-43C0-8A19-5CFCE6F96168', 485, N'789739', N'2016-11-01 14:45', 0, 0, 0, N'2', CAST(0x0000A6B100EDB018 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F3CFF707-8308-4986-AFEB-4E9FF257A22F', 486, N'789740', N'2016-11-01 14:50', 0, 0, 0, N'2', CAST(0x0000A6B100EDB018 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'C5C6B59E-18FB-47E6-B4A1-B4F0DF229CC3', 487, N'789741', N'2016-11-01 14:55', 0, 0, 0, N'2', CAST(0x0000A6B100F072C1 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'BD1AE7F3-E5DB-4AE0-90A9-DE8CB5603DBB', 488, N'789742', N'2016-11-01 15:00', 0, 0, 0, N'2', CAST(0x0000A6B100F072C1 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'52055384-1366-40C8-9C4B-F50C07C4CCEB', 489, N'789743', N'2016-11-01 15:05', 0, 0, 0, N'2', CAST(0x0000A6B100F3369D AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F296EACD-A5AD-49A9-B520-03A66676A6E1', 490, N'789744', N'2016-11-01 15:10', 0, 0, 0, N'2', CAST(0x0000A6B100F3369D AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'4EA8534C-6BA2-4643-9AB6-DB9F67FA1295', 491, N'789745', N'2016-11-01 15:15', 0, 0, 0, N'2', CAST(0x0000A6B100F5F3CA AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'9C5162F8-88BA-4D0F-8AEF-13A847E41637', 492, N'789746', N'2016-11-01 15:20', 0, 0, 0, N'2', CAST(0x0000A6B100F5F3CA AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B6399064-926F-449A-8C58-F0621B143F84', 493, N'789747', N'2016-11-01 15:25', 0, 0, 0, N'2', CAST(0x0000A6B100F8B02E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'8DC5FF8C-7A4F-4530-9433-76DD0645ACEF', 494, N'789748', N'2016-11-01 15:30', 0, 0, 0, N'2', CAST(0x0000A6B100F8B02E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'335C0B66-5C5C-4D33-8783-3F0749E9C973', 495, N'789749', N'2016-11-01 15:35', 0, 0, 0, N'2', CAST(0x0000A6B100FB7072 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'7DE81C0C-DD31-4F6A-8C7E-3560A71AC429', 496, N'789750', N'2016-11-01 15:40', 0, 0, 0, N'2', CAST(0x0000A6B100FB7072 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'06B739B1-B5E7-4271-9777-860B7DCB5887', 497, N'789751', N'2016-11-01 15:45', 0, 0, 0, N'0', CAST(0x0000A6B100FE2935 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'66496A80-260D-4837-8D43-67BF98F36A2F', 498, N'789752', N'2016-11-01 15:50', 0, 0, 0, N'0', CAST(0x0000A6B100FE2935 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'2A1885D1-34CA-4B70-BBC4-9296D257AAAF', 499, N'789753', N'2016-11-01 15:55', 0, 0, 0, N'0', CAST(0x0000A6B10100E05E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'9B0C6432-8685-433D-AC97-F385CCBA6505', 500, N'789754', N'2016-11-01 16:00', 0, 0, 0, N'0', CAST(0x0000A6B10100E05E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'8FBD5006-A749-4CE2-8BA5-69533A9451AF', 501, N'789759', N'2016-11-01 16:25', 0, 0, 0, N'0', CAST(0x0000A6B1010C38F6 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'9FA5C081-1D53-4DCE-88BE-37E927A8D2AD', 502, N'789760', N'2016-11-01 16:30', 0, 0, 0, N'0', CAST(0x0000A6B1010C38F6 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'2A3B4A82-E679-462B-8F3F-1A599F6F3A85', 503, N'789761', N'2016-11-01 16:35', 0, 0, 0, N'0', CAST(0x0000A6B1010C38F6 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'048176BD-C9DC-4919-A393-F7C97029C261', 504, N'789762', N'2016-11-01 16:40', 0, 0, 0, N'0', CAST(0x0000A6B1010C38F6 AS DateTime))
GO
print 'Processed 500 total records'
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'135AA11B-265B-4417-AD3F-AF99820F7531', 505, N'789765', N'2016-11-01 16:55', 0, 0, 0, N'2', CAST(0x0000A6B101143EF4 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'3E7D05F8-FA61-462E-84CD-F0DD864B7BD8', 506, N'789766', N'2016-11-01 17:00', 0, 0, 0, N'0', CAST(0x0000A6B101143EF4 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'E9EC64F1-5166-4DDC-B84A-3449A64286B1', 507, N'789767', N'2016-11-01 17:05', 0, 0, 0, N'2', CAST(0x0000A6B101143EF4 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'617AC2C7-D78A-44A0-A464-A10040362806', 508, N'789768', N'2016-11-01 17:10', 0, 0, 0, N'2', CAST(0x0000A6B101143EF4 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'7D04812D-2074-4A35-AED1-8C86D70B1769', 509, N'789769', N'2016-11-01 17:15', 0, 0, 0, N'2', CAST(0x0000A6B10116EBF8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'4CE6C66A-88AF-41B4-AEC7-AB435D03AED1', 510, N'789770', N'2016-11-01 17:20', 0, 0, 0, N'2', CAST(0x0000A6B10116EBF8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'FC6D6EF6-E63F-4E64-848C-8FFF279EEDF5', 511, N'789771', N'2016-11-01 17:25', 0, 0, 0, N'2', CAST(0x0000A6B10119A233 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'4BE70027-42E0-414B-87A1-D82350DA4A0D', 512, N'789772', N'2016-11-01 17:30', 0, 0, 0, N'2', CAST(0x0000A6B10119A233 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B6EAE81B-8410-4BEF-86C0-83BCCFDF9B02', 513, N'789773', N'2016-11-01 17:35', 0, 0, 0, N'2', CAST(0x0000A6B1011D2B6D AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'7BD49777-D6CE-4039-8D11-BAA643068B98', 514, N'789774', N'2016-11-01 17:40', 0, 0, 0, N'2', CAST(0x0000A6B1011D2B6D AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B67F2B66-BD88-48E0-A683-0655B2BEBB40', 515, N'789775', N'2016-11-01 17:45', 0, 0, 0, N'2', CAST(0x0000A6B1011F2F89 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B699923E-4009-4809-BB60-2C8CB39CB743', 516, N'789776', N'2016-11-01 17:50', 0, 0, 0, N'2', CAST(0x0000A6B1011F2F89 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'782574F4-1B6F-4625-8F07-7327ADCD787D', 517, N'789777', N'2016-11-01 17:55', 0, 0, 0, N'2', CAST(0x0000A6B10122BC1F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'872184CF-B882-424E-A0EE-49B1A3B96743', 518, N'789778', N'2016-11-01 18:00', 0, 0, 0, N'2', CAST(0x0000A6B10122BC1F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'429BF588-C4C7-4194-8B44-AD865FDD4BED', 519, N'789779', N'2016-11-01 18:05', 0, 0, 0, N'2', CAST(0x0000A6B10124A700 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'11037400-7DA6-4F23-825B-671BE25E2664', 520, N'789780', N'2016-11-01 18:10', 0, 0, 0, N'2', CAST(0x0000A6B10124A700 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'15C5C9A4-F166-44DD-84C1-4E64151F830B', 521, N'789781', N'2016-11-01 18:15', 0, 0, 0, N'2', CAST(0x0000A6B101275AE4 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'40F61B6F-D493-4B04-AFDA-57FF4DCDE767', 522, N'789782', N'2016-11-01 18:20', 0, 0, 0, N'2', CAST(0x0000A6B101275AE4 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'529C41BD-DCB3-4172-98C2-03E3F78BF132', 523, N'789783', N'2016-11-01 18:25', 0, 0, 0, N'2', CAST(0x0000A6B1012A19EC AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'0557C22C-CE2D-427D-AEC3-F66D69D59D97', 524, N'789784', N'2016-11-01 18:30', 0, 0, 0, N'2', CAST(0x0000A6B1012A19EC AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'3383C423-3B60-41A8-BD45-F36C74AC5E59', 525, N'789785', N'2016-11-01 18:35', 0, 0, 0, N'2', CAST(0x0000A6B1012CE170 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D4DA4E4A-6E83-43E6-9541-C4605ECE6816', 526, N'789786', N'2016-11-01 18:40', 0, 0, 0, N'2', CAST(0x0000A6B1012CE170 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'68411D75-3F5E-4B1F-9145-B687A56CFE11', 527, N'789787', N'2016-11-01 18:45', 0, 0, 0, N'2', CAST(0x0000A6B1012F9AA7 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'64766BA5-435A-4A0A-A6F2-61A780A753EA', 528, N'789788', N'2016-11-01 18:50', 0, 0, 0, N'2', CAST(0x0000A6B1012F9AA7 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'3568AA18-7B62-4F82-8C78-1FA0A9830868', 529, N'789789', N'2016-11-01 18:55', 0, 0, 0, N'2', CAST(0x0000A6B101325F64 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'267EF62A-FD5B-4973-AC0C-493E0E61B8C6', 530, N'789790', N'2016-11-01 19:00', 0, 0, 0, N'2', CAST(0x0000A6B101325F64 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'62CE2FBB-325D-44EE-82E0-64305EE11027', 531, N'789791', N'2016-11-01 19:05', 0, 0, 0, N'2', CAST(0x0000A6B10135148D AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'10178A43-342D-4ABE-B436-67DAE989433F', 532, N'789792', N'2016-11-01 19:10', 0, 0, 0, N'2', CAST(0x0000A6B10135148D AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'6541415C-CE7F-460D-82EB-FCF2D53C6A5B', 533, N'789793', N'2016-11-01 19:15', 0, 0, 0, N'2', CAST(0x0000A6B10137ED04 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'AB724F17-2D56-4A88-A776-EB2810CD7280', 534, N'789794', N'2016-11-01 19:20', 0, 0, 0, N'2', CAST(0x0000A6B10137ED09 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'150F3AA3-09F0-46CF-9230-DC4B819F3DF6', 535, N'789795', N'2016-11-01 19:25', 0, 0, 0, N'2', CAST(0x0000A6B1013B68FD AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'381E404D-98EE-4E3A-A49B-A9247795B720', 536, N'789796', N'2016-11-01 19:30', 0, 0, 0, N'2', CAST(0x0000A6B1013B68FD AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'FA13477E-931A-4343-B1B0-FE0B5C5554C5', 537, N'789797', N'2016-11-01 19:35', 0, 0, 0, N'2', CAST(0x0000A6B1013D537F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'30DE381B-70D7-4041-A965-E66B4605FDB6', 538, N'789798', N'2016-11-01 19:40', 0, 0, 0, N'2', CAST(0x0000A6B1013D537F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'6106AC45-2229-4AFB-8380-3FAE75F975BC', 539, N'789799', N'2016-11-01 19:45', 0, 0, 0, N'2', CAST(0x0000A6B101401C0C AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'CFBFE04D-EC68-4691-A3E8-47A83A346E79', 540, N'789800', N'2016-11-01 19:50', 0, 0, 0, N'2', CAST(0x0000A6B101401C11 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'05428DF2-49EC-48B2-A51C-E5282BB42572', 541, N'789801', N'2016-11-01 19:55', 0, 0, 0, N'2', CAST(0x0000A6B10142D385 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'EFCCA146-670D-46F9-B014-AA2EF61678EE', 542, N'789802', N'2016-11-01 20:00', 0, 0, 0, N'2', CAST(0x0000A6B10142D385 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'39D1DD4B-C695-4442-91D6-59E961BD782D', 543, N'789803', N'2016-11-01 20:05', 0, 0, 0, N'2', CAST(0x0000A6B101458927 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'83B47F3B-5F34-40D4-8994-5F9A7F8B1866', 544, N'789804', N'2016-11-01 20:10', 0, 0, 0, N'2', CAST(0x0000A6B101458927 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'CDFC0FB4-4EEA-44F8-9FA8-484FA97E5E23', 545, N'789805', N'2016-11-01 20:15', 0, 0, 0, N'2', CAST(0x0000A6B10148567E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'32E6E8CD-9F48-45EB-9F09-CEAB725B1FD3', 546, N'789806', N'2016-11-01 20:20', 0, 0, 0, N'2', CAST(0x0000A6B10148567E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'84BCC0E6-AA3F-4E87-BA3C-275D008E562A', 547, N'789807', N'2016-11-01 20:25', 0, 0, 0, N'2', CAST(0x0000A6B1014B0C49 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'83AADF98-6FCA-44A1-A88C-1FD0C0928A10', 548, N'789808', N'2016-11-01 20:30', 0, 0, 0, N'2', CAST(0x0000A6B1014B0C49 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'E554F43F-9902-4267-96A4-6EDD993921B5', 549, N'789809', N'2016-11-01 20:35', 0, 0, 0, N'2', CAST(0x0000A6B1014DEA38 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'7E4F9B76-3AE7-49BD-8257-F142821EA294', 550, N'789810', N'2016-11-01 20:40', 0, 0, 0, N'2', CAST(0x0000A6B1014DEA38 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D2237E2D-E6E2-458F-8923-DDEB535CACCB', 551, N'789811', N'2016-11-01 20:45', 0, 0, 0, N'2', CAST(0x0000A6B101508EB9 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'55385F37-1D8E-4F29-AE28-E372691B69E7', 552, N'789812', N'2016-11-01 20:50', 0, 0, 0, N'2', CAST(0x0000A6B101508EB9 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'78D9C854-485D-407E-85AF-7462F5F730DE', 553, N'789813', N'2016-11-01 20:55', 0, 0, 0, N'2', CAST(0x0000A6B1015377E3 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'80F93EA2-8A48-4448-9AA3-B7546DCF280C', 554, N'789814', N'2016-11-01 21:00', 0, 0, 0, N'2', CAST(0x0000A6B1015377E3 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D06496BA-07D6-4F8E-BACC-6FD5C1E5FA6C', 555, N'789815', N'2016-11-01 21:05', 0, 0, 0, N'2', CAST(0x0000A6B10156D8EE AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'AAE2C537-E4EB-4D0D-B32B-23A8B66BFF8F', 556, N'789816', N'2016-11-01 21:10', 0, 0, 0, N'2', CAST(0x0000A6B10156D8EE AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'29FAE0AA-0F6F-4571-BE09-2FE9219F8779', 557, N'789817', N'2016-11-01 21:15', 0, 0, 0, N'2', CAST(0x0000A6B10158CC75 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'73C12546-C3A0-4601-A46F-915E04CE6291', 558, N'789818', N'2016-11-01 21:20', 0, 0, 0, N'2', CAST(0x0000A6B10158CC75 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F1C0B7A4-31D6-47D1-AD1B-367E6EEB2A91', 559, N'789819', N'2016-11-01 21:25', 0, 0, 0, N'2', CAST(0x0000A6B1015B9F08 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A8C04C7D-E441-4FC1-B3D1-C3ABAC555292', 560, N'789820', N'2016-11-01 21:30', 0, 0, 0, N'2', CAST(0x0000A6B1015B9F08 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'03F09EAD-B9DE-4B06-A178-F9CECF9267DD', 561, N'789821', N'2016-11-01 21:35', 0, 0, 0, N'2', CAST(0x0000A6B1015F15C7 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'AC7FE76D-6BA0-46DD-90C1-661136D8FA6E', 562, N'789822', N'2016-11-01 21:40', 0, 0, 0, N'2', CAST(0x0000A6B1015F15CC AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A34EC1AD-A777-45A8-BE36-C1820204AE5D', 563, N'789823', N'2016-11-01 21:45', 0, 0, 0, N'2', CAST(0x0000A6B101610DC1 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A2D13C46-38AE-4436-AAFA-E9A2EFC3C96F', 564, N'789824', N'2016-11-01 21:50', 0, 0, 0, N'2', CAST(0x0000A6B101610DC1 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'7A1955F7-AD35-4B65-8F81-FFC4CB0CBDE4', 565, N'789825', N'2016-11-01 21:55', 0, 0, 0, N'2', CAST(0x0000A6B10163C9BB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F9D37D5D-AED9-4AD5-8535-24571EAEA8E0', 566, N'789826', N'2016-11-01 22:00', 0, 0, 0, N'2', CAST(0x0000A6B10163C9BB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'78DB7679-920D-42F5-82D1-C33FCD1C2261', 567, N'789827', N'2016-11-01 22:05', 0, 0, 0, N'2', CAST(0x0000A6B1016721F1 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'13DB1CDA-8B2E-40D0-A74E-0746B73CAA6C', 568, N'789828', N'2016-11-01 22:10', 0, 0, 0, N'2', CAST(0x0000A6B1016721F1 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'C8622FD9-27C3-4D5E-AA64-DBF9722F87CB', 569, N'789829', N'2016-11-01 22:15', 0, 0, 0, N'2', CAST(0x0000A6B101694754 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'327AD685-4641-48D4-B63E-22592C46115E', 570, N'789830', N'2016-11-01 22:20', 0, 0, 0, N'2', CAST(0x0000A6B101694754 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'9DB9D9E4-1604-4AA3-B4C3-BE3E3FA0E8F1', 571, N'789831', N'2016-11-01 22:25', 0, 0, 0, N'2', CAST(0x0000A6B1016C0B99 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'BC226F05-939B-4453-A3DB-7319D987B605', 572, N'789832', N'2016-11-01 22:30', 0, 0, 0, N'2', CAST(0x0000A6B1016C0B99 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'6A5F23C2-DA7B-4E8E-A662-4FA3B6075F3F', 573, N'789833', N'2016-11-01 22:35', 0, 0, 0, N'2', CAST(0x0000A6B1016EC3CD AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'87801AC2-BD5B-455C-8205-030D6313921B', 574, N'789834', N'2016-11-01 22:40', 0, 0, 0, N'2', CAST(0x0000A6B1016EC3CD AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A05F4E0A-52C6-4D15-A800-4AD9935DE2D4', 575, N'789835', N'2016-11-01 22:45', 0, 0, 0, N'2', CAST(0x0000A6B101718CA6 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'047C4C4C-580A-4796-B6D1-7D1A0E66268B', 576, N'789836', N'2016-11-01 22:50', 0, 0, 0, N'2', CAST(0x0000A6B101718CA6 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'BB2C898B-7DFF-4F67-BFB5-00743BFF99CD', 577, N'789837', N'2016-11-01 22:55', 0, 0, 0, N'2', CAST(0x0000A6B101744F1E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'87FF3B2F-1051-4819-AC99-A8C88DA3D357', 578, N'789838', N'2016-11-01 23:00', 0, 0, 0, N'2', CAST(0x0000A6B101744F1E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'537A1942-C419-4DD3-82C5-E337821507A0', 579, N'789839', N'2016-11-01 23:05', 0, 0, 0, N'2', CAST(0x0000A6B1017703DC AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'15CCA574-4D4F-4126-86B5-57F41F5105B4', 580, N'789840', N'2016-11-01 23:10', 0, 0, 0, N'2', CAST(0x0000A6B1017703E1 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'54417B34-C5A8-48FE-A59C-41663DCF16B4', 581, N'789841', N'2016-11-01 23:15', 0, 0, 0, N'2', CAST(0x0000A6B1017A819F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'46155DD4-3434-4153-AA1E-46D10F060256', 582, N'789842', N'2016-11-01 23:20', 0, 0, 0, N'2', CAST(0x0000A6B1017A819F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'EB01BE4B-0FD4-4076-8504-136855727D2D', 583, N'789843', N'2016-11-01 23:25', 0, 0, 0, N'2', CAST(0x0000A6B1017C8188 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'BFDB8119-9CE3-4F8B-9A91-DD51D013F7D9', 584, N'789844', N'2016-11-01 23:30', 0, 0, 0, N'2', CAST(0x0000A6B1017C818D AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'11BD1925-2C0C-464F-9064-EF2F766D85BC', 585, N'789845', N'2016-11-01 23:35', 0, 0, 0, N'2', CAST(0x0000A6B1017F415E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'3590290C-A739-4388-B83E-965BC72EDC02', 586, N'789846', N'2016-11-01 23:40', 0, 0, 0, N'2', CAST(0x0000A6B1017F4162 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'7F2542DC-D044-465B-AE81-AF576C077FAF', 587, N'789847', N'2016-11-01 23:45', 0, 0, 0, N'2', CAST(0x0000A6B101820019 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'85E110D6-A5B1-423A-A505-0FB6E3539B5D', 588, N'789848', N'2016-11-01 23:50', 0, 0, 0, N'2', CAST(0x0000A6B101820019 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'19AF7C16-A72C-467A-8D6F-00F53B9C25E1', 589, N'789849', N'2016-11-01 23:55', 0, 0, 0, N'2', CAST(0x0000A6B10184BE3E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B147B0C1-DAA9-4C81-AE28-A893D8F03C32', 590, N'789850', N'2016-11-02 09:05', 0, 0, 0, N'2', CAST(0x0000A6B10184BE3E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'FBE18804-3045-411C-9A0B-2611BB16F56C', 591, N'789851', N'2016-11-02 09:10', 0, 0, 0, N'2', CAST(0x0000A6B101877C59 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'2E2893C9-C224-485F-9793-C19EACE804FD', 592, N'789852', N'2016-11-02 09:15', 0, 0, 0, N'2', CAST(0x0000A6B101877C59 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'EB57099C-3507-4BD3-8F9C-E01C52A67D16', 593, N'789853', N'2016-11-02 09:20', 0, 0, 0, N'2', CAST(0x0000A6B20095CD24 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'5DE4D58E-579B-42D8-BFDF-A808DEA25E15', 594, N'789854', N'2016-11-02 09:25', 0, 0, 0, N'2', CAST(0x0000A6B20095CD24 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F406D22C-84FF-404C-A455-119B1C35EF91', 595, N'789855', N'2016-11-02 09:30', 0, 0, 0, N'2', CAST(0x0000A6B20095CD24 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'48453A01-8192-4C10-8B6E-55E8C9709A36', 596, N'789856', N'2016-11-02 09:35', 0, 0, 0, N'2', CAST(0x0000A6B200988DF1 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'32F419B6-7A0E-4FF9-9B4E-A1AEFC159345', 597, N'789857', N'2016-11-02 09:40', 0, 0, 0, N'2', CAST(0x0000A6B200988DF1 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'9EA4E2E1-97FE-418A-96A7-362E902645E5', 598, N'789858', N'2016-11-02 09:45', 0, 0, 0, N'2', CAST(0x0000A6B2009B47FD AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'29AD0030-9855-404E-9EF0-856C19CC82FB', 599, N'789859', N'2016-11-02 09:50', 0, 0, 0, N'2', CAST(0x0000A6B2009B47FD AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'FFABB1F3-D7AE-459A-BD21-18D68290D2A9', 600, N'789860', N'2016-11-02 09:55', 0, 0, 0, N'2', CAST(0x0000A6B2009E0F7A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'C82070A1-A901-4EE7-95BC-71661C6BA09F', 601, N'789861', N'2016-11-02 10:00', 0, 0, 0, N'2', CAST(0x0000A6B2009E0F7A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'0E80E83D-05CD-49D3-806A-ADAEBA2DEF64', 602, N'789862', N'2016-11-02 10:05', 0, 0, 0, N'2', CAST(0x0000A6B200A0C6E8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1803CC29-FE79-46D3-BD22-26EC9DC304D0', 603, N'789863', N'2016-11-02 10:10', 0, 0, 0, N'2', CAST(0x0000A6B200A0C6E8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'43BB94B1-E6DF-4B2E-9E63-EA33C45F21BC', 604, N'789864', N'2016-11-02 10:15', 0, 0, 0, N'2', CAST(0x0000A6B200A38F79 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'501DA27D-A5E9-4722-B62E-FED5C86405BA', 605, N'789865', N'2016-11-02 10:20', 0, 0, 0, N'2', CAST(0x0000A6B200A38F79 AS DateTime))
GO
print 'Processed 600 total records'
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'747537F9-4FDB-49DC-A1CE-4E65D01BEAB6', 606, N'789866', N'2016-11-02 10:25', 0, 0, 0, N'2', CAST(0x0000A6B200A649BF AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B5DF323E-D922-48EC-BB4C-3A308E3FFD86', 607, N'789867', N'2016-11-02 10:30', 0, 0, 0, N'2', CAST(0x0000A6B200A649BF AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'C5F223BC-33FD-4C31-8EFD-51B262835711', 608, N'789868', N'2016-11-02 10:35', 0, 0, 0, N'2', CAST(0x0000A6B200A9554B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'DCC9EE8D-2939-4592-99D9-4B1941765A4C', 609, N'789869', N'2016-11-02 10:40', 0, 0, 0, N'2', CAST(0x0000A6B200A9554B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'07D765F1-6C51-494F-A0F2-8EE150C69746', 610, N'789870', N'2016-11-02 10:45', 0, 0, 0, N'2', CAST(0x0000A6B200ABC39D AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'35E973EE-98BF-4130-AAD1-6A5EE64069EF', 611, N'789871', N'2016-11-02 10:50', 0, 0, 0, N'2', CAST(0x0000A6B200ABC39D AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'285088B0-EE3D-44A4-9C28-7BC74AF32350', 612, N'789872', N'2016-11-02 10:55', 0, 0, 0, N'2', CAST(0x0000A6B200AE86E3 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'15261D47-E170-4182-BB7D-BEAC3BA9BD31', 613, N'789873', N'2016-11-02 11:00', 0, 0, 0, N'2', CAST(0x0000A6B200AE86E3 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'34A0246E-BBAF-466E-A831-E6AD244CBC96', 614, N'789874', N'2016-11-02 11:05', 0, 0, 0, N'2', CAST(0x0000A6B200B140AE AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'8AB5AEFB-1E6A-40B6-B6F2-342552D1E478', 615, N'789875', N'2016-11-02 11:10', 0, 0, 0, N'2', CAST(0x0000A6B200B140AE AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A2FBF318-CEB0-477C-99FC-089FAD255736', 616, N'789876', N'2016-11-02 11:15', 0, 0, 0, N'2', CAST(0x0000A6B200B4016C AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B8F026A3-B797-4077-8586-1E65AFBE7FAC', 617, N'789877', N'2016-11-02 11:20', 0, 0, 0, N'2', CAST(0x0000A6B200B4016C AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D91C70D0-34D1-434C-AFA0-DF9F20731784', 618, N'789878', N'2016-11-02 11:25', 0, 0, 0, N'2', CAST(0x0000A6B200B7B458 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B350086D-00C6-44D4-BE66-2ACC5772AE90', 619, N'789879', N'2016-11-02 11:30', 0, 0, 0, N'2', CAST(0x0000A6B200B7B458 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'5B24BBDF-DC5A-4123-8115-D2D8D12F5A68', 620, N'789880', N'2016-11-02 11:35', 0, 0, 0, N'2', CAST(0x0000A6B200B99769 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'78175B4E-1B2A-41B5-B810-25B504CC11AF', 621, N'789881', N'2016-11-02 11:40', 0, 0, 0, N'2', CAST(0x0000A6B200B99769 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'68B50A26-4A15-4F22-A885-07197529B522', 622, N'789882', N'2016-11-02 11:45', 0, 0, 0, N'2', CAST(0x0000A6B200BCC80D AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'CA6BFE1A-4713-4AF5-8F91-470734C99A25', 623, N'789883', N'2016-11-02 11:50', 0, 0, 0, N'2', CAST(0x0000A6B200BCC80D AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F9E4DB36-CEAE-4650-AF3D-687E10F06101', 624, N'789884', N'2016-11-02 11:55', 0, 0, 0, N'2', CAST(0x0000A6B200BEFC4B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'6841736C-0836-4528-A7B5-90B9F399F1D6', 625, N'789885', N'2016-11-02 12:00', 0, 0, 0, N'2', CAST(0x0000A6B200BEFC4B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'5C5BEDAB-9249-46B8-AF9C-D6730C65930B', 626, N'789886', N'2016-11-02 10:25', 0, 0, 0, N'2', CAST(0x0000A6B200C1BB6C AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D2739EF7-167D-40CD-8A1E-B98F5B1BB2BA', 627, N'789887', N'2016-11-02 10:30', 0, 0, 0, N'2', CAST(0x0000A6B200C1BB6C AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'244FEEA0-8D12-4106-83F3-C981524B2231', 628, N'789888', N'2016-11-02 12:15', 0, 0, 0, N'2', CAST(0x0000A6B200C47A1E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B38423A1-A956-4007-845A-8EDA8700537D', 629, N'789889', N'2016-11-02 12:20', 0, 0, 0, N'2', CAST(0x0000A6B200C47A23 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1C4094A1-6F80-4A14-A310-FAAF9CEE212B', 630, N'789890', N'2016-11-02 12:25', 0, 0, 0, N'2', CAST(0x0000A6B200C74BA5 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'75B4938E-103B-40A9-A637-4B0CD8852A35', 631, N'789891', N'2016-11-02 12:30', 0, 0, 0, N'2', CAST(0x0000A6B200C74BA5 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'0F56CF89-FB9F-4E12-83D8-85CCB3A4A3C2', 632, N'789892', N'2016-11-02 12:35', 0, 0, 0, N'2', CAST(0x0000A6B200C9F083 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'8BF460B8-8EE4-402F-AB34-F37BAE078402', 633, N'789893', N'2016-11-02 12:40', 0, 0, 0, N'2', CAST(0x0000A6B200C9F083 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'EC8F7402-85AE-42BA-BC03-F0D2034D095B', 634, N'789894', N'2016-11-02 12:45', 0, 0, 0, N'2', CAST(0x0000A6B200CCBCCE AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'76B81C12-BB63-42C0-8A3D-609FED52751F', 635, N'789895', N'2016-11-02 12:50', 0, 0, 0, N'2', CAST(0x0000A6B200CCBCCE AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'46E76299-7152-4499-B3E5-E9E45F92EC4E', 636, N'789896', N'2016-11-02 12:55', 0, 0, 0, N'2', CAST(0x0000A6B200CF7713 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'844E2E61-67E5-4DD1-BA69-649712E10F2F', 637, N'789897', N'2016-11-02 13:00', 0, 0, 0, N'2', CAST(0x0000A6B200CF7713 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'5C9B8285-7099-4ADD-863A-B67B924612B7', 638, N'789898', N'2016-11-02 13:05', 0, 0, 0, N'2', CAST(0x0000A6B200D237CE AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D6C32FCA-D5E0-40F3-8CCB-0E37776CC805', 639, N'789899', N'2016-11-02 13:10', 0, 0, 0, N'2', CAST(0x0000A6B200D237CE AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'E65D665A-BEC3-4AF2-8122-4B331E92CFDC', 640, N'789900', N'2016-11-02 13:15', 0, 0, 0, N'2', CAST(0x0000A6B200D50FCD AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B20202CD-F41E-41B3-BA03-E52F8A287993', 641, N'789901', N'2016-11-02 13:20', 0, 0, 0, N'2', CAST(0x0000A6B200D50FCD AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A53F51C6-DA9A-4040-828F-586ED30F45B2', 642, N'789902', N'2016-11-02 13:25', 0, 0, 0, N'2', CAST(0x0000A6B200D7BE12 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'30BB88D5-AD4A-456F-92C6-0171CF94F5F3', 643, N'789903', N'2016-11-02 13:30', 0, 0, 0, N'2', CAST(0x0000A6B200D7BE12 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'9856B207-D19E-423C-ACF5-E2D52D9888E3', 644, N'789904', N'2016-11-02 13:35', 0, 0, 0, N'2', CAST(0x0000A6B200DA77B7 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'95C752D2-8B78-40B1-B9BC-3076C4EF554A', 645, N'789905', N'2016-11-02 13:40', 0, 0, 0, N'2', CAST(0x0000A6B200DA77B7 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'06BD6778-72A1-4778-A6D4-D42B5EBCC96C', 646, N'789906', N'2016-11-02 13:45', 0, 0, 0, N'2', CAST(0x0000A6B200DD34C6 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'2C380913-A5D8-4A1A-8476-BD922C80168C', 647, N'789907', N'2016-11-02 13:50', 0, 0, 0, N'2', CAST(0x0000A6B200DD34C6 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'0E6BAE93-DA46-4B95-BFE5-AB64F289E7E8', 648, N'789908', N'2016-11-02 13:55', 0, 0, 0, N'2', CAST(0x0000A6B200E00419 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'940F60FA-2D37-477D-ABB9-AD479A912982', 649, N'789909', N'2016-11-02 14:00', 0, 0, 0, N'2', CAST(0x0000A6B200E00419 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'698538E5-0668-4810-86CA-2ABEAADF71A8', 650, N'789910', N'2016-11-02 14:05', 0, 0, 0, N'2', CAST(0x0000A6B200E2BCB5 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D656D5AA-92EE-4878-811D-C4777FC762BC', 651, N'789911', N'2016-11-02 14:10', 0, 0, 0, N'2', CAST(0x0000A6B200E2BCBA AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'CAD77260-0CE2-4A63-9B1C-ED241F243CE8', 652, N'789912', N'2016-11-02 14:15', 0, 0, 0, N'2', CAST(0x0000A6B200E5757F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'DD14E5C1-F09A-44AB-AA34-D0EE0BB4AA5A', 653, N'789913', N'2016-11-02 14:20', 0, 0, 0, N'2', CAST(0x0000A6B200E5757F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'AB4ED425-D26A-4C96-BB34-7E9A2F13E52C', 654, N'789914', N'2016-11-02 14:25', 0, 0, 0, N'2', CAST(0x0000A6B200E83B52 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'93B7842A-83BC-4F6C-8253-0A30DBAFB732', 655, N'789915', N'2016-11-02 14:30', 0, 0, 0, N'2', CAST(0x0000A6B200E83B52 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'BB9E3B5F-2F5A-4A7A-AB27-1BC35D1D480B', 656, N'789916', N'2016-11-02 14:35', 0, 0, 0, N'2', CAST(0x0000A6B200EAF1F1 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'4264A541-F250-4FAD-9AA9-DD9E9F48049C', 657, N'789917', N'2016-11-02 14:40', 0, 0, 0, N'2', CAST(0x0000A6B200EAF1F1 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'01CCBFD9-BEF8-4B49-B81A-BE252A29B10B', 658, N'789918', N'2016-11-02 14:45', 0, 0, 0, N'2', CAST(0x0000A6B200EDB1A3 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'EF348553-B142-4854-BDA7-AEC34A1161D3', 659, N'789919', N'2016-11-02 14:50', 0, 0, 0, N'2', CAST(0x0000A6B200EDB1A8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1A0C5A9D-E7DC-41E1-94D1-3F35B4F12EA5', 660, N'789920', N'2016-11-02 14:55', 0, 0, 0, N'2', CAST(0x0000A6B200F07734 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B95AE2F2-1C40-4308-AA28-81B97D3AD726', 661, N'789921', N'2016-11-02 15:00', 0, 0, 0, N'2', CAST(0x0000A6B200F07734 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'6B66262F-3AA2-4F4B-A528-C404507B29CE', 662, N'789922', N'2016-11-02 15:05', 0, 0, 0, N'2', CAST(0x0000A6B200F32DB7 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'43478010-E0A3-4123-93B3-81A3E029E804', 663, N'789923', N'2016-11-02 15:10', 0, 0, 0, N'2', CAST(0x0000A6B200F32DB7 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A9950195-2EBC-4F6D-8AD3-145CE62FE491', 664, N'789924', N'2016-11-02 15:15', 0, 0, 0, N'2', CAST(0x0000A6B200F5F04D AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1AFCC8F6-0DF4-49E5-99F3-E895B0B9881A', 665, N'789925', N'2016-11-02 15:20', 1, 500, 0, N'0', CAST(0x0000A6B200F5F04D AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'C816F374-AB56-4315-9CFF-FF2770214AB8', 666, N'789926', N'2016-11-02 15:25', 0, 0, 0, N'2', CAST(0x0000A6B200F8B5BE AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B4BD52EE-2963-4128-B3B6-C2B4E4AD62E6', 667, N'789927', N'2016-11-02 15:30', 0, 0, 0, N'2', CAST(0x0000A6B200F8B5BE AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F307EE18-5A72-4DD6-AF3C-DD6E0633D8BB', 668, N'789928', N'2016-11-02 15:35', 0, 0, 0, N'2', CAST(0x0000A6B200FB62EA AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'61ED24DB-FDD0-4BE2-BC25-39A5770EEBB2', 669, N'789929', N'2016-11-02 15:40', 0, 0, 0, N'2', CAST(0x0000A6B200FB62EA AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'108F7DAC-C813-4E45-972E-0F63BBD9DB4C', 670, N'789930', N'2016-11-02 15:45', 0, 0, 0, N'2', CAST(0x0000A6B200FE2B56 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'FC8DC0DC-948B-4154-8452-6A8D3C59FA9E', 671, N'789931', N'2016-11-02 15:50', 0, 0, 0, N'2', CAST(0x0000A6B200FE2B56 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'29FCBEEC-3754-4CA6-8C00-F167FF545BD1', 672, N'789932', N'2016-11-02 15:55', 0, 0, 0, N'2', CAST(0x0000A6B20100DE54 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'6C58E725-76FF-414F-80B3-29BDBED56063', 673, N'789933', N'2016-11-02 16:00', 0, 0, 0, N'0', CAST(0x0000A6B20100DE54 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'FEDAA187-F397-4C97-B483-460721ECA3BB', 674, N'789934', N'2016-11-02 16:05', 0, 0, 0, N'0', CAST(0x0000A6B20103A908 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'7D3E6F67-5C2E-485D-A25E-BB017CBCB35C', 675, N'789935', N'2016-11-02 16:10', 0, 0, 0, N'0', CAST(0x0000A6B20103A908 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'96DAA03E-23CD-434C-B6C6-168638934B40', 676, N'789936', N'2016-11-02 15:50', 0, 0, 0, N'0', CAST(0x0000A6B201066A8B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B943DE8D-369F-49B7-BB15-93193563346F', 677, N'789937', N'2016-11-02 15:55', 0, 0, 0, N'2', CAST(0x0000A6B201066A8B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'84F8642A-CF52-4F99-8A8C-3F4457ABDF6A', 678, N'789939', N'2016-11-02 16:30', 0, 0, 0, N'2', CAST(0x0000A6B2010DD45F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'E3190459-8540-4547-AD74-579AC6A606D9', 679, N'789940', N'2016-11-02 16:35', 0, 0, 0, N'2', CAST(0x0000A6B2010DD45F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1CBA6CAD-5EBA-4353-961D-417C2EF39AA0', 680, N'789941', N'2016-11-02 16:40', 0, 0, 0, N'2', CAST(0x0000A6B2010DD45F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'C210CE83-3855-48B0-B347-046A11EB2CF3', 681, N'789942', N'2016-11-02 16:45', 0, 0, 0, N'2', CAST(0x0000A6B2010DD45F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'809FC1D5-4CE6-4ABA-B9D4-22C0D80A5AAB', 682, N'789943', N'2016-11-02 16:50', 0, 0, 0, N'2', CAST(0x0000A6B2011018F4 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'076912D5-E779-4068-8EE9-0AF874AD54A1', 683, N'789944', N'2016-11-02 16:55', 0, 0, 0, N'2', CAST(0x0000A6B2011018F4 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'8B2B7028-CE60-41B8-AA65-9B9270CF7F07', 684, N'789945', N'2016-11-02 17:00', 0, 0, 0, N'2', CAST(0x0000A6B20112DFE7 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'EBD1B245-EF43-4603-BDE1-FE1194DCBCE0', 685, N'789946', N'2016-11-02 17:05', 0, 0, 0, N'2', CAST(0x0000A6B20112DFE7 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B917C216-7F01-4349-86D2-707F00DCA4E0', 686, N'789947', N'2016-11-02 17:10', 0, 0, 0, N'2', CAST(0x0000A6B201158F24 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'812AA1D1-99F1-490A-9247-8140F867D1F1', 687, N'789948', N'2016-11-02 17:15', 0, 0, 0, N'2', CAST(0x0000A6B201158F24 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'01C8D18B-F89D-45D9-9209-3CF224D81F07', 688, N'789949', N'2016-11-02 17:20', 0, 0, 0, N'2', CAST(0x0000A6B20118523A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'4B357BD1-F661-4916-BEB3-24580950CC49', 689, N'789950', N'2016-11-02 17:25', 0, 0, 0, N'2', CAST(0x0000A6B20118523A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'11BF6330-5F50-44A7-833A-32B2F8801A77', 690, N'789951', N'2016-11-02 17:30', 0, 0, 0, N'2', CAST(0x0000A6B2011B165F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'EC2DE1D3-FC2E-4F8C-ADA8-B2255A909C77', 691, N'789952', N'2016-11-02 17:35', 0, 0, 0, N'2', CAST(0x0000A6B2011B165F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F298AD32-3953-4869-875F-819781B61F35', 692, N'789953', N'2016-11-02 17:40', 0, 0, 0, N'2', CAST(0x0000A6B2011DEC76 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'E7CB4D01-4702-48C2-B288-4B74D6C6EC4E', 693, N'789954', N'2016-11-02 17:45', 0, 0, 0, N'2', CAST(0x0000A6B2011DEC76 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'54070760-0EF2-4C65-830D-6CC55FD54470', 694, N'789955', N'2016-11-02 17:50', 0, 0, 0, N'2', CAST(0x0000A6B20120B9CE AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'DBAE9FE9-CB9E-4840-9CC3-4E214490184B', 695, N'789956', N'2016-11-02 17:55', 0, 0, 0, N'2', CAST(0x0000A6B20120B9CE AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'880B88D1-FB62-4A97-BDD5-C090D8D28036', 696, N'789957', N'2016-11-02 18:00', 0, 0, 0, N'2', CAST(0x0000A6B201235E74 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'2F2FAE9D-CE3D-4CA7-A656-BFD9879E8F5A', 697, N'789958', N'2016-11-02 18:05', 0, 0, 0, N'2', CAST(0x0000A6B201235E74 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'08862142-774B-46BB-B090-BA50EF4C3A6A', 698, N'789959', N'2016-11-02 18:10', 0, 0, 0, N'2', CAST(0x0000A6B20125FEFB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'04C64138-4D90-4066-BCE3-4D9BC831149E', 699, N'789960', N'2016-11-02 18:15', 0, 0, 0, N'2', CAST(0x0000A6B20125FF00 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D62CA999-183D-4299-AC72-47029321EA81', 700, N'789961', N'2016-11-02 18:20', 0, 0, 0, N'2', CAST(0x0000A6B20128BF50 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'2543D354-A3EE-4843-8B1E-C22A0B14B2FF', 701, N'789962', N'2016-11-02 18:25', 0, 0, 0, N'2', CAST(0x0000A6B20128BF50 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'EF34E3C1-3F48-4099-B3CC-744AE2980C05', 702, N'789963', N'2016-11-02 18:30', 0, 0, 0, N'2', CAST(0x0000A6B2012B91CB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'C48D9295-2804-4128-97E8-743B74BAB24C', 703, N'789964', N'2016-11-02 18:35', 0, 0, 0, N'2', CAST(0x0000A6B2012B91CB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'4FB33AA6-786A-4C1B-96F5-2B73A7684542', 704, N'789965', N'2016-11-02 18:40', 0, 0, 0, N'2', CAST(0x0000A6B2012E51FB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'8D4B9DA2-6A8D-40C1-ADDA-5172479566F2', 705, N'789966', N'2016-11-02 18:45', 0, 0, 0, N'2', CAST(0x0000A6B2012E51FB AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'E1CCC70D-33BC-49F1-8651-B0A4EA28C17E', 706, N'789967', N'2016-11-02 18:50', 0, 0, 0, N'2', CAST(0x0000A6B2013119B8 AS DateTime))
GO
print 'Processed 700 total records'
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1D1C7954-24C8-4922-8422-7BB8CFCF9E22', 707, N'789968', N'2016-11-02 18:55', 0, 0, 0, N'2', CAST(0x0000A6B2013119B8 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'5883A2B9-B93E-4E7F-B0F5-183C37431C24', 708, N'789969', N'2016-11-02 19:00', 0, 0, 0, N'2', CAST(0x0000A6B20133D3B2 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'3F6FD137-A25D-4190-8B4F-F814961CF7B8', 709, N'789970', N'2016-11-02 19:05', 0, 0, 0, N'2', CAST(0x0000A6B20133D3B2 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'7FBD3A9C-1230-40D0-9633-F7FE52705D21', 710, N'789971', N'2016-11-02 19:10', 0, 0, 0, N'2', CAST(0x0000A6B201369EBE AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A56BAFEF-A868-4C48-A24F-F6E3F0CA093E', 711, N'789972', N'2016-11-02 19:15', 0, 0, 0, N'2', CAST(0x0000A6B201369EBE AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'CBA1ECB3-74A4-482D-8943-90C07C09D10B', 712, N'789973', N'2016-11-02 19:20', 0, 0, 0, N'2', CAST(0x0000A6B2013935D9 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'78387F88-7B0A-4B20-B635-ABB25A59F496', 713, N'789974', N'2016-11-02 19:25', 0, 0, 0, N'2', CAST(0x0000A6B2013935D9 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'03A4976E-CDDA-4624-AD2B-DDEFA56D62DD', 714, N'789975', N'2016-11-02 19:30', 0, 0, 0, N'2', CAST(0x0000A6B2013C16A6 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F258371E-0775-43BF-A070-A7F651A99823', 715, N'789976', N'2016-11-02 19:35', 0, 0, 0, N'2', CAST(0x0000A6B2013C16A6 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'CD7D51AF-9532-4ABA-B421-153CC471C41B', 716, N'789977', N'2016-11-02 19:40', 0, 0, 0, N'2', CAST(0x0000A6B2013ED68F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'43F730E4-AB1E-4B2D-A623-76B211431F52', 717, N'789978', N'2016-11-02 19:45', 0, 0, 0, N'2', CAST(0x0000A6B2013ED68F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'7F048CBD-0BC4-497E-9A19-4A61363C1482', 718, N'789979', N'2016-11-02 19:50', 0, 0, 0, N'2', CAST(0x0000A6B201419375 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B08A418A-0C93-419A-A48D-B0DB9EFEC45F', 719, N'789980', N'2016-11-02 19:55', 0, 0, 0, N'2', CAST(0x0000A6B201419375 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'884BB868-800D-4228-9AA6-EEEB503E8FD3', 720, N'789981', N'2016-11-02 20:00', 0, 0, 0, N'2', CAST(0x0000A6B201443D22 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'40A431E7-82C4-4315-90A2-CFDE4CE27175', 721, N'789982', N'2016-11-02 20:05', 0, 0, 0, N'2', CAST(0x0000A6B201443D22 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'68A81F9D-E5EC-4FD1-A34A-4E3DBD072FCB', 722, N'789983', N'2016-11-02 20:10', 0, 0, 0, N'2', CAST(0x0000A6B201471400 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'93F43E57-A662-40D8-90B3-A758214F658F', 723, N'789984', N'2016-11-02 20:15', 0, 0, 0, N'2', CAST(0x0000A6B201471400 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'81020267-3965-4491-9BD4-3A103E368EF9', 724, N'789985', N'2016-11-02 20:20', 0, 0, 0, N'0', CAST(0x0000A6B20149BB89 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F1024139-36D4-40A1-A1E5-D576E86C3DEA', 725, N'789986', N'2016-11-02 20:25', 0, 0, 0, N'2', CAST(0x0000A6B20149BB89 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'AD24A0C5-1968-4B78-94BB-461FACDAC3D9', 726, N'789987', N'2016-11-02 20:30', 0, 0, 0, N'2', CAST(0x0000A6B2014C8A54 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F114CF92-9C19-4C3F-849C-08A8CA6E9DC1', 727, N'789988', N'2016-11-02 20:35', 0, 0, 0, N'2', CAST(0x0000A6B2014C8A54 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'57EE1D2E-93D3-4AE2-B57B-E410C2A550E7', 728, N'789989', N'2016-11-02 20:39', 0, 0, 0, N'2', CAST(0x0000A6B20150FF05 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'62B6891B-71AD-491D-8674-E9F61CDEEDB8', 729, N'789990', N'2016-11-02 20:44', 0, 0, 0, N'2', CAST(0x0000A6B20150FF05 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B9D8BE34-4BAF-40B7-B399-9ADCF5407239', 730, N'789991', N'2016-11-02 20:49', 0, 0, 0, N'2', CAST(0x0000A6B20150FF05 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'49095B0C-3FF4-433D-934C-E3018A88048D', 731, N'789992', N'2016-11-02 20:55', 0, 0, 0, N'2', CAST(0x0000A6B201535975 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'132626A5-CA6D-4188-B8D0-A255AB982E01', 732, N'789993', N'2016-11-02 21:00', 0, 0, 0, N'0', CAST(0x0000A6B20153597A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'395EDE58-3725-401D-8A2B-4DFF9167A734', 733, N'789994', N'2016-11-02 21:05', 0, 0, 0, N'2', CAST(0x0000A6B201562E6F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'625309DE-D90F-40D9-9409-CC364DED63BA', 734, N'789995', N'2016-11-02 21:10', 0, 0, 0, N'2', CAST(0x0000A6B201562E6F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'72303D1F-F2D5-4AA9-A64A-417744291F05', 735, N'789996', N'2016-11-02 21:15', 0, 0, 0, N'2', CAST(0x0000A6B20158CBE2 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'9660F831-BA7D-4C03-8056-6DEBB5B0016D', 736, N'789997', N'2016-11-02 21:20', 0, 0, 0, N'2', CAST(0x0000A6B20158CBE2 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'939711E5-EFFC-4677-A9F8-C9F49EAD6C89', 737, N'789998', N'2016-11-02 21:25', 0, 0, 0, N'2', CAST(0x0000A6B2015B973A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'52EF6BF7-E0D7-43FF-A53F-40C0B7F11255', 738, N'789999', N'2016-11-02 21:30', 0, 0, 0, N'2', CAST(0x0000A6B2015B973A AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'03D52175-A5A5-49E4-A070-921BCC0707B7', 739, N'790000', N'2016-11-02 21:35', 0, 0, 0, N'2', CAST(0x0000A6B2015E5818 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'2E8FDE05-AD23-4F47-B77D-ADD36FE0663D', 740, N'790001', N'2016-11-02 21:40', 0, 0, 0, N'2', CAST(0x0000A6B2015E5818 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'C61943C0-444C-4016-B7B4-3C913B5F8D32', 741, N'790002', N'2016-11-02 21:45', 0, 0, 0, N'2', CAST(0x0000A6B20161E035 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'8973FD1B-DC5C-498C-84A0-434A14B75C53', 742, N'790003', N'2016-11-02 21:50', 0, 0, 0, N'2', CAST(0x0000A6B20161E035 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'9A739530-C3D9-444C-95A4-968336478969', 743, N'790004', N'2016-11-02 21:55', 0, 0, 0, N'2', CAST(0x0000A6B20163CEBC AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'584A9F8D-9078-41BA-A773-6E516BFC963A', 744, N'790005', N'2016-11-02 22:00', 0, 0, 0, N'0', CAST(0x0000A6B20163CEBC AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'75BBC1F7-039B-4158-98C8-6E9A057FF353', 745, N'790006', N'2016-11-02 22:05', 0, 0, 0, N'2', CAST(0x0000A6B201668B46 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B6D00AF9-40FE-4F83-8EB1-6A04E59BA10D', 746, N'790007', N'2016-11-02 22:10', 0, 0, 0, N'2', CAST(0x0000A6B201668B46 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'4696AFFF-8A56-40DD-8A5E-FE72DF34C06C', 747, N'790008', N'2016-11-02 22:15', 0, 0, 0, N'2', CAST(0x0000A6B2016948C5 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'2B30A299-C6BE-4E00-9FA7-4FBCCBA11BE2', 748, N'790009', N'2016-11-02 22:20', 0, 0, 0, N'2', CAST(0x0000A6B2016948C5 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'7A3E9E59-D044-4A95-BE1D-CACF38F9FA03', 749, N'790010', N'2016-11-02 22:25', 0, 0, 0, N'2', CAST(0x0000A6B2016C2B50 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B1B43308-282A-4D05-B42B-A5B27C16C3B3', 750, N'790011', N'2016-11-02 22:30', 0, 0, 0, N'2', CAST(0x0000A6B2016C2B50 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'10EDA149-5BDC-46B6-A6B5-2095F937B35F', 751, N'790012', N'2016-11-02 22:35', 0, 0, 0, N'2', CAST(0x0000A6B2016EE312 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1B4C9167-9633-4A6F-984D-C0395577EF0E', 752, N'790013', N'2016-11-02 22:40', 0, 0, 0, N'2', CAST(0x0000A6B2016EE312 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'3800F878-B8B7-472F-A744-5B1EC74F6E3D', 753, N'790014', N'2016-11-02 22:45', 0, 0, 0, N'2', CAST(0x0000A6B2017180A3 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'CC900B85-B19F-4364-84A2-80E0D9FA6428', 754, N'790015', N'2016-11-02 22:50', 0, 0, 0, N'2', CAST(0x0000A6B2017180A3 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F7586567-C2DE-4C3A-B9B8-45DEF0EA3EE7', 755, N'790016', N'2016-11-02 22:55', 0, 0, 0, N'2', CAST(0x0000A6B201744F95 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'FD69EF39-F8B7-4D76-A85C-81DE345DF7A4', 756, N'790017', N'2016-11-02 23:00', 0, 0, 0, N'2', CAST(0x0000A6B201744F95 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'AAF769F0-0D78-48B4-AD8E-2D8F999661C3', 757, N'790018', N'2016-11-02 23:05', 0, 0, 0, N'2', CAST(0x0000A6B2017703F7 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'CD252882-D9A5-44EA-9240-AE029B023AD1', 758, N'790019', N'2016-11-02 23:10', 0, 0, 0, N'2', CAST(0x0000A6B20177041D AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1ECCD8FE-3EB9-4D0A-8EEC-68345AE204BB', 759, N'790020', N'2016-11-02 23:15', 0, 0, 0, N'2', CAST(0x0000A6B2017A0150 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'3E3DB608-D98E-4840-AB41-AC756FFCB7B2', 760, N'790021', N'2016-11-02 23:20', 0, 0, 0, N'2', CAST(0x0000A6B2017A0150 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'5980A5CB-9A89-4721-8437-C237110391B3', 761, N'790022', N'2016-11-02 23:25', 0, 0, 0, N'2', CAST(0x0000A6B2017C9B82 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F9876217-23D4-4CA9-B9D7-BAF5F2594590', 762, N'790023', N'2016-11-02 23:30', 0, 0, 0, N'2', CAST(0x0000A6B2017C9B82 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'3F021E0D-2D32-4A88-AE55-3C3030C0A730', 763, N'790024', N'2016-11-02 23:35', 0, 0, 0, N'2', CAST(0x0000A6B2017F4CED AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'CDADFB69-18CC-4746-BDB0-BB8E9D04D1CA', 764, N'790025', N'2016-11-02 23:40', 0, 0, 0, N'2', CAST(0x0000A6B2017F4CED AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'3D83925E-D268-4C3D-9923-33CA45F59BC2', 765, N'790026', N'2016-11-02 23:45', 0, 0, 0, N'2', CAST(0x0000A6B20181FFDA AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'AE4A38B2-6307-4038-B351-53B1F15CA0C9', 766, N'790027', N'2016-11-02 23:50', 0, 0, 0, N'2', CAST(0x0000A6B20181FFDA AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'67EEFE80-CA81-4473-A5E1-D250BAD44053', 767, N'790028', N'2016-11-02 23:55', 0, 0, 0, N'2', CAST(0x0000A6B20184C157 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'5D318ECB-8698-427B-8E94-BC4C6B0DBB67', 768, N'790029', N'2016-11-03 09:05', 0, 0, 0, N'2', CAST(0x0000A6B20184C15C AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'D0D1BB65-CD08-4B74-82CF-6202FB667479', 769, N'790030', N'2016-11-03 09:10', 0, 0, 0, N'2', CAST(0x0000A6B2018776DD AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'DAF568AF-2290-4DC7-84AC-9AD8E5A97904', 770, N'790031', N'2016-11-03 09:15', 0, 0, 0, N'2', CAST(0x0000A6B2018776DD AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'FD597B45-CB96-4DF1-95D7-BE9C4C58B90B', 771, N'790032', N'2016-11-03 09:20', 0, 0, 0, N'2', CAST(0x0000A6B30095C845 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'EA09D8E4-D4AE-473A-85B5-CB06066A0C86', 772, N'790033', N'2016-11-03 09:25', 0, 0, 0, N'2', CAST(0x0000A6B30095C890 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F8329BDD-9239-4EE7-B500-B9C230186461', 773, N'790034', N'2016-11-03 09:30', 0, 0, 0, N'2', CAST(0x0000A6B30095C890 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'89E52D51-5116-4439-90BD-2BA94863C978', 774, N'790035', N'2016-11-03 09:35', 0, 0, 0, N'2', CAST(0x0000A6B3009886AD AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'ADE5D81D-406E-4AAD-ABF4-BE331240BE6D', 775, N'790036', N'2016-11-03 09:40', 0, 0, 0, N'2', CAST(0x0000A6B3009886AD AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'C9842253-F64D-43CC-AC93-35351E766755', 776, N'790037', N'2016-11-03 09:45', 0, 0, 0, N'2', CAST(0x0000A6B3009B5265 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'14F9F1AA-4B58-4A27-8B03-7E81DC80136C', 777, N'790038', N'2016-11-03 09:50', 0, 0, 0, N'0', CAST(0x0000A6B3009B5265 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'8F4864F3-419D-4355-BF5E-7DF9589F6D77', 778, N'790039', N'2016-11-03 09:55', 0, 0, 0, N'2', CAST(0x0000A6B3009E0AD0 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'8A9592E5-203F-49FD-9947-F5BCC887347A', 779, N'790040', N'2016-11-03 10:00', 0, 0, 0, N'2', CAST(0x0000A6B3009E0AD0 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'30F085B1-37E5-4CD2-A88F-67A16B4E69F5', 780, N'790041', N'2016-11-03 10:05', 0, 0, 0, N'2', CAST(0x0000A6B300A0C4C7 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'28761498-F7DA-4801-9B80-1B1464C754E4', 781, N'790042', N'2016-11-03 10:10', 0, 0, 0, N'2', CAST(0x0000A6B300A0C4C7 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'88765FC7-8664-4AA9-A813-C917474FAB3B', 782, N'790043', N'2016-11-03 10:15', 0, 0, 0, N'2', CAST(0x0000A6B300A3F864 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1211BC1F-4606-4763-AC19-F02CABED571F', 783, N'790044', N'2016-11-03 10:20', 0, 0, 0, N'2', CAST(0x0000A6B300A3F864 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'5B418278-EF6A-40D3-8D00-11E5745FDC86', 784, N'790045', N'2016-11-03 10:25', 0, 0, 0, N'2', CAST(0x0000A6B300A652A4 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'BDBA7839-9AF2-4E50-9371-92751F85FEB6', 785, N'790046', N'2016-11-03 10:30', 0, 0, 0, N'2', CAST(0x0000A6B300A652A4 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F55D5AE4-BF3C-4524-850A-68B00C8907FE', 786, N'790047', N'2016-11-03 10:35', 0, 0, 0, N'2', CAST(0x0000A6B300A93F20 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F44B243F-7989-4456-A486-D792D67B6207', 787, N'790048', N'2016-11-03 10:40', 0, 0, 0, N'2', CAST(0x0000A6B300A93F20 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'60ABA284-E675-474E-9B1A-3E062B4EE16C', 788, N'790049', N'2016-11-03 10:45', 0, 0, 0, N'2', CAST(0x0000A6B300ABB569 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'24045754-DAED-436B-81C4-8DA0CECE2908', 789, N'790050', N'2016-11-03 10:50', 0, 0, 0, N'2', CAST(0x0000A6B300ABB569 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F6BBBCCD-E701-462D-90A0-D2F441C004FE', 790, N'790051', N'2016-11-03 10:55', 0, 0, 0, N'2', CAST(0x0000A6B300AE9DBE AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B741B86D-57A0-42ED-8FAA-A789A2E14CD9', 791, N'790052', N'2016-11-03 11:00', 0, 0, 0, N'2', CAST(0x0000A6B300AE9DBE AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'116D70D0-65C9-4D27-A561-BE093D5E7945', 792, N'790053', N'2016-11-03 11:05', 0, 0, 0, N'2', CAST(0x0000A6B300B18593 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'02F3ED64-4833-4197-A398-24FB487AB8FC', 793, N'790054', N'2016-11-03 11:10', 0, 0, 0, N'2', CAST(0x0000A6B300B18593 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'863CBF61-80F3-4FB5-B52C-FC03218FA30C', 794, N'790055', N'2016-11-03 11:15', 0, 0, 0, N'2', CAST(0x0000A6B300B40735 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'A049D6B3-F7EC-4C73-AD75-49EA8B8636E8', 795, N'790056', N'2016-11-03 11:20', 0, 0, 0, N'2', CAST(0x0000A6B300B40735 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'7A7AA5DD-497D-4C9B-8C75-AC0280F3D261', 796, N'790057', N'2016-11-03 11:25', 0, 0, 0, N'2', CAST(0x0000A6B300B6E0B4 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'86C1B3DB-5140-4AFA-9829-4E6B80163478', 797, N'790058', N'2016-11-03 11:30', 0, 0, 0, N'2', CAST(0x0000A6B300B6E0B4 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'E48EC4EF-D07D-4E38-88A0-299ECE3A360E', 798, N'790059', N'2016-11-03 11:35', 0, 0, 0, N'2', CAST(0x0000A6B300B9C1F7 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'C38376EF-6464-477B-AFE3-E05E7264029F', 799, N'790060', N'2016-11-03 11:40', 0, 0, 0, N'2', CAST(0x0000A6B300B9C1F7 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1832DD04-E0D4-4CED-B5D6-9A60F15D12B9', 800, N'790061', N'2016-11-03 11:45', 0, 0, 0, N'2', CAST(0x0000A6B300BC76A0 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'0E5E60FB-5987-4CFC-896D-639B70251F57', 801, N'790062', N'2016-11-03 11:50', 0, 0, 0, N'2', CAST(0x0000A6B300BC76A0 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'8C214143-1A3D-45D1-85D0-0541E84FF462', 802, N'790063', N'2016-11-03 11:55', 0, 0, 0, N'2', CAST(0x0000A6B300BF6BB0 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'027DFBA5-56EE-4ACB-A9A5-3DCFA8549D6B', 803, N'790064', N'2016-11-03 12:00', 0, 0, 0, N'2', CAST(0x0000A6B300BF6BB0 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'AB0760ED-4165-4367-B6B0-9FB73A4E8584', 804, N'790065', N'2016-11-03 12:05', 0, 0, 0, N'2', CAST(0x0000A6B300C1EA14 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'7B1EC489-6302-494A-905D-C79392BF26C8', 805, N'790066', N'2016-11-03 12:10', 0, 0, 0, N'0', CAST(0x0000A6B300C1EA14 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'9F4B1D60-B461-44F3-922F-438CEC50C6F3', 806, N'790067', N'2016-11-03 12:15', 0, 0, 0, N'2', CAST(0x0000A6B300C4A7C0 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B38C39BD-13F2-424C-940A-A5CB9410DA8E', 807, N'790068', N'2016-11-03 12:20', 0, 0, 0, N'2', CAST(0x0000A6B300C4A7C0 AS DateTime))
GO
print 'Processed 800 total records'
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'10161368-6B84-4D13-BF56-7669273EF10F', 808, N'790069', N'2016-11-03 12:25', 0, 0, 0, N'2', CAST(0x0000A6B300C7384C AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1A2EF09F-A6FD-440E-BB57-FBC8A8B51D5F', 809, N'790070', N'2016-11-03 12:30', 0, 0, 0, N'2', CAST(0x0000A6B300C7384C AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'75995AE5-E318-4B0B-9B3E-9358B8040965', 810, N'790071', N'2016-11-03 12:35', 0, 0, 0, N'2', CAST(0x0000A6B300CA1841 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'55C77D68-9E0C-428F-B780-8F12206AA400', 811, N'790072', N'2016-11-03 12:40', 0, 0, 0, N'2', CAST(0x0000A6B300CA1845 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'EEABFF9F-5803-4FB5-AC3F-57D24D9EAF64', 812, N'790073', N'2016-11-03 12:45', 0, 0, 0, N'2', CAST(0x0000A6B300CCD278 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'3C1738E3-DC59-41D2-A561-16BD2D2854C5', 813, N'790074', N'2016-11-03 12:50', 0, 0, 0, N'2', CAST(0x0000A6B300CCD278 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'9C8A89A9-4B24-441F-AC84-FAC389808D3A', 814, N'790075', N'2016-11-03 12:55', 0, 0, 0, N'2', CAST(0x0000A6B300CFA4DA AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'64A8E386-F542-4F1B-8C83-94702F7F8E2A', 815, N'790076', N'2016-11-03 13:00', 0, 0, 0, N'2', CAST(0x0000A6B300CFA4DA AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'3D60BA1E-20DD-45E0-A41A-0B7380392760', 816, N'790077', N'2016-11-03 13:05', 0, 0, 0, N'2', CAST(0x0000A6B300D27B6E AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'2AE7EBE0-9A9F-435A-A5BD-CC349042E2FD', 817, N'790078', N'2016-11-03 13:10', 0, 0, 0, N'2', CAST(0x0000A6B300D27B73 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'EAC7079B-52D3-401A-8E17-68D49C4F327D', 818, N'790079', N'2016-11-03 13:15', 0, 0, 0, N'2', CAST(0x0000A6B300D50B5F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F14E8496-69D8-413C-92FF-F9575CF8BAFC', 819, N'790080', N'2016-11-03 13:20', 0, 0, 0, N'2', CAST(0x0000A6B300D50B5F AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'BEB3AD08-006D-48A3-AFF1-0A7D69CFFDB8', 820, N'790081', N'2016-11-03 13:25', 0, 0, 0, N'2', CAST(0x0000A6B300D7F953 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1E583420-97F0-4880-8973-05EBBC69A98A', 821, N'790082', N'2016-11-03 13:30', 0, 0, 0, N'2', CAST(0x0000A6B300D7F953 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'1ADE9905-21EC-4783-9791-E7FF870F318E', 822, N'790083', N'2016-11-03 13:35', 0, 0, 0, N'2', CAST(0x0000A6B300DBECE1 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'5063A7FC-0A40-4185-93BD-1A5AA646D83B', 823, N'790084', N'2016-11-03 13:40', 0, 0, 0, N'2', CAST(0x0000A6B300DBECE1 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'6FC4A9E3-F999-41D5-8FF9-98D9D2EAA4E2', 824, N'790085', N'2016-11-03 13:45', 0, 0, 0, N'2', CAST(0x0000A6B300DD3D05 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'EA314B12-D534-437C-806A-C2271920B3CA', 825, N'790086', N'2016-11-03 13:50', 0, 0, 0, N'2', CAST(0x0000A6B300DD3D05 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'07BCFFD4-8900-49A3-ACBB-CAFADEA4D9A4', 826, N'790087', N'2016-11-03 13:55', 0, 0, 0, N'0', CAST(0x0000A6B300E02B11 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'AE89088D-B6AE-48CF-90D8-8CBD2F214E44', 827, N'790088', N'2016-11-03 14:00', 0, 0, 0, N'2', CAST(0x0000A6B300E02B11 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'F66DE7FD-EDA5-4D27-92C8-C6A7D0CB8493', 828, N'790089', N'2016-11-03 14:05', 0, 0, 0, N'2', CAST(0x0000A6B300E2EA17 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'CCC15BF7-DB77-4A05-BA51-983B61D8D1FE', 829, N'790090', N'2016-11-03 14:10', 0, 0, 0, N'2', CAST(0x0000A6B300E2EA17 AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'5416FC14-CCEC-40FC-A7A9-C3512632B263', 830, N'790091', N'2016-11-03 14:15', 0, 0, 0, N'2', CAST(0x0000A6B300E7757B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'B8E3F96B-3003-47E9-9912-966F87E2782B', 831, N'790092', N'2016-11-03 14:20', 0, 0, 0, N'0', CAST(0x0000A6B300E7757B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'E5BA5B1F-082C-4859-A759-D78BEA2E7F0C', 832, N'790093', N'2016-11-03 14:25', 0, 0, 0, N'0', CAST(0x0000A6B300E7757B AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'52BC49A3-D9A5-4C58-9BF4-E6E656587357', 833, N'790094', N'2016-11-03 14:30', 0, 0, 0, N'0', CAST(0x0000A6B300EA3F1C AS DateTime))
INSERT [dbo].[FCBettingInfo] ([ObjId], [ObjName], [FCNum], [LotteryTime], [BettNum], [BettEggNum], [LuckyUsersCount], [FCStatus], [CreateTime]) VALUES (N'236E6D56-9BF6-43C6-90A8-74BCF6D1F9EC', 834, N'790095', N'2016-11-03 14:35', 0, 0, 0, N'0', CAST(0x0000A6B300EA3F1C AS DateTime))
SET IDENTITY_INSERT [dbo].[FCBettingInfo] OFF
/****** Object:  Table [dbo].[CusUserRecharge]    Script Date: 11/03/2016 14:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CusUserRecharge](
	[ObjId] [varchar](50) NOT NULL,
	[ObjName] [int] IDENTITY(1,1) NOT NULL,
	[CusUserID] [int] NOT NULL,
	[PayMoney] [money] NOT NULL,
	[RealPayMoney] [money] NULL,
	[UserName] [varchar](100) NULL,
	[UserAccount] [varchar](100) NULL,
	[ErrorMsg] [varchar](200) NULL,
	[IsComplete] [bit] NULL,
	[UpdateUser] [varchar](20) NULL,
	[UpdateTime] [datetime] NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_CusUserRecharge] PRIMARY KEY CLUSTERED 
(
	[ObjName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CusUserRecharge] ON
INSERT [dbo].[CusUserRecharge] ([ObjId], [ObjName], [CusUserID], [PayMoney], [RealPayMoney], [UserName], [UserAccount], [ErrorMsg], [IsComplete], [UpdateUser], [UpdateTime], [CreateTime]) VALUES (N'B5EDD9A1-8CA2-4324-927B-366816264975', 1, 25, 0.0000, 1.0000, N'', N'', N'啊', 1, N'michaux', CAST(0x0000A6B001170B28 AS DateTime), CAST(0x0000A6AB012780A9 AS DateTime))
INSERT [dbo].[CusUserRecharge] ([ObjId], [ObjName], [CusUserID], [PayMoney], [RealPayMoney], [UserName], [UserAccount], [ErrorMsg], [IsComplete], [UpdateUser], [UpdateTime], [CreateTime]) VALUES (N'E4FBF96E-E504-4900-BE75-88EA6D9DC4F2', 2, 25, 0.0000, 1.0000, N'', N'', N'1', 1, N'michaux', CAST(0x0000A6B001171488 AS DateTime), CAST(0x0000A6AB01344365 AS DateTime))
INSERT [dbo].[CusUserRecharge] ([ObjId], [ObjName], [CusUserID], [PayMoney], [RealPayMoney], [UserName], [UserAccount], [ErrorMsg], [IsComplete], [UpdateUser], [UpdateTime], [CreateTime]) VALUES (N'B6B5D50C-B536-48E7-AC77-FA3CF27ECA25', 3, 25, 0.0000, 1.0000, N'', N'', N'1', 1, N'michaux', CAST(0x0000A6B001171938 AS DateTime), CAST(0x0000A6AC009A1DA1 AS DateTime))
INSERT [dbo].[CusUserRecharge] ([ObjId], [ObjName], [CusUserID], [PayMoney], [RealPayMoney], [UserName], [UserAccount], [ErrorMsg], [IsComplete], [UpdateUser], [UpdateTime], [CreateTime]) VALUES (N'62AD5E28-1484-4585-B195-99261A85D110', 4, 25, 0.0000, 1.0000, N'', N'', N'1', 1, N'michaux', CAST(0x0000A6B001171DE8 AS DateTime), CAST(0x0000A6AC009A2F39 AS DateTime))
INSERT [dbo].[CusUserRecharge] ([ObjId], [ObjName], [CusUserID], [PayMoney], [RealPayMoney], [UserName], [UserAccount], [ErrorMsg], [IsComplete], [UpdateUser], [UpdateTime], [CreateTime]) VALUES (N'1C7D4D43-A125-4744-BCF2-687686019C2C', 5, 25, 0.0000, 1.0000, N'', N'', N'1', 1, N'michaux', CAST(0x0000A6B0011724F0 AS DateTime), CAST(0x0000A6AC009DB1DD AS DateTime))
INSERT [dbo].[CusUserRecharge] ([ObjId], [ObjName], [CusUserID], [PayMoney], [RealPayMoney], [UserName], [UserAccount], [ErrorMsg], [IsComplete], [UpdateUser], [UpdateTime], [CreateTime]) VALUES (N'10C9D5AC-6D6E-4419-A8A2-1949B1F218D8', 6, 25, 0.0000, 1.0000, N'', N'', N'1', 1, N'michaux', CAST(0x0000A6B001172874 AS DateTime), CAST(0x0000A6AC00A82082 AS DateTime))
INSERT [dbo].[CusUserRecharge] ([ObjId], [ObjName], [CusUserID], [PayMoney], [RealPayMoney], [UserName], [UserAccount], [ErrorMsg], [IsComplete], [UpdateUser], [UpdateTime], [CreateTime]) VALUES (N'DDE0B95E-E4EE-4CD3-B7A6-E1679A05617C', 7, 26, 0.0000, 1.0000, N'', N'', N'1', 1, N'michaux', CAST(0x0000A6B001172D24 AS DateTime), CAST(0x0000A6AC01220794 AS DateTime))
INSERT [dbo].[CusUserRecharge] ([ObjId], [ObjName], [CusUserID], [PayMoney], [RealPayMoney], [UserName], [UserAccount], [ErrorMsg], [IsComplete], [UpdateUser], [UpdateTime], [CreateTime]) VALUES (N'C4F93DC9-BFCA-4502-AF14-939ABE38B7EE', 8, 29, 100000.0000, 1000.0000, N'56984581', N'123123123132@qq.com', N'1', 1, N'michaux', CAST(0x0000A6B001185CA8 AS DateTime), CAST(0x0000A6B001183B95 AS DateTime))
INSERT [dbo].[CusUserRecharge] ([ObjId], [ObjName], [CusUserID], [PayMoney], [RealPayMoney], [UserName], [UserAccount], [ErrorMsg], [IsComplete], [UpdateUser], [UpdateTime], [CreateTime]) VALUES (N'0BB39907-9471-4190-8001-CE3E390D8303', 9, 29, 1000.0000, 1000.0000, N'56984581', N'123123123@qq.com', N'', 1, N'michaux', CAST(0x0000A6B00118AEB0 AS DateTime), CAST(0x0000A6B001189F50 AS DateTime))
INSERT [dbo].[CusUserRecharge] ([ObjId], [ObjName], [CusUserID], [PayMoney], [RealPayMoney], [UserName], [UserAccount], [ErrorMsg], [IsComplete], [UpdateUser], [UpdateTime], [CreateTime]) VALUES (N'05A0D0FB-88CB-4A01-9319-F571B13F8BC8', 10, 30, 0.0000, 1.0000, N'', N'', N'1', 1, N'michaux', CAST(0x0000A6B00119958C AS DateTime), CAST(0x0000A6B001197076 AS DateTime))
SET IDENTITY_INSERT [dbo].[CusUserRecharge] OFF
/****** Object:  Table [dbo].[CusUserInfo]    Script Date: 11/03/2016 14:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CusUserInfo](
	[ObjId] [varchar](50) NOT NULL,
	[ObjName] [int] IDENTITY(1,1) NOT NULL,
	[UserMarkId] [varchar](20) NOT NULL,
	[LgName] [varchar](50) NOT NULL,
	[LgPwd] [varchar](200) NOT NULL,
	[UserRealName] [varchar](20) NULL,
	[NickName] [varchar](20) NULL,
	[Phone] [varchar](15) NOT NULL,
	[QQNum] [varchar](20) NULL,
	[Emial] [varchar](50) NULL,
	[WithdrawalPwd] [varchar](200) NOT NULL,
	[Recommended] [varchar](50) NULL,
	[RecommendUserCount] [int] NULL,
	[UserLastLoginTime] [datetime] NULL,
	[UserStatus] [varchar](10) NULL,
	[LastLuckFCNum] [varchar](20) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateUserID] [int] NULL,
	[SourceType] [int] NOT NULL,
 CONSTRAINT [PK_CusUserInfo] PRIMARY KEY CLUSTERED 
(
	[LgName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CusUserInfo] ON
INSERT [dbo].[CusUserInfo] ([ObjId], [ObjName], [UserMarkId], [LgName], [LgPwd], [UserRealName], [NickName], [Phone], [QQNum], [Emial], [WithdrawalPwd], [Recommended], [RecommendUserCount], [UserLastLoginTime], [UserStatus], [LastLuckFCNum], [CreateTime], [UpdateTime], [UpdateUserID], [SourceType]) VALUES (N'01E493AC-0381-4476-B577-177D59049EEB', 17, N'53179933', N'1231111', N'o/ifFbKOaAnh8yoaWCAoVQ==', N'123', NULL, N'18210143902', N'', N'', N'o/ifFbKOaAnh8yoaWCAoVQ==', N'29480901', 0, CAST(0x0000A6300123BA6C AS DateTime), N'正常', NULL, CAST(0x0000A6300123BB46 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[CusUserInfo] ([ObjId], [ObjName], [UserMarkId], [LgName], [LgPwd], [UserRealName], [NickName], [Phone], [QQNum], [Emial], [WithdrawalPwd], [Recommended], [RecommendUserCount], [UserLastLoginTime], [UserStatus], [LastLuckFCNum], [CreateTime], [UpdateTime], [UpdateUserID], [SourceType]) VALUES (N'74977998-9A82-4C96-A3B1-F87379C1D480', 23, N'22682189', N'123456', N'yhZFvnhI+HSEv9LD4oS90A==', N'123', NULL, N'123', N'123', N'', N'yhZFvnhI+HTpIbJS5pTU2w==', N'', 0, CAST(0x0000A634010B3834 AS DateTime), N'正常', NULL, CAST(0x0000A634010B38BF AS DateTime), NULL, NULL, 0)
INSERT [dbo].[CusUserInfo] ([ObjId], [ObjName], [UserMarkId], [LgName], [LgPwd], [UserRealName], [NickName], [Phone], [QQNum], [Emial], [WithdrawalPwd], [Recommended], [RecommendUserCount], [UserLastLoginTime], [UserStatus], [LastLuckFCNum], [CreateTime], [UpdateTime], [UpdateUserID], [SourceType]) VALUES (N'B38B3D2E-E876-4084-9823-EEAFA03B5F6C', 24, N'78526675', N'3247586', N'TEKhC6tRf3dENBwWtEQPwg==', N'111', NULL, N'111', N'111', N'111', N'TEKhC6tRf3dENBwWtEQPwg==', N'', 0, CAST(0x0000A634010D1C30 AS DateTime), N'正常', NULL, CAST(0x0000A634010D1C8F AS DateTime), NULL, NULL, 0)
INSERT [dbo].[CusUserInfo] ([ObjId], [ObjName], [UserMarkId], [LgName], [LgPwd], [UserRealName], [NickName], [Phone], [QQNum], [Emial], [WithdrawalPwd], [Recommended], [RecommendUserCount], [UserLastLoginTime], [UserStatus], [LastLuckFCNum], [CreateTime], [UpdateTime], [UpdateUserID], [SourceType]) VALUES (N'9920B9EC-4F50-45F4-B5B4-5878D897283C', 27, N'98114190', N'AA123123', N'YRlTGO0O4IM3kZ37L6o/iVlQDzJz96nz', N'哥哥', NULL, N'15965646565', N'123456456', N'123456456', N'YRlTGO0O4IPEW3QjiORxqw==', N'', 0, CAST(0x0000A6AB0130C644 AS DateTime), N'正常', NULL, CAST(0x0000A6AB0130C6C7 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[CusUserInfo] ([ObjId], [ObjName], [UserMarkId], [LgName], [LgPwd], [UserRealName], [NickName], [Phone], [QQNum], [Emial], [WithdrawalPwd], [Recommended], [RecommendUserCount], [UserLastLoginTime], [UserStatus], [LastLuckFCNum], [CreateTime], [UpdateTime], [UpdateUserID], [SourceType]) VALUES (N'9F64D992-14A0-45B8-AB02-EA2766444FB0', 29, N'56984581', N'dage123', N'9Gtl7aWBejKLiGjLgnltfxrGmqlnEWxw', N'打个', NULL, N'13564565656', N'456531561', N'456531561@qq.com', N'9Gtl7aWBejKaIhoGCIXDIQ==', N'', 0, CAST(0x0000A6B001177824 AS DateTime), N'正常', N'789586', CAST(0x0000A6B0011154EE AS DateTime), NULL, NULL, 0)
INSERT [dbo].[CusUserInfo] ([ObjId], [ObjName], [UserMarkId], [LgName], [LgPwd], [UserRealName], [NickName], [Phone], [QQNum], [Emial], [WithdrawalPwd], [Recommended], [RecommendUserCount], [UserLastLoginTime], [UserStatus], [LastLuckFCNum], [CreateTime], [UpdateTime], [UpdateUserID], [SourceType]) VALUES (N'6F341F64-5FC5-4CA4-ACAB-4165A504AFDD', 31, N'45663401', N'dama123', N'w+oFtNG8F5AyKQIRmEU9Bnz5qP+auKnE', N'大妈', NULL, N'135656532', N'54564165', N'1654654@qq.com', N'w+oFtNG8F5CAy3JLVzhUqA==', N'', 0, CAST(0x0000A6B0011ADDAC AS DateTime), N'正常', NULL, CAST(0x0000A6B0011A7F92 AS DateTime), NULL, NULL, 1)
INSERT [dbo].[CusUserInfo] ([ObjId], [ObjName], [UserMarkId], [LgName], [LgPwd], [UserRealName], [NickName], [Phone], [QQNum], [Emial], [WithdrawalPwd], [Recommended], [RecommendUserCount], [UserLastLoginTime], [UserStatus], [LastLuckFCNum], [CreateTime], [UpdateTime], [UpdateUserID], [SourceType]) VALUES (N'0EF1254C-D3EF-4AF6-B4C6-01F7E9D64C4F', 25, N'90509450', N'fengyiyang', N'EdzSkcEdEvqh2pmT96qtxym1IqPtZWIJ', N'王磊', NULL, N'15539988572', N'', N'', N'EdzSkcEdEvpTG0Z1ORj5a3Vfr/TKwZlX', N'', 0, CAST(0x0000A6AC00B9616C AS DateTime), N'正常', NULL, CAST(0x0000A6AA00938004 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[CusUserInfo] ([ObjId], [ObjName], [UserMarkId], [LgName], [LgPwd], [UserRealName], [NickName], [Phone], [QQNum], [Emial], [WithdrawalPwd], [Recommended], [RecommendUserCount], [UserLastLoginTime], [UserStatus], [LastLuckFCNum], [CreateTime], [UpdateTime], [UpdateUserID], [SourceType]) VALUES (N'AC31175A-1E68-406A-915E-7FFE26344113', 20, N'16562835', N'ghghgh', N'K44Lc8j5LM0Bir+Acu/3lA==', N'11', NULL, N'18210143902', N'', N'', N'K44Lc8j5LM0Bir+Acu/3lA==', N'', 1, CAST(0x0000A63200EDBD54 AS DateTime), N'正常', NULL, CAST(0x0000A6310105A1ED AS DateTime), NULL, NULL, 0)
INSERT [dbo].[CusUserInfo] ([ObjId], [ObjName], [UserMarkId], [LgName], [LgPwd], [UserRealName], [NickName], [Phone], [QQNum], [Emial], [WithdrawalPwd], [Recommended], [RecommendUserCount], [UserLastLoginTime], [UserStatus], [LastLuckFCNum], [CreateTime], [UpdateTime], [UpdateUserID], [SourceType]) VALUES (N'FD8902FC-F162-4816-B560-944F84CB3E5F', 22, N'62139724', N'hjhjhj', N'56cF1aQpVjmynp2mpvVkOA==', N'adsfasdf', NULL, N'18210143902', N'', N'', N'56cF1aQpVjmynp2mpvVkOA==', N'16562835', 0, CAST(0x0000A631011F9F40 AS DateTime), N'正常', NULL, CAST(0x0000A631011EFA99 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[CusUserInfo] ([ObjId], [ObjName], [UserMarkId], [LgName], [LgPwd], [UserRealName], [NickName], [Phone], [QQNum], [Emial], [WithdrawalPwd], [Recommended], [RecommendUserCount], [UserLastLoginTime], [UserStatus], [LastLuckFCNum], [CreateTime], [UpdateTime], [UpdateUserID], [SourceType]) VALUES (N'98698F3F-303F-4C4D-AF62-DF8644911E18', 2, N'123456', N'jf', N'yAb+ZJUMVyZBZOqtGdON9A==', N'jf', N'1235', N'18210173902', N'1099842356', NULL, N'Q2zI4Wvr/iNEOgU1usOJaw==', N'', 8, CAST(0x0000A65301031244 AS DateTime), N'正常', N'0', CAST(0x0000A60B0096E411 AS DateTime), CAST(0x0000A6260117CC84 AS DateTime), NULL, 0)
INSERT [dbo].[CusUserInfo] ([ObjId], [ObjName], [UserMarkId], [LgName], [LgPwd], [UserRealName], [NickName], [Phone], [QQNum], [Emial], [WithdrawalPwd], [Recommended], [RecommendUserCount], [UserLastLoginTime], [UserStatus], [LastLuckFCNum], [CreateTime], [UpdateTime], [UpdateUserID], [SourceType]) VALUES (N'3AC9A633-678D-4359-A968-5C58B28392C9', 16, N'83268880', N'jianjian', N'+UWvO8IjSeWD9JTRULNwGQ==', N'jianjian', NULL, N'18210143902', N'1099842356', N'', N'+UWvO8IjSeWD9JTRULNwGQ==', N'29480901', 0, CAST(0x0000A63500B4E178 AS DateTime), N'正常', NULL, CAST(0x0000A62F01284940 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[CusUserInfo] ([ObjId], [ObjName], [UserMarkId], [LgName], [LgPwd], [UserRealName], [NickName], [Phone], [QQNum], [Emial], [WithdrawalPwd], [Recommended], [RecommendUserCount], [UserLastLoginTime], [UserStatus], [LastLuckFCNum], [CreateTime], [UpdateTime], [UpdateUserID], [SourceType]) VALUES (N'29E6CAEF-436E-4538-80D4-91B154AA92AB', 15, N'44397472', N'jyaoyao', N'ck+e26g6wKcmyB9TV/PrEQ==', N'yaoyao', NULL, N'18210143902', N'1099842356', N'', N'ck+e26g6wKcmyB9TV/PrEQ==', N'29480901', 0, CAST(0x0000A62E00FC2790 AS DateTime), N'正常', NULL, CAST(0x0000A62E00FC2832 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[CusUserInfo] ([ObjId], [ObjName], [UserMarkId], [LgName], [LgPwd], [UserRealName], [NickName], [Phone], [QQNum], [Emial], [WithdrawalPwd], [Recommended], [RecommendUserCount], [UserLastLoginTime], [UserStatus], [LastLuckFCNum], [CreateTime], [UpdateTime], [UpdateUserID], [SourceType]) VALUES (N'6B123F2F-3667-418E-BC4B-B942FF2B4AE8', 28, N'50399488', N'laohuai', N't4yaABPqGJB6TBCEGDHbpg==', N'laohuai', NULL, N'', N'', N'', N't4yaABPqGJB6TBCEGDHbpg==', N'', 0, CAST(0x0000A6B000B77FC8 AS DateTime), N'正常', NULL, CAST(0x0000A6B000B3AE2A AS DateTime), NULL, NULL, 1)
INSERT [dbo].[CusUserInfo] ([ObjId], [ObjName], [UserMarkId], [LgName], [LgPwd], [UserRealName], [NickName], [Phone], [QQNum], [Emial], [WithdrawalPwd], [Recommended], [RecommendUserCount], [UserLastLoginTime], [UserStatus], [LastLuckFCNum], [CreateTime], [UpdateTime], [UpdateUserID], [SourceType]) VALUES (N'B1E20E62-F888-45CD-A88A-57B0447F909D', 26, N'62299300', N'michaux', N'dlPKX6Zs0+pMsXR3M0z2EA==', N'老坏', NULL, N'', N'', N'', N'dlPKX6Zs0+pMsXR3M0z2EA==', N'', 1, CAST(0x0000A6B200FBE4C4 AS DateTime), N'正常', N'789603', CAST(0x0000A6AB00A2B670 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[CusUserInfo] ([ObjId], [ObjName], [UserMarkId], [LgName], [LgPwd], [UserRealName], [NickName], [Phone], [QQNum], [Emial], [WithdrawalPwd], [Recommended], [RecommendUserCount], [UserLastLoginTime], [UserStatus], [LastLuckFCNum], [CreateTime], [UpdateTime], [UpdateUserID], [SourceType]) VALUES (N'33D41D3B-EA5C-4956-8FB8-D667EF43B2DD', 32, N'93436094', N'michaux123', N'idlwSMsvvJcY8M4c1NpuCWIK+uQXdxVF', N'林五', NULL, N'135523321352', N'11212555258', N'1122121212@qq.com', N'idlwSMsvvJfa3jBVR04QYvbTnZZOniw0', N'', 0, CAST(0x0000A6B20117C57C AS DateTime), N'正常', NULL, CAST(0x0000A6B20117A98B AS DateTime), NULL, NULL, 1)
INSERT [dbo].[CusUserInfo] ([ObjId], [ObjName], [UserMarkId], [LgName], [LgPwd], [UserRealName], [NickName], [Phone], [QQNum], [Emial], [WithdrawalPwd], [Recommended], [RecommendUserCount], [UserLastLoginTime], [UserStatus], [LastLuckFCNum], [CreateTime], [UpdateTime], [UpdateUserID], [SourceType]) VALUES (N'6E9AF0D8-0426-41A5-9CB1-F5A696EA559C', 19, N'27315511', N'tgtgtgtg', N'0ZQL/EsOLA5BYOR8gzqomQ==', N'tgtgtg', NULL, N'18210143902', N'', N'', N'0ZQL/EsOLA5BYOR8gzqomQ==', N'123456', 0, CAST(0x0000A63101012164 AS DateTime), N'正常', NULL, CAST(0x0000A6310101217F AS DateTime), NULL, NULL, 0)
INSERT [dbo].[CusUserInfo] ([ObjId], [ObjName], [UserMarkId], [LgName], [LgPwd], [UserRealName], [NickName], [Phone], [QQNum], [Emial], [WithdrawalPwd], [Recommended], [RecommendUserCount], [UserLastLoginTime], [UserStatus], [LastLuckFCNum], [CreateTime], [UpdateTime], [UpdateUserID], [SourceType]) VALUES (N'46943125-D3A3-4791-8B6A-489B048ADBF1', 30, N'71981003', N'tuijian', N'l5QBOrptEe6J3Qm1/BtD9Q==', N'zzz', NULL, N'', N'', N'', N'l5QBOrptEe6J3Qm1/BtD9Q==', N'62299300', 0, CAST(0x0000A6B00117CB58 AS DateTime), N'正常', N'789589', CAST(0x0000A6B00117CC80 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[CusUserInfo] ([ObjId], [ObjName], [UserMarkId], [LgName], [LgPwd], [UserRealName], [NickName], [Phone], [QQNum], [Emial], [WithdrawalPwd], [Recommended], [RecommendUserCount], [UserLastLoginTime], [UserStatus], [LastLuckFCNum], [CreateTime], [UpdateTime], [UpdateUserID], [SourceType]) VALUES (N'5322F78C-FFE7-4F35-B24D-69AF0378199D', 14, N'29480901', N'yaoyao', N'm1VMvJyl+jvF6pFvQl+yCQ==', N'yaoyao', NULL, N'18210143902', N'', N'', N'm1VMvJyl+jvF6pFvQl+yCQ==', N'123456', 3, CAST(0x0000A63500B4BACC AS DateTime), N'正常', NULL, CAST(0x0000A62D00FD2D16 AS DateTime), NULL, NULL, 0)
INSERT [dbo].[CusUserInfo] ([ObjId], [ObjName], [UserMarkId], [LgName], [LgPwd], [UserRealName], [NickName], [Phone], [QQNum], [Emial], [WithdrawalPwd], [Recommended], [RecommendUserCount], [UserLastLoginTime], [UserStatus], [LastLuckFCNum], [CreateTime], [UpdateTime], [UpdateUserID], [SourceType]) VALUES (N'0ACCEC03-72CC-4B99-A3DB-EC589346FAC8', 21, N'28797156', N'yhyhyhy', N'1dYtNoqBROFQsP8ExfZjCA==', N'yhyh', NULL, N'18210143902', N'', N'', N'1dYtNoqBROFQsP8ExfZjCA==', N'', 0, CAST(0x0000A631011E908C AS DateTime), N'正常', NULL, CAST(0x0000A631011E908F AS DateTime), NULL, NULL, 0)
INSERT [dbo].[CusUserInfo] ([ObjId], [ObjName], [UserMarkId], [LgName], [LgPwd], [UserRealName], [NickName], [Phone], [QQNum], [Emial], [WithdrawalPwd], [Recommended], [RecommendUserCount], [UserLastLoginTime], [UserStatus], [LastLuckFCNum], [CreateTime], [UpdateTime], [UpdateUserID], [SourceType]) VALUES (N'C753E11D-0C71-4BF5-A3CB-9F99F717A306', 18, N'59248822', N'yyyyyyy', N'yOS5J69SFRiKxVCd8OPsyQ==', N'yaoyao', NULL, N'18210143902', N'', N'', N'yOS5J69SFRiKxVCd8OPsyQ==', N'123456', 0, CAST(0x0000A63100EBBF90 AS DateTime), N'正常', NULL, CAST(0x0000A63100EBC093 AS DateTime), NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[CusUserInfo] OFF
/****** Object:  Table [dbo].[CusUserEstateOperate]    Script Date: 11/03/2016 14:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CusUserEstateOperate](
	[ObjId] [varchar](50) NOT NULL,
	[ObjName] [int] IDENTITY(1,1) NOT NULL,
	[CusUserID] [int] NOT NULL,
	[Type] [varchar](10) NOT NULL,
	[Content] [varchar](200) NULL,
	[GoldNum] [varchar](20) NULL,
	[UsIntegral] [varchar](20) NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_CusUserEstateOperate] PRIMARY KEY CLUSTERED 
(
	[ObjName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CusUserEstateOperate] ON
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'6ECBE7C8-A659-426F-A849-6D346B0D25BF', 1, 14, N'收入', N'推广奖励', NULL, N'1000', CAST(0x0000A6300123BB5F AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'574F7523-AB9B-4244-9ED5-C43CA2F989DE', 2, 2, N'支出', N'兑换金币', NULL, N'-300', CAST(0x0000A63100E91DB2 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'78182455-4A14-4FD1-B1DF-B75E96DD34EC', 3, 2, N'收入', N'金币兑换积分', NULL, N'200', CAST(0x0000A63100E928BC AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'2C44A9AE-1119-4257-9D4F-BA8444EE2C6D', 4, 2, N'支出', N'积分提现', NULL, N'-10', CAST(0x0000A63100E97B8F AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'9B7BF89B-582D-44DD-9327-EBBD74C4D269', 5, 2, N'收入', N'推广奖励', NULL, N'1000', CAST(0x0000A63100EBC0A2 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'E44B07A9-44DA-46E0-BB1C-385B907A6F21', 6, 20, N'收入', N'金币兑换积分', NULL, N'10000', CAST(0x0000A631010C56CF AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'7415FA03-CF21-4800-A3B7-7E248978B3B4', 7, 20, N'支出', N'兑换金币', NULL, N'-1000', CAST(0x0000A6310113F516 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'545E9138-01C5-4828-AC99-7D3E7CABC64E', 8, 20, N'支出', N'积分提现', NULL, N'-1000', CAST(0x0000A631011CD889 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'D56AB188-0E99-484D-9238-F046BC86FD84', 9, 22, N'收入', N'金币兑换积分', NULL, N'1000', CAST(0x0000A631011FC6A9 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'67DB22A4-4D93-49B4-9C04-87B08A67E14E', 10, 20, N'支出', N'兑换金币', NULL, N'-1000', CAST(0x0000A6310126AFC3 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'7A7F5283-3059-4F2E-B8FD-1BD751A6ACA9', 11, 20, N'支出', N'兑换金币', NULL, N'-6000', CAST(0x0000A63200ECF781 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'CD5B2B91-17A6-4694-8DAF-3361675A2B4B', 12, 2, N'支出', N'兑换金币', NULL, N'-10000', CAST(0x0000A63200ED4707 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'E9BDDE02-7B2D-4BD4-82D0-A884036B9594', 13, 14, N'收入', N'积分充值', NULL, N'1000000.00', CAST(0x0000A63200F934E7 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'49AAE4E0-DB41-4C4B-8FED-D50D2757C1D6', 14, 20, N'收入', N'积分充值', NULL, N'100000.00', CAST(0x0000A63200F93D20 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'3EB7674E-24FF-4636-9232-04FEE001DB47', 15, 14, N'收入', N'积分充值', NULL, N'1000000.00', CAST(0x0000A63200F94512 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'66CC6594-7376-4671-96FA-CAEF7F407B97', 16, 2, N'支出', N'兑换金币', NULL, N'-8000', CAST(0x0000A63400FAD977 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'52A612F9-8A49-4CDD-8963-AC6258DEC9A9', 17, 2, N'支出', N'兑换金币', NULL, N'-100000', CAST(0x0000A634010BEFDF AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'0735D6E9-6F2B-4B20-844D-81D3142C4164', 18, 16, N'支出', N'兑换金币', NULL, N'-9000000', CAST(0x0000A63500B4F05B AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'423CC3F7-E15A-40F4-9FE4-401F5932F404', 19, 2, N'收入', N'金币兑换积分', NULL, N'900000', CAST(0x0000A63600A38B2F AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'2422EC1F-CE33-457A-9A57-9F7A53EE2B49', 20, 2, N'支出', N'积分提现', NULL, N'-1000', CAST(0x0000A63600A3AF0D AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'197CA437-3267-4FA5-8A05-8FECD8457FE5', 21, 2, N'支出', N'积分提现', NULL, N'-1000', CAST(0x0000A63600A3C8F8 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'DFB261C3-CEE3-4B9E-94C5-1701F6D74B60', 22, 2, N'支出', N'积分提现', NULL, N'-1000', CAST(0x0000A63600A3DA54 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'CB3794B7-1C12-4637-8401-C73F2794E21D', 23, 2, N'支出', N'积分提现', NULL, N'-1000', CAST(0x0000A63600A82CC1 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'3FB1AB5B-8930-4851-8A40-6EAB0DB719BC', 24, 2, N'支出', N'积分提现', NULL, N'-1000', CAST(0x0000A63600A8443C AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'814DA83A-1D29-42EF-B66C-16E4F3816F9D', 25, 2, N'支出', N'积分提现', NULL, N'-1000', CAST(0x0000A63600A85655 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'CB5F7B10-4E1E-4970-8A67-B680F91BD239', 26, 2, N'支出', N'积分提现', NULL, N'-1000', CAST(0x0000A63600AB7923 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'8716B8EF-4AB9-42DF-A2B4-F3F16512D72F', 27, 2, N'支出', N'积分提现', NULL, N'-1000', CAST(0x0000A63600ADD1A7 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'5E865B0C-C278-4271-A85F-3ADBB3654B7A', 28, 2, N'收入', N'积分充值', NULL, N'10000.00', CAST(0x0000A63900FE0115 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'E521B769-6A9E-41B7-8898-A2391D294814', 29, 2, N'收入', N'积分充值', NULL, N'10000.00', CAST(0x0000A63900FE3883 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'87567A44-8F4A-480C-A603-85BC9F040EC0', 30, 2, N'支出', N'积分提现', NULL, N'-900000', CAST(0x0000A63D00A847AF AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'9E16272D-F106-41CF-A7BC-1F1019AAC378', 31, 2, N'支出', N'积分提现', NULL, N'-900000', CAST(0x0000A63D00A84B31 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'B27CA0E0-656B-4592-B75B-BEFA83EB0B93', 32, 2, N'支出', N'积分提现', NULL, N'-900000', CAST(0x0000A63D00A84DD1 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'CB839741-3E73-43D7-A6A9-4CEBAE1280E6', 33, 2, N'支出', N'积分提现', NULL, N'-900000', CAST(0x0000A63D00A9B738 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'DD511F66-B132-4876-8105-8513F6E313F2', 34, 2, N'收入', N'金币兑换积分', NULL, N'500000', CAST(0x0000A63D00AB07E4 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'08991F29-8800-43F2-A968-D2F448553BBC', 35, 2, N'支出', N'积分提现', NULL, N'-20000', CAST(0x0000A63D00AB3B49 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'3C499877-83A5-4297-BDCF-C1D2C425CDBB', 36, 2, N'支出', N'积分提现', NULL, N'-20000', CAST(0x0000A63D00AB5C59 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'418DD98E-23E0-446C-ADCC-660ADA50D2A2', 37, 2, N'支出', N'积分提现', NULL, N'-10000', CAST(0x0000A63D00AC01C7 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'40688BD3-7B07-4A86-AEA8-6B7854DDF2E4', 38, 2, N'支出', N'积分提现', NULL, N'-20000', CAST(0x0000A63D00AD0CBC AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'8CE9985A-E101-46CE-9620-5D9659EED195', 39, 26, N'支出', N'投注扣除', N'500', NULL, CAST(0x0000A6B0009EA649 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'53A24903-9040-440B-9E33-C7C26DB6A2B1', 40, 26, N'支出', N'投注扣除', N'500', NULL, CAST(0x0000A6B0009EC0D9 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'0D2E491E-482A-4005-B9A5-0D2D01D7E533', 41, 26, N'支出', N'投注扣除', N'1000', NULL, CAST(0x0000A6B0009EE110 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'6A0B1097-772F-4035-A936-E3BDBB31EDC4', 42, 26, N'支出', N'投注扣除', N'333', NULL, CAST(0x0000A6B0009EFCBE AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'F271D517-E94E-4D0D-A6C2-705855B9AB6E', 43, 26, N'收入', N'789499期[19],中奖发放', N'45', NULL, CAST(0x0000A6B0009F8F10 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'AE78B0E2-AA75-4B0A-AF73-98C0520D631F', 44, 26, N'收入', N'789501期[18],中奖发放', N'55', NULL, CAST(0x0000A6B000A253C4 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'894556C0-ACFB-47E4-AC2B-116220CF9251', 45, 29, N'支出', N'投注扣除', N'500', NULL, CAST(0x0000A6B001121339 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'AD8FD326-E7D7-4CC3-8A3E-05AA74A2A4EF', 46, 26, N'支出', N'投注扣除', N'500', NULL, CAST(0x0000A6B00112491D AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'D47BB8C1-3EF4-4756-BA4E-A12996515699', 47, 26, N'收入', N'789583期[13],中奖发放', N'700', NULL, CAST(0x0000A6B00112F8BD AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'8B5E7BBF-D706-4325-9030-34E20654A20A', 48, 29, N'收入', N'789583期[13],中奖发放', N'7500', NULL, CAST(0x0000A6B00112F8BD AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'36D99D12-B119-4DC2-B7B6-12D3A6C1F546', 49, 29, N'支出', N'投注扣除', N'500', NULL, CAST(0x0000A6B00113E273 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'ADBA632D-7FBA-46B7-952F-A67FB2D9A00A', 50, 29, N'支出', N'投注扣除', N'560', NULL, CAST(0x0000A6B001143F0B AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'9B83DFDC-8C79-4E13-B50E-EB67C50B2346', 51, 29, N'收入', N'789584期[17],中奖发放', N'630', NULL, CAST(0x0000A6B0011469B7 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'2C1E533B-D048-4C66-B016-E4BA7378595D', 52, 29, N'支出', N'投注扣除', N'1400', NULL, CAST(0x0000A6B001157FC6 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'8DA461D1-98B5-4649-A99F-7D37E071D3F8', 53, 29, N'收入', N'789585期[13],中奖发放', N'7500', NULL, CAST(0x0000A6B00115E36B AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'AFF9CA88-11EE-469A-A422-968B66E305BD', 54, 29, N'收入', N'789586期[17],中奖发放', N'1000', NULL, CAST(0x0000A6B001176ADF AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'4672351B-DAE8-4491-9D19-40F53C56B3D1', 55, 30, N'支出', N'投注扣除', N'1000', NULL, CAST(0x0000A6B001188726 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'83F69FD0-AE06-4446-9882-7AF2946E61D3', 56, 30, N'支出', N'投注扣除', N'560', NULL, CAST(0x0000A6B00118A109 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'E6A7A65C-7A80-4B80-A901-CDE94C577AA0', 57, 29, N'收入', N'金币充值', N'100000.00', NULL, CAST(0x0000A6B00118AFD7 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'7B9963AB-50E4-434C-9409-1F12F0C5B722', 58, 30, N'支出', N'投注扣除', N'994', NULL, CAST(0x0000A6B001191EB9 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'E8FF3BE7-2908-4C6E-BD94-6993DE5926CE', 59, 30, N'收入', N'789588期[17],中奖发放', N'630', NULL, CAST(0x0000A6B00119C977 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'E8EEBB11-B678-4DE3-B570-0ED13C3B6763', 60, 30, N'收入', N'789589期[10],中奖发放', N'630', NULL, CAST(0x0000A6B0011B6572 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'A7E3C259-E074-4B8B-AADE-D9CA9E1DC662', 61, 26, N'支出', N'投注扣除', N'1000', NULL, CAST(0x0000A6B0012B9C01 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'159965B1-E0E2-4D61-B936-B0EF55638527', 62, 26, N'收入', N'789603期[08],中奖发放', N'45', NULL, CAST(0x0000A6B0012EA3F4 AS DateTime))
INSERT [dbo].[CusUserEstateOperate] ([ObjId], [ObjName], [CusUserID], [Type], [Content], [GoldNum], [UsIntegral], [CreateTime]) VALUES (N'2F1AB515-5786-4EAC-9E7B-34EA5490D808', 63, 26, N'支出', N'投注扣除', N'500', NULL, CAST(0x0000A6B200FC37EE AS DateTime))
SET IDENTITY_INSERT [dbo].[CusUserEstateOperate] OFF
/****** Object:  Table [dbo].[CusUserEstate]    Script Date: 11/03/2016 14:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CusUserEstate](
	[ObjId] [varchar](50) NOT NULL,
	[ObjName] [int] IDENTITY(1,1) NOT NULL,
	[CusUserID] [int] NOT NULL,
	[UsGoldNum] [int] NULL,
	[UsIntegral] [int] NULL,
	[GetGoldDay] [varchar](25) NULL,
	[GetGoldNum] [int] NULL,
	[GetMaxGoldNum] [int] NULL,
	[UsWithDrawNum] [money] NULL,
	[RegisterAwardGoldTime] [datetime] NULL,
	[RecommendAwardGoldTime] [datetime] NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_CusUserAccount] PRIMARY KEY CLUSTERED 
(
	[CusUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CusUserEstate] ON
INSERT [dbo].[CusUserEstate] ([ObjId], [ObjName], [CusUserID], [UsGoldNum], [UsIntegral], [GetGoldDay], [GetGoldNum], [GetMaxGoldNum], [UsWithDrawNum], [RegisterAwardGoldTime], [RecommendAwardGoldTime], [CreateTime]) VALUES (N'E57DEFAD-84CE-44BF-AF87-8D1A704AABD7', 1, 25, 1000, 0, N'2016-10-25 08:57:01', 0, 3, NULL, CAST(0x0000A6AA00937EFC AS DateTime), NULL, CAST(0x0000A6AA00938004 AS DateTime))
INSERT [dbo].[CusUserEstate] ([ObjId], [ObjName], [CusUserID], [UsGoldNum], [UsIntegral], [GetGoldDay], [GetGoldNum], [GetMaxGoldNum], [UsWithDrawNum], [RegisterAwardGoldTime], [RecommendAwardGoldTime], [CreateTime]) VALUES (N'2E3D287C-C978-4FFF-B721-A38D2250018D', 2, 26, 512, 0, N'2016-10-31 16:39:04', 3, 3, NULL, CAST(0x0000A6AB00A2B64C AS DateTime), CAST(0x0000A6B0011266E0 AS DateTime), CAST(0x0000A6AB00A2B670 AS DateTime))
INSERT [dbo].[CusUserEstate] ([ObjId], [ObjName], [CusUserID], [UsGoldNum], [UsIntegral], [GetGoldDay], [GetGoldNum], [GetMaxGoldNum], [UsWithDrawNum], [RegisterAwardGoldTime], [RecommendAwardGoldTime], [CreateTime]) VALUES (N'DAD80C67-DB5D-4DFC-8BF8-50C712CA36F3', 3, 27, 1000, 0, N'2016-10-26 18:29:39', 0, 3, NULL, CAST(0x0000A6AB0130C644 AS DateTime), NULL, CAST(0x0000A6AB0130C6C7 AS DateTime))
INSERT [dbo].[CusUserEstate] ([ObjId], [ObjName], [CusUserID], [UsGoldNum], [UsIntegral], [GetGoldDay], [GetGoldNum], [GetMaxGoldNum], [UsWithDrawNum], [RegisterAwardGoldTime], [RecommendAwardGoldTime], [CreateTime]) VALUES (N'383448AB-F8C2-407F-A7C4-85A4C9C5E7FD', 4, 28, 1000, 0, N'2016-10-31 10:54:11', 0, 3, NULL, CAST(0x0000A6B000B3AD44 AS DateTime), NULL, CAST(0x0000A6B000B3AE2A AS DateTime))
INSERT [dbo].[CusUserEstate] ([ObjId], [ObjName], [CusUserID], [UsGoldNum], [UsIntegral], [GetGoldDay], [GetGoldNum], [GetMaxGoldNum], [UsWithDrawNum], [RegisterAwardGoldTime], [RecommendAwardGoldTime], [CreateTime]) VALUES (N'D977787C-8CB3-4663-8D63-63D83BBBE092', 5, 29, 114670, 0, N'2016-10-31 16:35:10', 0, 3, NULL, CAST(0x0000A6B0011154A8 AS DateTime), NULL, CAST(0x0000A6B0011154EE AS DateTime))
INSERT [dbo].[CusUserEstate] ([ObjId], [ObjName], [CusUserID], [UsGoldNum], [UsIntegral], [GetGoldDay], [GetGoldNum], [GetMaxGoldNum], [UsWithDrawNum], [RegisterAwardGoldTime], [RecommendAwardGoldTime], [CreateTime]) VALUES (N'0458C455-30F3-4B90-A33D-B5B6F7A560CF', 6, 30, 2706, 0, N'2016-10-31 17:03:45', 3, 3, NULL, CAST(0x0000A6B00117CC84 AS DateTime), CAST(0x0000A6B001192E6C AS DateTime), CAST(0x0000A6B00117CC80 AS DateTime))
INSERT [dbo].[CusUserEstate] ([ObjId], [ObjName], [CusUserID], [UsGoldNum], [UsIntegral], [GetGoldDay], [GetGoldNum], [GetMaxGoldNum], [UsWithDrawNum], [RegisterAwardGoldTime], [RecommendAwardGoldTime], [CreateTime]) VALUES (N'3816A1BD-8E5D-423A-90D8-6EFBADCFF8A2', 7, 31, 1000, 0, N'2016-10-31 17:08:32', 0, 3, NULL, CAST(0x0000A6B0011A7EC0 AS DateTime), NULL, CAST(0x0000A6B0011A7F92 AS DateTime))
INSERT [dbo].[CusUserEstate] ([ObjId], [ObjName], [CusUserID], [UsGoldNum], [UsIntegral], [GetGoldDay], [GetGoldNum], [GetMaxGoldNum], [UsWithDrawNum], [RegisterAwardGoldTime], [RecommendAwardGoldTime], [CreateTime]) VALUES (N'346A3A21-E123-4DB4-ACC7-79D3A56CBC91', 8, 32, 1000, 0, N'2016-11-02 16:58:13', 0, 3, NULL, CAST(0x0000A6B20117A95C AS DateTime), NULL, CAST(0x0000A6B20117A98B AS DateTime))
SET IDENTITY_INSERT [dbo].[CusUserEstate] OFF
/****** Object:  Table [dbo].[CusUserAutoBett]    Script Date: 11/03/2016 14:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CusUserAutoBett](
	[ObjId] [varchar](50) NOT NULL,
	[ObjName] [int] IDENTITY(1,1) NOT NULL,
	[CusUserID] [int] NOT NULL,
	[NowSelectModeID] [int] NOT NULL,
	[NowStartFCNum] [varchar](20) NULL,
	[MaxBettNumber] [int] NULL,
	[MinGoldNumber] [int] NULL,
	[AutoBettNum] [int] NULL,
	[IsStart] [bit] NULL,
	[CreateTime] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[UpdateUser] [varchar](50) NULL,
 CONSTRAINT [PK_CusUserAutoBett] PRIMARY KEY CLUSTERED 
(
	[CusUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CusRecommandInfo]    Script Date: 11/03/2016 14:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CusRecommandInfo](
	[ObjId] [varchar](50) NOT NULL,
	[ObjName] [int] IDENTITY(1,1) NOT NULL,
	[CusUserID] [int] NULL,
	[RecommendUserID] [int] NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_CusRecommandInfo] PRIMARY KEY CLUSTERED 
(
	[ObjName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CusRecommandInfo] ON
INSERT [dbo].[CusRecommandInfo] ([ObjId], [ObjName], [CusUserID], [RecommendUserID], [CreateTime]) VALUES (N'3F25B659-093E-43B8-B3EE-7D5177B1DEFC', 1, 2, 5, CAST(0x0000A62100C67DE9 AS DateTime))
INSERT [dbo].[CusRecommandInfo] ([ObjId], [ObjName], [CusUserID], [RecommendUserID], [CreateTime]) VALUES (N'778D7C2E-3724-4BF9-A726-C974D8FB8710', 13, 2, 14, CAST(0x0000A62D00FD2D23 AS DateTime))
INSERT [dbo].[CusRecommandInfo] ([ObjId], [ObjName], [CusUserID], [RecommendUserID], [CreateTime]) VALUES (N'CB572C4C-198B-4B81-B52F-4A1875C3D71B', 14, 14, 15, CAST(0x0000A62E00FC2843 AS DateTime))
INSERT [dbo].[CusRecommandInfo] ([ObjId], [ObjName], [CusUserID], [RecommendUserID], [CreateTime]) VALUES (N'C494CD7C-07FF-4D35-A85C-2A797F499982', 15, 14, 16, CAST(0x0000A62F01284953 AS DateTime))
INSERT [dbo].[CusRecommandInfo] ([ObjId], [ObjName], [CusUserID], [RecommendUserID], [CreateTime]) VALUES (N'387BC640-D9CE-4498-B97C-40D50A61F293', 16, 14, 17, CAST(0x0000A6300123BB5F AS DateTime))
INSERT [dbo].[CusRecommandInfo] ([ObjId], [ObjName], [CusUserID], [RecommendUserID], [CreateTime]) VALUES (N'4476A338-5802-4C60-8F23-CBD8E8FD2571', 17, 2, 18, CAST(0x0000A63100EBC0A3 AS DateTime))
INSERT [dbo].[CusRecommandInfo] ([ObjId], [ObjName], [CusUserID], [RecommendUserID], [CreateTime]) VALUES (N'A266E09A-DEB0-46C4-8461-8E4008A5836C', 18, 2, 19, CAST(0x0000A63101012F74 AS DateTime))
INSERT [dbo].[CusRecommandInfo] ([ObjId], [ObjName], [CusUserID], [RecommendUserID], [CreateTime]) VALUES (N'71F1EAFE-6645-4ACE-A1A0-7F1EC22A64DF', 19, 20, 22, CAST(0x0000A631011EFAA2 AS DateTime))
INSERT [dbo].[CusRecommandInfo] ([ObjId], [ObjName], [CusUserID], [RecommendUserID], [CreateTime]) VALUES (N'24F170A6-22CC-4E04-9263-25FAEBD18221', 20, 26, 30, CAST(0x0000A6B00117CCAB AS DateTime))
SET IDENTITY_INSERT [dbo].[CusRecommandInfo] OFF
/****** Object:  Table [dbo].[CusReciveMsg]    Script Date: 11/03/2016 14:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CusReciveMsg](
	[ObjId] [varchar](50) NOT NULL,
	[ObjName] [int] IDENTITY(1,1) NOT NULL,
	[CusUserID] [int] NOT NULL,
	[Title] [varchar](200) NOT NULL,
	[Content] [varchar](500) NOT NULL,
	[SendUser] [varchar](10) NOT NULL,
	[IsRead] [bit] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
 CONSTRAINT [PK_CusReciveMsg] PRIMARY KEY CLUSTERED 
(
	[ObjName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CusReciveMsg] ON
INSERT [dbo].[CusReciveMsg] ([ObjId], [ObjName], [CusUserID], [Title], [Content], [SendUser], [IsRead], [CreateTime]) VALUES (N'5FA515C6-939F-4D54-970E-A5036012D55A', 1, 25, N'充值结果', N'您充值的[0]金币失败,失败原因：啊', N'系统', 0, CAST(0x0000A6B001170773 AS DateTime))
INSERT [dbo].[CusReciveMsg] ([ObjId], [ObjName], [CusUserID], [Title], [Content], [SendUser], [IsRead], [CreateTime]) VALUES (N'BA36CBE6-1F42-4619-85FD-07E130F0B2C7', 2, 25, N'充值结果', N'您充值的[0]金币失败,失败原因：啊', N'系统', 0, CAST(0x0000A6B001170AC8 AS DateTime))
INSERT [dbo].[CusReciveMsg] ([ObjId], [ObjName], [CusUserID], [Title], [Content], [SendUser], [IsRead], [CreateTime]) VALUES (N'0C040A79-656F-4B4B-8B1C-0E00A0CC7B71', 3, 25, N'充值结果', N'您充值的[0]金币失败,失败原因：啊', N'系统', 0, CAST(0x0000A6B001170AED AS DateTime))
INSERT [dbo].[CusReciveMsg] ([ObjId], [ObjName], [CusUserID], [Title], [Content], [SendUser], [IsRead], [CreateTime]) VALUES (N'0534CB44-D509-4CDC-B8AC-E199B940A2CF', 4, 25, N'充值结果', N'您充值的[0]金币失败,失败原因：啊', N'系统', 0, CAST(0x0000A6B001170B0E AS DateTime))
INSERT [dbo].[CusReciveMsg] ([ObjId], [ObjName], [CusUserID], [Title], [Content], [SendUser], [IsRead], [CreateTime]) VALUES (N'3A03E19E-EFA0-4134-B1FF-6B2916CECF10', 5, 25, N'充值结果', N'您充值的[0]金币失败,失败原因：啊', N'系统', 0, CAST(0x0000A6B001170B2E AS DateTime))
INSERT [dbo].[CusReciveMsg] ([ObjId], [ObjName], [CusUserID], [Title], [Content], [SendUser], [IsRead], [CreateTime]) VALUES (N'7BFFCE44-23E2-4914-B48A-F5F4601CA96F', 6, 25, N'充值结果', N'您充值的[0]金币失败,失败原因：1', N'系统', 0, CAST(0x0000A6B0011715A3 AS DateTime))
INSERT [dbo].[CusReciveMsg] ([ObjId], [ObjName], [CusUserID], [Title], [Content], [SendUser], [IsRead], [CreateTime]) VALUES (N'60976276-C49C-419E-BEC5-84CEAA2F5DE0', 7, 25, N'充值结果', N'您充值的[0]金币失败,失败原因：1', N'系统', 0, CAST(0x0000A6B001171997 AS DateTime))
INSERT [dbo].[CusReciveMsg] ([ObjId], [ObjName], [CusUserID], [Title], [Content], [SendUser], [IsRead], [CreateTime]) VALUES (N'4F78E1A0-2A07-4967-B385-0C2E7EA6AD65', 8, 25, N'充值结果', N'您充值的[0]金币失败,失败原因：1', N'系统', 0, CAST(0x0000A6B001171EB7 AS DateTime))
INSERT [dbo].[CusReciveMsg] ([ObjId], [ObjName], [CusUserID], [Title], [Content], [SendUser], [IsRead], [CreateTime]) VALUES (N'2FBDBFAF-BFE1-44A3-B637-991C4C82341A', 9, 25, N'充值结果', N'您充值的[0]金币失败,失败原因：1', N'系统', 0, CAST(0x0000A6B001172540 AS DateTime))
INSERT [dbo].[CusReciveMsg] ([ObjId], [ObjName], [CusUserID], [Title], [Content], [SendUser], [IsRead], [CreateTime]) VALUES (N'972115D4-2CC5-4D55-AB16-CA081A4144DD', 10, 25, N'充值结果', N'您充值的[0]金币失败,失败原因：1', N'系统', 0, CAST(0x0000A6B0011728F8 AS DateTime))
INSERT [dbo].[CusReciveMsg] ([ObjId], [ObjName], [CusUserID], [Title], [Content], [SendUser], [IsRead], [CreateTime]) VALUES (N'C61B1D91-47C0-42D8-A154-32FE6870D0C7', 11, 26, N'充值结果', N'您充值的[0]金币失败,失败原因：1', N'系统', 1, CAST(0x0000A6B001172D4E AS DateTime))
INSERT [dbo].[CusReciveMsg] ([ObjId], [ObjName], [CusUserID], [Title], [Content], [SendUser], [IsRead], [CreateTime]) VALUES (N'AD1263C1-38D3-461D-A821-267BA2B645B3', 12, 29, N'充值结果', N'您充值的[10000000]金币失败,失败原因：1', N'系统', 1, CAST(0x0000A6B001185D36 AS DateTime))
INSERT [dbo].[CusReciveMsg] ([ObjId], [ObjName], [CusUserID], [Title], [Content], [SendUser], [IsRead], [CreateTime]) VALUES (N'A4037557-E6DC-44A0-9A6F-FA784ED33938', 13, 29, N'充值结果', N'您充值的[100000]金币已成功,请查收', N'系统', 0, CAST(0x0000A6B00118AFD7 AS DateTime))
INSERT [dbo].[CusReciveMsg] ([ObjId], [ObjName], [CusUserID], [Title], [Content], [SendUser], [IsRead], [CreateTime]) VALUES (N'94722BAE-7D59-48B8-B8F5-B277FFF7EF1A', 14, 30, N'充值结果', N'您充值的[0]金币失败,失败原因：1', N'系统', 0, CAST(0x0000A6B001199598 AS DateTime))
SET IDENTITY_INSERT [dbo].[CusReciveMsg] OFF
/****** Object:  Table [dbo].[CusBettMode]    Script Date: 11/03/2016 14:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CusBettMode](
	[ObjId] [varchar](50) NOT NULL,
	[ObjName] [int] IDENTITY(1,1) NOT NULL,
	[Objjc] [varchar](50) NOT NULL,
	[CusUserId] [int] NOT NULL,
	[BettMdNum] [varchar](300) NULL,
	[BettInfo] [varchar](max) NOT NULL,
	[BettEggs] [int] NOT NULL,
	[CheckBettType] [varchar](10) NULL,
	[SetWinType] [int] NULL,
	[SetLossType] [int] NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreateUser] [int] NOT NULL,
 CONSTRAINT [PK_CusBettMode_1] PRIMARY KEY CLUSTERED 
(
	[Objjc] ASC,
	[CusUserId] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[CusBettMode] ON
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'D58E4E55-28AF-497E-B8FB-CB095C5D3BE1', 7, N'100小升级版', -110, N'00;01;02;03;04;05;06;07;08;09;10;11;12;13;14', N'00:398;01:1198;02:2397;03:3992;04:5993;05:8385;06:11191;07:14324;08:18013;09:21999;10:25228;11:27611;12:29231;13:30041;14:7548', 207549, N'0', 43, 43, CAST(0x0000A6B0009410D9 AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'4E41E084-1FF3-4329-A55D-CD6EC7871D9F', 13, N'100小升级版', 28, N'00;01;02;03;04;05;06;07;08;09;10;11;12;13;14', N'00:398;01:1198;02:2397;03:3992;04:5993;05:8385;06:11191;07:14324;08:18013;09:21999;10:25228;11:27611;12:29231;13:30041;14:7548', 207549, N'0', 43, 43, CAST(0x0000A6B000B3AE2A AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'8B3C407D-8761-4D87-AF9D-3E120EA93821', 25, N'100小升级版', 31, N'00;01;02;03;04;05;06;07;08;09;10;11;12;13;14', N'00:398;01:1198;02:2397;03:3992;04:5993;05:8385;06:11191;07:14324;08:18013;09:21999;10:25228;11:27611;12:29231;13:30041;14:7548', 207549, N'0', 43, 43, CAST(0x0000A6B0011A7F92 AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'D2E44E5F-ADAD-4BB6-B079-4D576E4D98C6', 37, N'100小升级版', 32, N'00;01;02;03;04;05;06;07;08;09;10;11;12;13;14', N'00:398;01:1198;02:2397;03:3992;04:5993;05:8385;06:11191;07:14324;08:18013;09:21999;10:25228;11:27611;12:29231;13:30041;14:7548', 207549, N'0', 43, 43, CAST(0x0000A6B20117A98B AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'2A978990-C2DB-4F21-A521-BFB2F22D64FF', 10, N'12:00满仓版', -110, N'00;01;02;03;04;05;06;07;08;09;10;11;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27', N'00:1077;01:3231;02:6460;03:10759;04:16150;05:22594;06:30153;07:38595;08:48568;09:59271;10:67969;11:74389;13:81268;14:81399;15:79010;16:74287;17:67969;18:59193;19:48531;20:38744;21:30197;22:22567;23:16151;24:10703;25:6460;26:3227;27:1078', 1000000, N'0', 46, 46, CAST(0x0000A6B0009410DE AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'BD2136B8-21F1-432B-94A1-609C1CD02877', 14, N'12:00满仓版', 28, N'00;01;02;03;04;05;06;07;08;09;10;11;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27', N'00:1077;01:3231;02:6460;03:10759;04:16150;05:22594;06:30153;07:38595;08:48568;09:59271;10:67969;11:74389;13:81268;14:81399;15:79010;16:74287;17:67969;18:59193;19:48531;20:38744;21:30197;22:22567;23:16151;24:10703;25:6460;26:3227;27:1078', 1000000, N'0', 46, 46, CAST(0x0000A6B000B3AE2A AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'376A204D-28E8-4206-BAC5-220599C2CB41', 26, N'12:00满仓版', 31, N'00;01;02;03;04;05;06;07;08;09;10;11;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27', N'00:1077;01:3231;02:6460;03:10759;04:16150;05:22594;06:30153;07:38595;08:48568;09:59271;10:67969;11:74389;13:81268;14:81399;15:79010;16:74287;17:67969;18:59193;19:48531;20:38744;21:30197;22:22567;23:16151;24:10703;25:6460;26:3227;27:1078', 1000000, N'0', 46, 46, CAST(0x0000A6B0011A7F92 AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'D61BF252-50DF-4776-8174-5C565574E50C', 38, N'12:00满仓版', 32, N'00;01;02;03;04;05;06;07;08;09;10;11;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27', N'00:1077;01:3231;02:6460;03:10759;04:16150;05:22594;06:30153;07:38595;08:48568;09:59271;10:67969;11:74389;13:81268;14:81399;15:79010;16:74287;17:67969;18:59193;19:48531;20:38744;21:30197;22:22567;23:16151;24:10703;25:6460;26:3227;27:1078', 1000000, N'0', 46, 46, CAST(0x0000A6B20117A98B AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'1809E597-3230-498A-A3D9-D2220CE0118F', 11, N'13:00满仓版', -110, N'00;01;02;03;04;05;06;07;08;09;10;11;12;14;15;16;17;18;19;20;21;22;23;24;25;26;27', N'00:1068;01:3203;02:6405;03:10674;04:16011;05:22414;06:29886;07:38424;08:48032;09:58701;10:67100;11:73488;12:77749;14:93690;15:77749;16:73488;17:67100;18:58701;19:48032;20:38424;21:29886;22:22414;23:16011;24:10674;25:6405;26:3203;27:1068', 1000000, N'0', 47, 47, CAST(0x0000A6B0009410DE AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'B87A4968-1737-4081-87FF-FA21BD8D16DB', 15, N'13:00满仓版', 28, N'00;01;02;03;04;05;06;07;08;09;10;11;12;14;15;16;17;18;19;20;21;22;23;24;25;26;27', N'00:1068;01:3203;02:6405;03:10674;04:16011;05:22414;06:29886;07:38424;08:48032;09:58701;10:67100;11:73488;12:77749;14:93690;15:77749;16:73488;17:67100;18:58701;19:48032;20:38424;21:29886;22:22414;23:16011;24:10674;25:6405;26:3203;27:1068', 1000000, N'0', 47, 47, CAST(0x0000A6B000B3AE2A AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'ED5B6CAC-5DA0-4840-A276-E07D8C9527E3', 27, N'13:00满仓版', 31, N'00;01;02;03;04;05;06;07;08;09;10;11;12;14;15;16;17;18;19;20;21;22;23;24;25;26;27', N'00:1068;01:3203;02:6405;03:10674;04:16011;05:22414;06:29886;07:38424;08:48032;09:58701;10:67100;11:73488;12:77749;14:93690;15:77749;16:73488;17:67100;18:58701;19:48032;20:38424;21:29886;22:22414;23:16011;24:10674;25:6405;26:3203;27:1068', 1000000, N'0', 47, 47, CAST(0x0000A6B0011A7F92 AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'86A514CF-6DDF-46F4-9EDC-7F4D2C31A0B2', 39, N'13:00满仓版', 32, N'00;01;02;03;04;05;06;07;08;09;10;11;12;14;15;16;17;18;19;20;21;22;23;24;25;26;27', N'00:1068;01:3203;02:6405;03:10674;04:16011;05:22414;06:29886;07:38424;08:48032;09:58701;10:67100;11:73488;12:77749;14:93690;15:77749;16:73488;17:67100;18:58701;19:48032;20:38424;21:29886;22:22414;23:16011;24:10674;25:6405;26:3203;27:1068', 1000000, N'0', 47, 47, CAST(0x0000A6B20117A98B AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'C5F14A3B-20D7-42F2-9935-35E4F541F8F0', 12, N'14:00满仓版', -110, N'00;01;02;03;04;05;06;07;08;09;10;11;12;13;15;16;17;18;19;20;21;22;23;24;25;26;27', N'00:1068;01:3203;02:6405;03:10674;04:16011;05:22414;06:29886;07:38424;08:48032;09:58701;10:67100;11:73488;12:77749;13:93691;15:77748;16:73488;17:67100;18:58701;19:48032;20:38424;21:29886;22:22414;23:16011;24:10674;25:6405;26:3203;27:1068', 1000000, N'0', 48, 48, CAST(0x0000A6B0009410DE AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'F81D7EC0-D429-42CC-A646-AD5091172A73', 16, N'14:00满仓版', 28, N'00;01;02;03;04;05;06;07;08;09;10;11;12;13;15;16;17;18;19;20;21;22;23;24;25;26;27', N'00:1068;01:3203;02:6405;03:10674;04:16011;05:22414;06:29886;07:38424;08:48032;09:58701;10:67100;11:73488;12:77749;13:93691;15:77748;16:73488;17:67100;18:58701;19:48032;20:38424;21:29886;22:22414;23:16011;24:10674;25:6405;26:3203;27:1068', 1000000, N'0', 48, 48, CAST(0x0000A6B000B3AE2A AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'B7A2AAEF-30FA-4693-9F6B-C8CA4B53BA6A', 28, N'14:00满仓版', 31, N'00;01;02;03;04;05;06;07;08;09;10;11;12;13;15;16;17;18;19;20;21;22;23;24;25;26;27', N'00:1068;01:3203;02:6405;03:10674;04:16011;05:22414;06:29886;07:38424;08:48032;09:58701;10:67100;11:73488;12:77749;13:93691;15:77748;16:73488;17:67100;18:58701;19:48032;20:38424;21:29886;22:22414;23:16011;24:10674;25:6405;26:3203;27:1068', 1000000, N'0', 48, 48, CAST(0x0000A6B0011A7F92 AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'B4B11338-D24C-4A75-A6F9-5A114956C442', 40, N'14:00满仓版', 32, N'00;01;02;03;04;05;06;07;08;09;10;11;12;13;15;16;17;18;19;20;21;22;23;24;25;26;27', N'00:1068;01:3203;02:6405;03:10674;04:16011;05:22414;06:29886;07:38424;08:48032;09:58701;10:67100;11:73488;12:77749;13:93691;15:77748;16:73488;17:67100;18:58701;19:48032;20:38424;21:29886;22:22414;23:16011;24:10674;25:6405;26:3203;27:1068', 1000000, N'0', 48, 48, CAST(0x0000A6B20117A98B AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'D6FFD51F-DE35-4726-8750-2ABED702DEAA', 5, N'200大极端版', -110, N'13;14;15;16;17;18;19;20;21;22;23;24;25;26;27', N'13:15096;14:60082;15:58462;16:55222;17:50456;18:43998;19:36026;20:28646;21:22382;22:16770;23:11986;24:7984;25:4794;26:2396;27:796', 415096, N'0', 41, 41, CAST(0x0000A6B0009410D9 AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'E2C18CE3-C2DB-4492-B3D0-DAF48D62E08A', 17, N'200大极端版', 28, N'13;14;15;16;17;18;19;20;21;22;23;24;25;26;27', N'13:15096;14:60082;15:58462;16:55222;17:50456;18:43998;19:36026;20:28646;21:22382;22:16770;23:11986;24:7984;25:4794;26:2396;27:796', 415096, N'0', 41, 41, CAST(0x0000A6B000B3AE2A AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'58960D05-9E15-4887-B3DD-8284076D0083', 29, N'200大极端版', 31, N'13;14;15;16;17;18;19;20;21;22;23;24;25;26;27', N'13:15096;14:60082;15:58462;16:55222;17:50456;18:43998;19:36026;20:28646;21:22382;22:16770;23:11986;24:7984;25:4794;26:2396;27:796', 415096, N'0', 41, 41, CAST(0x0000A6B0011A7F92 AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'9C89C736-66D4-4AD4-88D1-C90F5CCE3C58', 41, N'200大极端版', 32, N'13;14;15;16;17;18;19;20;21;22;23;24;25;26;27', N'13:15096;14:60082;15:58462;16:55222;17:50456;18:43998;19:36026;20:28646;21:22382;22:16770;23:11986;24:7984;25:4794;26:2396;27:796', 415096, N'0', 41, 41, CAST(0x0000A6B20117A98B AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'EAFE1A7F-F75E-4CE6-9791-A3681A205F30', 8, N'200小升级版', -110, N'00;01;02;03;04;05;06;07;08;09;10;11;12;13;14', N'00:796;01:2396;02:4794;03:7984;04:11986;05:16770;06:22382;07:28648;08:36026;09:43998;10:50456;11:55222;12:58462;13:60082;14:15096', 415098, N'0', 44, 44, CAST(0x0000A6B0009410D9 AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'F9175AB8-F9D6-4759-AAEB-1062F5D7BCB8', 18, N'200小升级版', 28, N'00;01;02;03;04;05;06;07;08;09;10;11;12;13;14', N'00:796;01:2396;02:4794;03:7984;04:11986;05:16770;06:22382;07:28648;08:36026;09:43998;10:50456;11:55222;12:58462;13:60082;14:15096', 415098, N'0', 44, 44, CAST(0x0000A6B000B3AE2A AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'41A32959-6880-4C54-904B-0FBCBCC8CE6C', 30, N'200小升级版', 31, N'00;01;02;03;04;05;06;07;08;09;10;11;12;13;14', N'00:796;01:2396;02:4794;03:7984;04:11986;05:16770;06:22382;07:28648;08:36026;09:43998;10:50456;11:55222;12:58462;13:60082;14:15096', 415098, N'0', 44, 44, CAST(0x0000A6B0011A7F92 AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'459738F6-6F65-45A7-B7B6-5CE321D58DC6', 42, N'200小升级版', 32, N'00;01;02;03;04;05;06;07;08;09;10;11;12;13;14', N'00:796;01:2396;02:4794;03:7984;04:11986;05:16770;06:22382;07:28648;08:36026;09:43998;10:50456;11:55222;12:58462;13:60082;14:15096', 415098, N'0', 44, 44, CAST(0x0000A6B20117A98B AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'73F3F781-B880-4926-B88B-39B96C99D754', 1, N'200专家版', -110, N'00;02;04;06;08;10;12;13;14;15;17;19;21;23;25;27', N'00:799;02:4796;04:11989;06:22383;08:36025;10:50455;12:58462;13:15058;14:15093;15:58462;17:50455;19:36025;21:22414;23:11989;25:4796;27:799', 400000, N'0', 36, 36, CAST(0x0000A6B0009410D5 AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'DB97205B-6730-46CC-9619-9430CB226314', 19, N'200专家版', 28, N'00;02;04;06;08;10;12;13;14;15;17;19;21;23;25;27', N'00:799;02:4796;04:11989;06:22383;08:36025;10:50455;12:58462;13:15058;14:15093;15:58462;17:50455;19:36025;21:22414;23:11989;25:4796;27:799', 400000, N'0', 36, 36, CAST(0x0000A6B000B3AE2A AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'E0921BF6-4FB8-4BA7-BD81-8148430EE0FC', 31, N'200专家版', 31, N'00;02;04;06;08;10;12;13;14;15;17;19;21;23;25;27', N'00:799;02:4796;04:11989;06:22383;08:36025;10:50455;12:58462;13:15058;14:15093;15:58462;17:50455;19:36025;21:22414;23:11989;25:4796;27:799', 400000, N'0', 36, 36, CAST(0x0000A6B0011A7F92 AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'C54FA61B-2DC2-456A-B548-FBB070FEED3E', 43, N'200专家版', 32, N'00;02;04;06;08;10;12;13;14;15;17;19;21;23;25;27', N'00:799;02:4796;04:11989;06:22383;08:36025;10:50455;12:58462;13:15058;14:15093;15:58462;17:50455;19:36025;21:22414;23:11989;25:4796;27:799', 400000, N'0', 36, 36, CAST(0x0000A6B20117A98B AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'2850D1B2-7850-4D8F-B55C-B6804B7EDA21', 6, N'300大极端版', -110, N'13;14;15;16;17;18;19;20;21;22;23;24;25;26;27', N'13:22644;14:90123;15:87693;16:82833;17:75684;18:65997;19:54039;20:42969;21:33573;22:25155;23:17979;24:11976;25:7191;26:3594;27:1194', 622644, N'0', 42, 42, CAST(0x0000A6B0009410D9 AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'3B7B2D64-59DD-406D-8514-7FFEA63DB91F', 20, N'300大极端版', 28, N'13;14;15;16;17;18;19;20;21;22;23;24;25;26;27', N'13:22644;14:90123;15:87693;16:82833;17:75684;18:65997;19:54039;20:42969;21:33573;22:25155;23:17979;24:11976;25:7191;26:3594;27:1194', 622644, N'0', 42, 42, CAST(0x0000A6B000B3AE2A AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'F9250394-3853-4F38-AB50-571C076962C9', 32, N'300大极端版', 31, N'13;14;15;16;17;18;19;20;21;22;23;24;25;26;27', N'13:22644;14:90123;15:87693;16:82833;17:75684;18:65997;19:54039;20:42969;21:33573;22:25155;23:17979;24:11976;25:7191;26:3594;27:1194', 622644, N'0', 42, 42, CAST(0x0000A6B0011A7F92 AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'B2264582-82CE-4721-9F3A-01A8931CA1F8', 44, N'300大极端版', 32, N'13;14;15;16;17;18;19;20;21;22;23;24;25;26;27', N'13:22644;14:90123;15:87693;16:82833;17:75684;18:65997;19:54039;20:42969;21:33573;22:25155;23:17979;24:11976;25:7191;26:3594;27:1194', 622644, N'0', 42, 42, CAST(0x0000A6B20117A98B AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'E0CB2642-D0F5-49DF-952B-1D740F311D61', 9, N'300小升级版', -110, N'00;01;02;03;04;05;06;07;08;09;10;11;12;13;14', N'00:1194;01:3594;02:7191;03:11976;04:17979;05:25155;06:33573;07:42972;08:54039;09:65997;10:75684;11:82833;12:87693;13:90123;14:22644', 622647, N'0', 45, 45, CAST(0x0000A6B0009410DE AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'286E6E85-87CC-418D-8DDC-6E9B4B3F50D8', 21, N'300小升级版', 28, N'00;01;02;03;04;05;06;07;08;09;10;11;12;13;14', N'00:1194;01:3594;02:7191;03:11976;04:17979;05:25155;06:33573;07:42972;08:54039;09:65997;10:75684;11:82833;12:87693;13:90123;14:22644', 622647, N'0', 45, 45, CAST(0x0000A6B000B3AE2A AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'A3594333-0F43-4017-8CC8-6083A723E522', 33, N'300小升级版', 31, N'00;01;02;03;04;05;06;07;08;09;10;11;12;13;14', N'00:1194;01:3594;02:7191;03:11976;04:17979;05:25155;06:33573;07:42972;08:54039;09:65997;10:75684;11:82833;12:87693;13:90123;14:22644', 622647, N'0', 45, 45, CAST(0x0000A6B0011A7F92 AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'5E709A7F-6D5A-4FF4-B431-B38FBB8ACAD8', 45, N'300小升级版', 32, N'00;01;02;03;04;05;06;07;08;09;10;11;12;13;14', N'00:1194;01:3594;02:7191;03:11976;04:17979;05:25155;06:33573;07:42972;08:54039;09:65997;10:75684;11:82833;12:87693;13:90123;14:22644', 622647, N'0', 45, 45, CAST(0x0000A6B20117A98B AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'3C13BC40-48B5-4100-832A-9E9E695C3DB2', 2, N'300专家版', -110, N'00;02;04;06;08;10;12;13;14;15;17;19;21;23;25;27', N'00:1199;02:7191;04:17983;06:33575;08:54038;10:75683;12:87692;13:22587;14:22640;15:87692;17:75683;19:54038;21:33624;23:17984;25:7192;27:1199', 600000, N'0', 37, 37, CAST(0x0000A6B0009410D5 AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'8AA6C7AE-EB98-4F24-8B88-C68DA1E32692', 22, N'300专家版', 28, N'00;02;04;06;08;10;12;13;14;15;17;19;21;23;25;27', N'00:1199;02:7191;04:17983;06:33575;08:54038;10:75683;12:87692;13:22587;14:22640;15:87692;17:75683;19:54038;21:33624;23:17984;25:7192;27:1199', 600000, N'0', 37, 37, CAST(0x0000A6B000B3AE2A AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'02C8899E-791F-4FD6-BE48-C57404C0DB5E', 34, N'300专家版', 31, N'00;02;04;06;08;10;12;13;14;15;17;19;21;23;25;27', N'00:1199;02:7191;04:17983;06:33575;08:54038;10:75683;12:87692;13:22587;14:22640;15:87692;17:75683;19:54038;21:33624;23:17984;25:7192;27:1199', 600000, N'0', 37, 37, CAST(0x0000A6B0011A7F92 AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'90535DD6-160D-425E-8422-D703425CBC42', 46, N'300专家版', 32, N'00;02;04;06;08;10;12;13;14;15;17;19;21;23;25;27', N'00:1199;02:7191;04:17983;06:33575;08:54038;10:75683;12:87692;13:22587;14:22640;15:87692;17:75683;19:54038;21:33624;23:17984;25:7192;27:1199', 600000, N'0', 37, 37, CAST(0x0000A6B20117A98B AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'69509F4F-0D01-4E69-A03B-F37C4535F256', 3, N'400专家版', -110, N'00;02;04;06;08;10;12;13;14;15;17;19;21;23;25;27', N'00:1599;02:9589;04:23978;06:44766;08:72051;10:100910;12:116923;13:30116;14:30188;15:116923;17:100910;19:72051;21:44831;23:23977;25:9589;27:1599', 800000, N'0', 38, 38, CAST(0x0000A6B0009410D5 AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'9A555790-78E1-439F-B20E-8000795021F1', 23, N'400专家版', 28, N'00;02;04;06;08;10;12;13;14;15;17;19;21;23;25;27', N'00:1599;02:9589;04:23978;06:44766;08:72051;10:100910;12:116923;13:30116;14:30188;15:116923;17:100910;19:72051;21:44831;23:23977;25:9589;27:1599', 800000, N'0', 38, 38, CAST(0x0000A6B000B3AE2A AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'DE977A59-2028-4896-8661-0541E1929640', 35, N'400专家版', 31, N'00;02;04;06;08;10;12;13;14;15;17;19;21;23;25;27', N'00:1599;02:9589;04:23978;06:44766;08:72051;10:100910;12:116923;13:30116;14:30188;15:116923;17:100910;19:72051;21:44831;23:23977;25:9589;27:1599', 800000, N'0', 38, 38, CAST(0x0000A6B0011A7F92 AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'B7957671-C28A-458E-A5C6-0B3B031564DF', 47, N'400专家版', 32, N'00;02;04;06;08;10;12;13;14;15;17;19;21;23;25;27', N'00:1599;02:9589;04:23978;06:44766;08:72051;10:100910;12:116923;13:30116;14:30188;15:116923;17:100910;19:72051;21:44831;23:23977;25:9589;27:1599', 800000, N'0', 38, 38, CAST(0x0000A6B20117A98B AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'796AAF5B-0AAF-4160-AC90-2779E7240677', 4, N'500专家版', -110, N'00;02;04;06;08;10;12;13;14;15;17;19;21;23;25;27', N'00:1998;02:11986;04:29969;06:55955;08:90065;10:126139;12:146155;13:37646;14:37739;15:146155;17:126139;19:90064;21:56036;23:29970;25:11986;27:1998', 1000000, N'0', 39, 39, CAST(0x0000A6B0009410D9 AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'C3696216-A118-4722-A434-C685FCD7A155', 24, N'500专家版', 28, N'00;02;04;06;08;10;12;13;14;15;17;19;21;23;25;27', N'00:1998;02:11986;04:29969;06:55955;08:90065;10:126139;12:146155;13:37646;14:37739;15:146155;17:126139;19:90064;21:56036;23:29970;25:11986;27:1998', 1000000, N'0', 39, 39, CAST(0x0000A6B000B3AE2A AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'33D17E0D-2821-4BB9-B203-EDC31271A665', 36, N'500专家版', 31, N'00;02;04;06;08;10;12;13;14;15;17;19;21;23;25;27', N'00:1998;02:11986;04:29969;06:55955;08:90065;10:126139;12:146155;13:37646;14:37739;15:146155;17:126139;19:90064;21:56036;23:29970;25:11986;27:1998', 1000000, N'0', 39, 39, CAST(0x0000A6B0011A7F92 AS DateTime), 14)
INSERT [dbo].[CusBettMode] ([ObjId], [ObjName], [Objjc], [CusUserId], [BettMdNum], [BettInfo], [BettEggs], [CheckBettType], [SetWinType], [SetLossType], [CreateTime], [CreateUser]) VALUES (N'1536E29B-F13C-4A6B-B9EA-FDD446EB8880', 48, N'500专家版', 32, N'00;02;04;06;08;10;12;13;14;15;17;19;21;23;25;27', N'00:1998;02:11986;04:29969;06:55955;08:90065;10:126139;12:146155;13:37646;14:37739;15:146155;17:126139;19:90064;21:56036;23:29970;25:11986;27:1998', 1000000, N'0', 39, 39, CAST(0x0000A6B20117A98B AS DateTime), 14)
SET IDENTITY_INSERT [dbo].[CusBettMode] OFF
/****** Object:  Table [dbo].[CusBettingInfo]    Script Date: 11/03/2016 14:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CusBettingInfo](
	[ObjId] [varchar](50) NOT NULL,
	[ObjName] [int] IDENTITY(1,1) NOT NULL,
	[FCNum] [varchar](20) NOT NULL,
	[CusUserID] [varchar](10) NOT NULL,
	[CusBettInfo] [varchar](max) NULL,
	[BettNumber] [varchar](100) NULL,
	[BettTotalEggs] [int] NULL,
	[CheckBettType] [varchar](10) NULL,
	[LuckyNumber] [varchar](5) NULL,
	[LuckyTotalEggs] [int] NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_CusBettingInfo_1] PRIMARY KEY CLUSTERED 
(
	[FCNum] ASC,
	[CusUserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'用户投注的信息 号码：金蛋数量' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'CusBettingInfo', @level2type=N'COLUMN',@level2name=N'CusBettInfo'
GO
SET IDENTITY_INSERT [dbo].[CusBettingInfo] ON
INSERT [dbo].[CusBettingInfo] ([ObjId], [ObjName], [FCNum], [CusUserID], [CusBettInfo], [BettNumber], [BettTotalEggs], [CheckBettType], [LuckyNumber], [LuckyTotalEggs], [CreateTime]) VALUES (N'B4D8A448-271A-4B94-91A4-FA5951E1E8D0', 1, N'789499', N'26', N'01:3;03:10;05:21;07:36;09:55;11:69;13:75;27:1;25:6;23:15;21:28;19:45;17:63;15:73', N'01;03;05;07;09;11;13;27;25;23;21;19;17;15', 500, N'1', N'19', 45, CAST(0x0000A6B0009EA649 AS DateTime))
INSERT [dbo].[CusBettingInfo] ([ObjId], [ObjName], [FCNum], [CusUserID], [CusBettInfo], [BettNumber], [BettTotalEggs], [CheckBettType], [LuckyNumber], [LuckyTotalEggs], [CreateTime]) VALUES (N'C703D7A1-EDC9-4006-BB19-6C7976B2CE75', 2, N'789500', N'26', N'01:3;03:10;05:21;07:36;09:55;11:69;13:75;27:1;25:6;23:15;21:28;19:45;17:63;15:73', N'01;03;05;07;09;11;13;27;25;23;21;19;17;15', 500, N'1', NULL, NULL, CAST(0x0000A6B0009EC0D9 AS DateTime))
INSERT [dbo].[CusBettingInfo] ([ObjId], [ObjName], [FCNum], [CusUserID], [CusBettInfo], [BettNumber], [BettTotalEggs], [CheckBettType], [LuckyNumber], [LuckyTotalEggs], [CreateTime]) VALUES (N'4CDC1099-6A32-4A38-A50C-98488F692C92', 3, N'789501', N'26', N'00:1;01:3;02:6;03:10;04:15;05:21;06:28;07:36;08:45;09:55;10:63;11:69;12:73;13:75;27:1;26:3;25:6;24:10;23:15;22:21;21:28;20:36;19:45;18:55;17:63;16:69;15:73;14:75', N'00;01;02;03;04;05;06;07;08;09;10;11;12;13;27;26;25;24;23;22;21;20;19;18;17;16;15;14', 1000, N'0', N'18', 55, CAST(0x0000A6B0009EE110 AS DateTime))
INSERT [dbo].[CusBettingInfo] ([ObjId], [ObjName], [FCNum], [CusUserID], [CusBettInfo], [BettNumber], [BettTotalEggs], [CheckBettType], [LuckyNumber], [LuckyTotalEggs], [CreateTime]) VALUES (N'A5B4A950-9339-4D85-A186-3B7D784DECDA', 4, N'789502', N'26', N'02:6;05:21;08:45;11:69;26:3;23:15;20:36;17:63;14:75', N'02;05;08;11;26;23;20;17;14', 333, N'0', NULL, NULL, CAST(0x0000A6B0009EFCBE AS DateTime))
INSERT [dbo].[CusBettingInfo] ([ObjId], [ObjName], [FCNum], [CusUserID], [CusBettInfo], [BettNumber], [BettTotalEggs], [CheckBettType], [LuckyNumber], [LuckyTotalEggs], [CreateTime]) VALUES (N'55D96AAA-6285-4368-9657-A85C3EC7256C', 6, N'789583', N'26', N'00:1;01:3;02:6;03:10;04:15;05:21;06:28;07:36;08:45;09:55;10:63;11:69;12:73;13:75', N'00;01;02;03;04;05;06;07;08;09;10;11;12;13', 500, N'1', N'13', 700, CAST(0x0000A6B00112491D AS DateTime))
INSERT [dbo].[CusBettingInfo] ([ObjId], [ObjName], [FCNum], [CusUserID], [CusBettInfo], [BettNumber], [BettTotalEggs], [CheckBettType], [LuckyNumber], [LuckyTotalEggs], [CreateTime]) VALUES (N'99C15E50-5967-4B88-89D5-1AC72383F583', 5, N'789583', N'29', N'01:3;03:10;05:21;07:36;09:55;11:69;13:75;27:1;25:6;23:15;21:28;19:45;17:63;15:73', N'01;03;05;07;09;11;13;27;25;23;21;19;17;15', 500, N'1', N'13', 7500, CAST(0x0000A6B001121339 AS DateTime))
INSERT [dbo].[CusBettingInfo] ([ObjId], [ObjName], [FCNum], [CusUserID], [CusBettInfo], [BettNumber], [BettTotalEggs], [CheckBettType], [LuckyNumber], [LuckyTotalEggs], [CreateTime]) VALUES (N'CBEC8A0B-3A88-4D23-87F4-07A49A6174AC', 7, N'789584', N'29', N'01:3;03:10;05:21;07:36;09:55;11:69;13:75;27:1;25:6;23:15;21:28;19:45;17:63;15:73', N'01;03;05;07;09;11;13;27;25;23;21;19;17;15', 500, N'1', N'17', 630, CAST(0x0000A6B00113E273 AS DateTime))
INSERT [dbo].[CusBettingInfo] ([ObjId], [ObjName], [FCNum], [CusUserID], [CusBettInfo], [BettNumber], [BettTotalEggs], [CheckBettType], [LuckyNumber], [LuckyTotalEggs], [CreateTime]) VALUES (N'136DBC7B-5D74-4638-A4C5-EDD4E79A9938', 8, N'789585', N'29', N'10:63;11:69;12:73;13:75;17:63;16:69;15:73;14:75', N'10;11;12;13;17;16;15;14', 560, N'0', N'13', 7500, CAST(0x0000A6B001143F0B AS DateTime))
INSERT [dbo].[CusBettingInfo] ([ObjId], [ObjName], [FCNum], [CusUserID], [CusBettInfo], [BettNumber], [BettTotalEggs], [CheckBettType], [LuckyNumber], [LuckyTotalEggs], [CreateTime]) VALUES (N'21978D71-B592-4321-B198-A8BB9E97F2F9', 9, N'789586', N'29', N'01:100;03:100;05:100;07:100;09:100;11:100;13:100;27:100;25:100;23:100;21:100;19:100;17:100;15:100', N'01;03;05;07;09;11;13;27;25;23;21;19;17;15', 1400, N'1', N'17', 1000, CAST(0x0000A6B001157FC6 AS DateTime))
INSERT [dbo].[CusBettingInfo] ([ObjId], [ObjName], [FCNum], [CusUserID], [CusBettInfo], [BettNumber], [BettTotalEggs], [CheckBettType], [LuckyNumber], [LuckyTotalEggs], [CreateTime]) VALUES (N'340165AF-4A3D-41A5-88A6-660FF4251509', 10, N'789588', N'30', N'00:1;01:3;02:6;03:10;04:15;05:21;06:28;07:36;08:45;09:55;10:63;11:69;12:73;13:75;27:1;26:3;25:6;24:10;23:15;22:21;21:28;20:36;19:45;18:55;17:63;16:69;15:73;14:75', N'00;01;02;03;04;05;06;07;08;09;10;11;12;13;27;26;25;24;23;22;21;20;19;18;17;16;15;14', 1000, N'0', N'17', 630, CAST(0x0000A6B001188726 AS DateTime))
INSERT [dbo].[CusBettingInfo] ([ObjId], [ObjName], [FCNum], [CusUserID], [CusBettInfo], [BettNumber], [BettTotalEggs], [CheckBettType], [LuckyNumber], [LuckyTotalEggs], [CreateTime]) VALUES (N'F9AB7970-B333-4E73-B2BA-2721224A29A0', 11, N'789589', N'30', N'10:63;11:69;12:73;13:75;17:63;16:69;15:73;14:75', N'10;11;12;13;17;16;15;14', 560, N'0', N'10', 630, CAST(0x0000A6B00118A109 AS DateTime))
INSERT [dbo].[CusBettingInfo] ([ObjId], [ObjName], [FCNum], [CusUserID], [CusBettInfo], [BettNumber], [BettTotalEggs], [CheckBettType], [LuckyNumber], [LuckyTotalEggs], [CreateTime]) VALUES (N'F77121CC-9DF5-4451-A163-483182FFB500', 12, N'789590', N'30', N'27:20;26:12;25:26;24:44;23:66;22:92;21:126;20:162;19:200;18:246', N'27;26;25;24;23;22;21;20;19;18', 994, N'0', NULL, NULL, CAST(0x0000A6B001191EB9 AS DateTime))
INSERT [dbo].[CusBettingInfo] ([ObjId], [ObjName], [FCNum], [CusUserID], [CusBettInfo], [BettNumber], [BettTotalEggs], [CheckBettType], [LuckyNumber], [LuckyTotalEggs], [CreateTime]) VALUES (N'81402DBA-6A6A-4271-B19C-A04783A92DC8', 13, N'789603', N'26', N'00:1;01:3;02:6;03:10;04:15;05:21;06:28;07:36;08:45;09:55;10:63;11:69;12:73;13:75;27:1;26:3;25:6;24:10;23:15;22:21;21:28;20:36;19:45;18:55;17:63;16:69;15:73;14:75', N'00;01;02;03;04;05;06;07;08;09;10;11;12;13;27;26;25;24;23;22;21;20;19;18;17;16;15;14', 1000, N'0', N'08', 45, CAST(0x0000A6B0012B9BFC AS DateTime))
INSERT [dbo].[CusBettingInfo] ([ObjId], [ObjName], [FCNum], [CusUserID], [CusBettInfo], [BettNumber], [BettTotalEggs], [CheckBettType], [LuckyNumber], [LuckyTotalEggs], [CreateTime]) VALUES (N'CEDEC3C4-9840-46E0-8835-7170996FE6A6', 14, N'789925', N'26', N'01:3;03:10;05:21;07:36;09:55;11:69;13:75;27:1;25:6;23:15;21:28;19:45;17:63;15:73', N'01;03;05;07;09;11;13;27;25;23;21;19;17;15', 500, N'1', NULL, NULL, CAST(0x0000A6B200FC37EE AS DateTime))
SET IDENTITY_INSERT [dbo].[CusBettingInfo] OFF
/****** Object:  Table [dbo].[NumLossPerCent]    Script Date: 11/03/2016 14:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NumLossPerCent](
	[ObjId] [varchar](50) NOT NULL,
	[ObjName] [int] IDENTITY(1,1) NOT NULL,
	[Number] [varchar](5) NOT NULL,
	[LossPerCent] [varchar](10) NOT NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_NumLossPerCent] PRIMARY KEY CLUSTERED 
(
	[Number] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[NumLossPerCent] ON
INSERT [dbo].[NumLossPerCent] ([ObjId], [ObjName], [Number], [LossPerCent], [CreateTime]) VALUES (N'45DE40CB-6FBE-4ACF-B367-AC73FCA8E073', 1, N'0', N'10', CAST(0x0000A63400956ED4 AS DateTime))
INSERT [dbo].[NumLossPerCent] ([ObjId], [ObjName], [Number], [LossPerCent], [CreateTime]) VALUES (N'EA0615A6-CFF5-4EC7-8D2F-1496332CA7F0', 2, N'1', N'10', CAST(0x0000A63400958047 AS DateTime))
INSERT [dbo].[NumLossPerCent] ([ObjId], [ObjName], [Number], [LossPerCent], [CreateTime]) VALUES (N'377D7E85-F7C4-4DFB-B0FC-A37BF7BF9552', 10, N'10', N'10', CAST(0x0000A6B000BA72E9 AS DateTime))
INSERT [dbo].[NumLossPerCent] ([ObjId], [ObjName], [Number], [LossPerCent], [CreateTime]) VALUES (N'E55DFE16-05DD-478F-84A7-30F85A0686BF', 11, N'11', N'10', CAST(0x0000A6B000BA7C3A AS DateTime))
INSERT [dbo].[NumLossPerCent] ([ObjId], [ObjName], [Number], [LossPerCent], [CreateTime]) VALUES (N'9A19A219-D58D-4F8A-B537-E76C7E98C5A5', 12, N'12', N'10', CAST(0x0000A6B000BA828B AS DateTime))
INSERT [dbo].[NumLossPerCent] ([ObjId], [ObjName], [Number], [LossPerCent], [CreateTime]) VALUES (N'DB58246B-DB6F-4772-A3FD-73CDC9B2A0D2', 13, N'13', N'100', CAST(0x0000A6B000BA88A4 AS DateTime))
INSERT [dbo].[NumLossPerCent] ([ObjId], [ObjName], [Number], [LossPerCent], [CreateTime]) VALUES (N'FA201B42-4AAC-4136-B94D-55D57CBA1EB4', 14, N'14', N'10', CAST(0x0000A6B000BA8E43 AS DateTime))
INSERT [dbo].[NumLossPerCent] ([ObjId], [ObjName], [Number], [LossPerCent], [CreateTime]) VALUES (N'3895ACDE-2000-4F73-88B9-747406C41261', 15, N'15', N'10', CAST(0x0000A6B000BAA26B AS DateTime))
INSERT [dbo].[NumLossPerCent] ([ObjId], [ObjName], [Number], [LossPerCent], [CreateTime]) VALUES (N'FFEA693A-1646-4AB2-B79D-B13F35A3D79B', 16, N'16', N'10', CAST(0x0000A6B000BAA863 AS DateTime))
INSERT [dbo].[NumLossPerCent] ([ObjId], [ObjName], [Number], [LossPerCent], [CreateTime]) VALUES (N'0DD1A2A2-2005-4652-AB3B-BEAD8FA12DCD', 17, N'17', N'10', CAST(0x0000A6B000BAB027 AS DateTime))
INSERT [dbo].[NumLossPerCent] ([ObjId], [ObjName], [Number], [LossPerCent], [CreateTime]) VALUES (N'E43E4CF2-402F-4716-BA1C-2D47C0C4248C', 18, N'18', N'100', CAST(0x0000A6B000BAB6E8 AS DateTime))
INSERT [dbo].[NumLossPerCent] ([ObjId], [ObjName], [Number], [LossPerCent], [CreateTime]) VALUES (N'FA278A6C-0B63-4E3F-8770-10D89689F18A', 19, N'19', N'10', CAST(0x0000A6B000BAC0FA AS DateTime))
INSERT [dbo].[NumLossPerCent] ([ObjId], [ObjName], [Number], [LossPerCent], [CreateTime]) VALUES (N'AAABBF4D-43FC-4D44-93B8-5A1DBDA813E6', 3, N'2', N'10', CAST(0x0000A63400958471 AS DateTime))
INSERT [dbo].[NumLossPerCent] ([ObjId], [ObjName], [Number], [LossPerCent], [CreateTime]) VALUES (N'E87DACE1-700C-4FD1-9F4E-FB235B4040CE', 20, N'20', N'10', CAST(0x0000A6B000BAC55A AS DateTime))
INSERT [dbo].[NumLossPerCent] ([ObjId], [ObjName], [Number], [LossPerCent], [CreateTime]) VALUES (N'9D3DC603-63DD-4016-AF29-715252BB4DA5', 21, N'21', N'10', CAST(0x0000A6B000BACE1B AS DateTime))
INSERT [dbo].[NumLossPerCent] ([ObjId], [ObjName], [Number], [LossPerCent], [CreateTime]) VALUES (N'B31DE88A-2B3D-4B52-8AC5-96B3974BE790', 22, N'22', N'10', CAST(0x0000A6B000BAD214 AS DateTime))
INSERT [dbo].[NumLossPerCent] ([ObjId], [ObjName], [Number], [LossPerCent], [CreateTime]) VALUES (N'B5B5B4B4-4BBB-4BEB-9819-02844605E971', 23, N'23', N'10', CAST(0x0000A6B000BADA1D AS DateTime))
INSERT [dbo].[NumLossPerCent] ([ObjId], [ObjName], [Number], [LossPerCent], [CreateTime]) VALUES (N'C8004510-8DCA-408E-85D8-6798CEDE852A', 24, N'24', N'10', CAST(0x0000A6B000BAE612 AS DateTime))
INSERT [dbo].[NumLossPerCent] ([ObjId], [ObjName], [Number], [LossPerCent], [CreateTime]) VALUES (N'175F343A-EEAC-4ED7-A4AA-AC3B9A7C3F89', 25, N'25', N'10', CAST(0x0000A6B000BB1A2D AS DateTime))
INSERT [dbo].[NumLossPerCent] ([ObjId], [ObjName], [Number], [LossPerCent], [CreateTime]) VALUES (N'380CF602-FEB6-4014-B357-AE9994724C86', 26, N'26', N'10', CAST(0x0000A6B000BB2E27 AS DateTime))
INSERT [dbo].[NumLossPerCent] ([ObjId], [ObjName], [Number], [LossPerCent], [CreateTime]) VALUES (N'7AFF8188-CA47-4D87-A09A-F2E5E2E02D0D', 27, N'27', N'10', CAST(0x0000A6B000BB3EAA AS DateTime))
INSERT [dbo].[NumLossPerCent] ([ObjId], [ObjName], [Number], [LossPerCent], [CreateTime]) VALUES (N'C9102902-963B-4A64-AE21-BD76BC1F2113', 4, N'3', N'10', CAST(0x0000A63400958985 AS DateTime))
INSERT [dbo].[NumLossPerCent] ([ObjId], [ObjName], [Number], [LossPerCent], [CreateTime]) VALUES (N'A30BC5B6-5F0D-49F7-AEAF-4637A78C4297', 5, N'5', N'10', CAST(0x0000A63400958E23 AS DateTime))
INSERT [dbo].[NumLossPerCent] ([ObjId], [ObjName], [Number], [LossPerCent], [CreateTime]) VALUES (N'62985E3B-7BDD-4B86-BDEA-A6F4269A98EE', 6, N'6', N'10', CAST(0x0000A6B000B91107 AS DateTime))
INSERT [dbo].[NumLossPerCent] ([ObjId], [ObjName], [Number], [LossPerCent], [CreateTime]) VALUES (N'3AD743E8-0843-41EC-9554-199A7EA7ACD9', 7, N'7', N'10', CAST(0x0000A6B000BA5A52 AS DateTime))
INSERT [dbo].[NumLossPerCent] ([ObjId], [ObjName], [Number], [LossPerCent], [CreateTime]) VALUES (N'7A8F5DA0-5B79-4BE9-B4F2-2AB9502D901F', 8, N'8', N'10', CAST(0x0000A6B000BA64D9 AS DateTime))
INSERT [dbo].[NumLossPerCent] ([ObjId], [ObjName], [Number], [LossPerCent], [CreateTime]) VALUES (N'EA190A1E-DCEF-40BD-A858-0E229672812B', 9, N'9', N'10', CAST(0x0000A6B000BA6ABE AS DateTime))
SET IDENTITY_INSERT [dbo].[NumLossPerCent] OFF
/****** Object:  Table [dbo].[UserRecommendInfo]    Script Date: 11/03/2016 14:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserRecommendInfo](
	[ObjId] [varchar](50) NOT NULL,
	[ObjName] [int] IDENTITY(1,1) NOT NULL,
	[CusUserID] [int] NULL,
	[RecommendedUserID] [int] NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_UserRecommendInfo] PRIMARY KEY CLUSTERED 
(
	[ObjName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_WithDrawInfo]    Script Date: 11/03/2016 14:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_WithDrawInfo](
	[ObjId] [varchar](50) NOT NULL,
	[ObjName] [int] IDENTITY(1,1) NOT NULL,
	[CusUserID] [int] NOT NULL,
	[UserRealName] [varchar](20) NULL,
	[UsWithDrawAccount] [varchar](50) NULL,
	[DrawMoney] [money] NULL,
	[DrawType] [varchar](2) NULL,
	[Title] [varchar](200) NOT NULL,
	[Content] [varchar](500) NOT NULL,
	[IsRead] [bit] NOT NULL,
	[DrawStatus] [varchar](10) NOT NULL,
	[DrawErrorMsg] [varchar](500) NULL,
	[CreateTime] [datetime] NOT NULL,
	[UpdateUser] [varchar](20) NULL,
	[UpdateTime] [datetime] NULL,
 CONSTRAINT [PK_Sys_ReflectInfo] PRIMARY KEY CLUSTERED 
(
	[ObjName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sys_UserInfo]    Script Date: 11/03/2016 14:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_UserInfo](
	[ObjId] [varchar](50) NOT NULL,
	[ObjName] [int] IDENTITY(1,1) NOT NULL,
	[LgName] [varchar](50) NOT NULL,
	[LgPwd] [varchar](200) NULL,
	[NickName] [varchar](20) NULL,
	[Role] [varchar](20) NULL,
	[UserLastLoginTime] [datetime] NULL,
	[CreateTime] [datetime] NULL,
 CONSTRAINT [PK_Sys_UserInfo] PRIMARY KEY CLUSTERED 
(
	[LgName] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_UserInfo] ON
INSERT [dbo].[Sys_UserInfo] ([ObjId], [ObjName], [LgName], [LgPwd], [NickName], [Role], [UserLastLoginTime], [CreateTime]) VALUES (N'2D875F9A-114B-4365-86CB-67E4E394307F', 1, N'admin', N'Wfx70nb5z4+N2s57WALqkA==', N'管理员', N'管理员', CAST(0x0000A63A00E7B3A0 AS DateTime), CAST(0x0000A62300A2B3AC AS DateTime))
INSERT [dbo].[Sys_UserInfo] ([ObjId], [ObjName], [LgName], [LgPwd], [NickName], [Role], [UserLastLoginTime], [CreateTime]) VALUES (N'F4D56B45-A94F-4442-933A-D0D286F13F04', 2, N'michaux', N'dlPKX6Zs0+pMsXR3M0z2EA==', N'管理员', N'管理员', CAST(0x0000A6B20117423C AS DateTime), CAST(0x0000A6B000B308A0 AS DateTime))
SET IDENTITY_INSERT [dbo].[Sys_UserInfo] OFF
/****** Object:  Table [dbo].[Sys_ActiveInfo]    Script Date: 11/03/2016 14:20:03 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sys_ActiveInfo](
	[ObjId] [varchar](50) NOT NULL,
	[ObjName] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](10) NOT NULL,
	[ActiveTime] [varchar](30) NULL,
	[ActiveUser] [varchar](30) NULL,
	[ActiveDetails] [varchar](max) NULL,
	[CreateTime] [datetime] NULL,
	[UpdateUser] [varchar](50) NULL,
	[UpdateTime] [datetime] NULL,
 CONSTRAINT [PK_Sys_ActiveInfo] PRIMARY KEY CLUSTERED 
(
	[Title] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Sys_ActiveInfo] ON
INSERT [dbo].[Sys_ActiveInfo] ([ObjId], [ObjName], [Title], [ActiveTime], [ActiveUser], [ActiveDetails], [CreateTime], [UpdateUser], [UpdateTime]) VALUES (N'0739FBDF-7BFA-4DAE-BAB9-99E6B8C7966A', 1, N'登陆即送', N'2016-2017', N'平台所有用户', N'余额不足500 赠送1000金币，每日最多赠送3次，最多30元，此金币只能用于游戏不能直接兑换。', CAST(0x0000A62700AA105D AS DateTime), N'michaux', CAST(0x0000A6B000F79492 AS DateTime))
INSERT [dbo].[Sys_ActiveInfo] ([ObjId], [ObjName], [Title], [ActiveTime], [ActiveUser], [ActiveDetails], [CreateTime], [UpdateUser], [UpdateTime]) VALUES (N'874000E7-5670-41E9-83CE-4407E4EA2AB3', 4, N'敬请期待', N'2016-2017', N'平台所有用户', N'一大波奖励即将到来，敬请期待。', CAST(0x0000A62700AAA5A8 AS DateTime), N'admin', CAST(0x0000A62700F09682 AS DateTime))
INSERT [dbo].[Sys_ActiveInfo] ([ObjId], [ObjName], [Title], [ActiveTime], [ActiveUser], [ActiveDetails], [CreateTime], [UpdateUser], [UpdateTime]) VALUES (N'BC7449BC-DF03-4871-BBE0-2A3B036A3AED', 2, N'任务奖励', N'2016-2017', N'平台所有用户', N'组合每次下注5000分以上连续3次中奖奖励100元。', CAST(0x0000A62700AA1FCD AS DateTime), N'admin', CAST(0x0000A62D00EC4588 AS DateTime))
INSERT [dbo].[Sys_ActiveInfo] ([ObjId], [ObjName], [Title], [ActiveTime], [ActiveUser], [ActiveDetails], [CreateTime], [UpdateUser], [UpdateTime]) VALUES (N'7326F02D-7B5A-442F-9EFF-B02B7BA1FC4B', 3, N'首充即送', N'2016-2017', N'平台所有用户', N'首冲送30%最多送9999元
 1. 会员注册成功后，进行首次存款100元或者以上，即有资格参与享有25％的首存优惠彩金，最高可达9999元。
 2. 成功首次存款后， 未进行任何投注的情况下发送邮件至指定活动邮箱： 995482499@qq.com 进行申请，内容如下：
           申请格式如下：
           标题：申请首存彩金
           内容：会员账号，存款金额，手机号码
           入款方式：公司入款/线上支付
           注：成功发送邮件申请后，请保持手机畅通，优惠专员将于60分钟内审核派发！
3. 流水限制：会员首次存款+存款优惠，必须达到有效投注的15倍方可申请提款。 （例：会员入款1000元，获得红利250元，有效下
   注总额达（1000+250）*15=18750即可申请提款）
   注意事项. 每位会员仅可获得一次首存优惠彩金；首存彩金投注不限制游戏类型。会员注册资料必须真实有效，注册后无法修
   改；若因资料不实造成无法出款，公司概不承担任何责任；
4. 欲申请此优惠的会员必须在存款后，未进行投注前发送邮件提出申请，获得25%彩金后才能进行投注，投注后提出的申请一律无
   效，本公司概不给予受理。
5. 此活动不能与天天返水活动同时进行；会员须进行第二次充值游戏后才能获得返水彩金！', CAST(0x0000A62700AA7B10 AS DateTime), N'admin', CAST(0x0000A63000FA6A37 AS DateTime))
SET IDENTITY_INSERT [dbo].[Sys_ActiveInfo] OFF
/****** Object:  UserDefinedFunction [dbo].[SplitToTableForBett]    Script Date: 11/03/2016 14:20:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[SplitToTableForBett]
  (
      @SplitString nvarchar(max),
      @Separator nvarchar(10)=''
  )
  RETURNS @SplitStringsTable TABLE
  (
  [id] int identity(1,1),
  [number] nvarchar(10),
  [betteggNum] int
 )
 AS
 BEGIN
     DECLARE @CurrentIndex int;
     DECLARE @NextIndex int;
     DECLARE @ReturnText nvarchar(max);
     SELECT @CurrentIndex=1;
     WHILE(@CurrentIndex<=len(@SplitString))
         BEGIN
             SELECT @NextIndex=charindex(@Separator,@SplitString,@CurrentIndex);
             IF(@NextIndex=0 OR @NextIndex IS NULL)
                 SELECT @NextIndex=len(@SplitString)+1;
                 SELECT @ReturnText=substring(@SplitString,@CurrentIndex,@NextIndex-@CurrentIndex);
                 INSERT INTO @SplitStringsTable([number],[betteggNum]) VALUES(substring(@ReturnText,1,2),substring(@ReturnText,4,len(@ReturnText)-3));
                 SELECT @CurrentIndex=@NextIndex+1;
             END
       
     RETURN;
 END
GO
/****** Object:  UserDefinedFunction [dbo].[SplitToTable]    Script Date: 11/03/2016 14:20:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create FUNCTION [dbo].[SplitToTable]
  (
      @SplitString nvarchar(max),
      @Separator nvarchar(10)=''
  )
  RETURNS @SplitStringsTable TABLE
  (
  [id] int identity(1,1),
  [value] nvarchar(max)
 )
 AS
 BEGIN
     DECLARE @CurrentIndex int;
     DECLARE @NextIndex int;
     DECLARE @ReturnText nvarchar(max);
     SELECT @CurrentIndex=1;
     WHILE(@CurrentIndex<=len(@SplitString))
         BEGIN
             SELECT @NextIndex=charindex(@Separator,@SplitString,@CurrentIndex);
             IF(@NextIndex=0 OR @NextIndex IS NULL)
                 SELECT @NextIndex=len(@SplitString)+1;
                 SELECT @ReturnText=substring(@SplitString,@CurrentIndex,@NextIndex-@CurrentIndex);
                 INSERT INTO @SplitStringsTable([value]) VALUES(@ReturnText);
                 SELECT @CurrentIndex=@NextIndex+1;
             END
       
     RETURN;
 END
GO
/****** Object:  StoredProcedure [dbo].[RecommendedUserAwardJF]    Script Date: 11/03/2016 14:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[RecommendedUserAwardJF]
AS
BEGIN

begin try
begin tran t1


if object_id('tempdb..#tempuser') is not null
drop table #tempuser
if object_id('tempdb..#tempdata') is not null
drop table #tempdata

declare @errors int=0

select a.CusUserID,a.RecommendUserID,a.Num 
into #tempuser
from (
select a.CusUserID,a.RecommendUserID,count(1)Num  
from CusRecommandInfo a
join CusUserInfo c on a.CusUserID=c.ObjName and c.UserStatus='正常'
join (
select * from (
select a.RecommendUserID,count(b.FCNum) fcnum from CusRecommandInfo a 
join  CusBettingInfo b on a.RecommendUserID=b.CusUserID 
group by a.RecommendUserID ) a where a.fcnum>=20
) e on a.RecommendUserID=e.RecommendUserID  
join CusUserInfo d on e.RecommendUserID=d.ObjName and d.UserStatus='正常'
group by a.CusUserID,a.RecommendUserID) a
left join UserRecommendInfo b on a.CusUserID=b.CusUserID and a.RecommendUserID =b.RecommendedUserID
where  b.ObjId is null

select CusUserID,COUNT(RecommendUserID) Num
into #tempdata 
from #tempuser a group by CusUserID


if(select COUNT(1) from #tempdata)=0
begin
select '没有需要发放奖励的用户'
commit tran t1
return 
end

--发放用户推广奖励 
update a set a.UsGoldNum=isnull(a.UsGoldNum,0)+b.Num*10*100,a.RecommendAwardGoldTime=convert(varchar(25),getdate(),120) 
from CusUserEstate a 
join  #tempdata b on a.CusUserID=b.CusUserID

set @errors=@errors+@@error

----记录日志
--insert into CusUserEstateOperate(CusUserID, Type, Content, UsIntegral)
--select CusUserID,'收入','您推荐的好友,共有【'+Num+'】位参与游戏次数达到【20】次,特此奖励积分【'+cast(Num*10*100 as varchar(20))+'】',Num*10*100 
--from #tempdata 

--set @errors=@errors+@@error

--写入已经奖励过的记录
insert into UserRecommendInfo(CusUserID, RecommendedUserID)
select  CusUserID,RecommendUserID from #tempuser

set @errors=@errors+@@error

--update a set a.UsGoldNum=isnull(a.UsGoldNum,0)+b.Num*10*100 ,a.RecommendAwardGoldTime=convert(varchar(25),getdate(),120)
--from CusUserEstate a join #tempdata b on a.CusUserID=b.CusUserID
--set @errors=@errors+@@error

--insert into CusUserEstateOperate(CusUserID, Type, Content, UsIntegral)
--select CusUserID,'收入','推广奖励',Num*10*100  from #tempdata
--set @errors=@errors+@@error


if(@errors=0)
begin
select '成功'
commit tran t1
end
else
begin
select '失败'+ERROR_MESSAGE()
rollback tran t1
end

end try
begin catch
rollback tran t1
select ERROR_MESSAGE()
end catch

END
GO
/****** Object:  StoredProcedure [dbo].[AddUserAutoBett]    Script Date: 11/03/2016 14:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddUserAutoBett]
AS
BEGIN

begin try
begin tran t1

declare @errors int=0

--找最新的一期竞猜
declare @fcnum varchar(20)='',@lotttime varchar(30)=''

select @fcnum=FCNum,@lotttime=LotteryTime
from (
select top 1 ObjName, FCNum, LotteryTime, FCStatus from FCBettingInfo where FCStatus=0 and LEFT(LotteryTime,10)=CONVERT(varchar(10),getdate(),120)
) a where DATEDIFF(SECOND,CONVERT(varchar(19),getdate(),120),a.LotteryTime) between 120 and 220

if(@fcnum='' and @lotttime='')
begin
select '没有可投注的竞猜'
commit tran t1
return 
end


if object_id('tempdb..#tempbettuser') is not null
drop table #tempbettuser

--获取所有状态正常，启用自动投注且AutoBettNum>=1的用户
select a.ObjName, a.CusUserID, a.NowSelectModeID, a.NowStartFCNum, a.MaxBettNumber, a.MinGoldNumber, a.AutoBettNum
into #tempbettuser
from CusUserAutoBett a 
join CusUserInfo b on a.CusUserID=b.ObjName 
where b.UserStatus='正常' and a.IsStart=1 and a.AutoBettNum>=1 and a.NowStartFCNum<@fcnum

if(select count(1) from #tempbettuser)=0
begin
select '没有启用自动投注的用户'
commit tran t1
return 
end




--投注期数超过5000删除
if object_id('tempdb..#tempstopuser') is not null
drop table #tempstopuser

select a.CusUserID
into #tempstopuser
from  CusUserAutoBett a 
join #tempbettuser b on a.CusUserID=b.CusUserID 
where (a.AutoBettNum+1)>a.MaxBettNumber 

update a set a.IsStart=0,a.UpdateTime=CONVERT(varchar(25),getdate(),120),a.UpdateUser='admin' 
from CusUserAutoBett a 
where a.CusUserID in (select CusUserID from #tempstopuser)
set @errors=@errors+@@error


delete a from #tempbettuser a
where a.CusUserID in (select CusUserID from #tempstopuser)

if(select count(1) from #tempbettuser)=0
begin
select '没有需要自动投注的用户'
commit tran t1
return 
end

--上期投注输赢,来判断当期采用的投注模式  用户信息存储在此临时表
if object_id('tempdb..#tempwinorloss') is not null
drop table #tempwinorloss


 select b.CusUserID,case b.status when 'loss' then a.SetLossType when 'win' then a.SetWinType end NowBettMdID,
cast('' as varchar(50)) BettMdNum,0 BettEggs,cast('' as varchar(max)) BettInfo,cast('' as varchar(10)) CheckBettType,b.MinGoldNumber
 into #tempwinorloss
 from CusBettMode a 
 join (
 --上期的投注模式
 select b.CusUserID,b.NowSelectModeID,case when (isnull(a.LuckyTotalEggs,'')='' or (a.LuckyTotalEggs<a.BettTotalEggs)) then 'loss' else 'win' end status, b.MinGoldNumber
from CusBettingInfo a 
join #tempbettuser b on a.CusUserID=b.CusUserID and a.FCNum=b.NowStartFCNum
 ) b on a.CusUserId=b.CusUserID and a.ObjName=b.NowSelectModeID
 
 --新的投注信息
 update a  set a.BettMdNum=b.BettMdNum,a.BettEggs=b.BettEggs,
 a.BettInfo=b.BettInfo,a.CheckBettType=b.CheckBettType  
 from #tempwinorloss a 
 join CusBettMode b on a.CusUserID=b.CusUserId and a.NowBettMdID=b.ObjName

--金币不足或金币超过最小限制的记录 删除
if object_id('tempdb..#tempdelgold') is not null
drop table #tempdelgold


select a.CusUserID
into #tempdelgold
from #tempwinorloss a 
join CusUserEstate b on a.CusUserID=b.CusUserID 
where b.UsGoldNum<a.BettEggs or b.UsGoldNum<a.MinGoldNumber


update a set a.IsStart=0,a.UpdateTime=CONVERT(varchar(25),getdate(),120),a.UpdateUser='admin' 
from CusUserAutoBett a 
where a.CusUserID in (select CusUserID from #tempdelgold)
set @errors=@errors+@@error

delete a from #tempwinorloss a where a.CusUserID in (select CusUserID from #tempdelgold)

if(select count(1) from #tempwinorloss)=0
begin
select '没有需要自动投注的用户'
commit tran t1
return 
end

--用户已手动添加
delete b from #tempwinorloss b join CusBettingInfo a on a.CusUserID=b.CusUserID and a.FCNum=@fcnum

if(select COUNT(1) from  #tempwinorloss)=0
begin
select '没有需要自动投注的用户'
commit tran t1
return 
end


--添加投注记录
insert into CusBettingInfo(FCNum, CusUserID, CusBettInfo, BettNumber, BettTotalEggs, CheckBettType)
select @fcnum,CusUserID,BettInfo,BettMdNum,BettEggs,CheckBettType
from #tempwinorloss  
set @errors=@errors+@@error


declare @sumcount int=0,@sumtotalgolds int=0

select @sumcount=COUNT(1),@sumtotalgolds=sum(BettEggs) from #tempwinorloss 

--竞猜信息统计投注人数和投注的金币数
update a set a.BettNum=ISNULL(a.BettNum,0)+isnull(@sumcount,0),a.BettEggNum=ISNULL(a.BettEggNum,0)+isnull(@sumtotalgolds,0)  
from FCBettingInfo a WITH (TABLOCKX)  where a.FCNum=@fcnum
set @errors=@errors+@@error

--扣除金币
update a set a.UsGoldNum=a.UsGoldNum-b.BettEggs  from CusUserEstate a 
join #tempwinorloss b on a.CusUserID=b.CusUserID
set @errors=@errors+@@error

--修改自动投注信息
update a set a.NowSelectModeID=b.NowBettMdID,a.NowStartFCNum=@fcnum,a.AutoBettNum=a.AutoBettNum+1 ,
a.UpdateTime=CONVERT(varchar(20),getdate(),120),a.UpdateUser='admin'
from CusUserAutoBett a 
join #tempwinorloss b on a.CusUserID=b.CusUserID
set @errors=@errors+@@error

if(@errors=0)
begin
select '成功'
commit tran t1
end
else
begin
select '添加失败'+ERROR_MESSAGE()
rollback tran t1
end

end try
begin catch
rollback tran t1
select ERROR_MESSAGE()
end catch

END
GO
/****** Object:  StoredProcedure [dbo].[addautobett]    Script Date: 11/03/2016 14:20:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[addautobett]
(
  @lgname varchar(50),
  @objname varchar(10),
  @fcnum varchar(20),
  @maxbtnum varchar(20),
  @mingoldnum varchar(20),
  @allmd varchar(1000)
)
as
begin

if(@fcnum='' or @allmd='')
begin
select '参数错误'
return
end

declare @userid varchar(10)
select @userid=ObjName from CusUserInfo where LgName=@lgname

if not exists(select 1 from FCBettingInfo a where a.FCNum=@fcnum)
begin
select '4'
return
end

if exists(select 1 from FCBettingInfo a where a.FCNum=@fcnum and a.FCStatus<>'0')
begin
select '1'
return
end

if exists(select 1 from CusUserEstate where CusUserID=@userid and UsGoldNum<@mingoldnum)
begin
select '2'
return
end

if exists(select 1 from CusUserEstate where CusUserID=@userid 
and  UsGoldNum<(select BettEggs from CusBettMode where ObjName=@objname))
begin
select '3'
return
end

begin try
begin tran t1

declare @errors int=0

if exists(select 1 from CusUserAutoBett where CusUserID=@userid)
begin
update a set  a.NowSelectModeID=@objname,a.NowStartFCNum=@fcnum,a.MaxBettNumber=@maxbtnum,a.MinGoldNumber=@mingoldnum,a.IsStart='1',a.AutoBettNum=1
from CusUserAutoBett a where CusUserID=@userid
end
else
begin
insert into CusUserAutoBett(CusUserID, NowSelectModeID, NowStartFCNum, MaxBettNumber, MinGoldNumber,IsStart,AutoBettNum)
values(@userid,@objname,@fcnum,@maxbtnum,@mingoldnum,'1',1)
end

set @errors=@errors+@@error

--修改投注方式
if object_id('tempdb..#tempbett') is not null
drop table #tempbett

declare @index int=1, @count int=0
select * 
into #tempbett
from SplitToTable(@allmd,';')

select @count=count(1) from #tempbett
while(@index<=@count)
begin
declare @item varchar(1000)
select @item=value from #tempbett where id=@index

declare @btmdobj int,@winmdobj int ,@lossmdobj int
select @btmdobj=value from SplitToTable(@item,':') where id=3
select @lossmdobj=value from SplitToTable(@item,':') where id=2
select @winmdobj=value from SplitToTable(@item,':') where id=1


update a set a.SetWinType=@winmdobj,a.SetLossType=@lossmdobj from CusBettMode a where a.ObjName=@btmdobj

set @errors=@errors+@@error
set @index=@index+1;
end

if not exists(select 1 from CusBettingInfo where FCNum=@fcnum and CusUserID=@userid)
begin
--添加用户投注信息
insert into CusBettingInfo(FCNum, CusUserID, CusBettInfo, BettNumber, BettTotalEggs, CheckBettType)
select @fcnum,CusUserId,BettInfo,BettMdNum,BettEggs,CheckBettType from CusBettMode where ObjName=@objname
set @errors=@errors+@@error

--扣除金币
update a set a.UsGoldNum=a.UsGoldNum-(select BettEggs from CusBettMode where ObjName=@objname) from CusUserEstate a 
where a.CusUserID=@userid
set @errors=@errors+@@error

--竞猜信息统计投注人数和投注的金币数
update a set a.BettNum=ISNULL(a.BettNum,0)+1,a.BettEggNum=ISNULL(a.BettEggNum,0)+(select BettEggs from CusBettMode where ObjName=@objname) 
from FCBettingInfo a  where a.FCNum=@fcnum
set @errors=@errors+@@error

end

if(@errors=0)
begin
commit tran t1
select '成功'
end
else
begin
rollback tran t1
select '自动投注失败'
end

end try
begin catch
rollback tran t1
select ERROR_MESSAGE()
end catch

end
GO
/****** Object:  UserDefinedFunction [dbo].[getSumItems]    Script Date: 11/03/2016 14:20:08 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE FUNCTION [dbo].[getSumItems]
(
  @result varchar(1000)
)
RETURNS varchar(1000)
AS
BEGIN
 declare @sumitem varchar(1000)='',@first varchar(30),@second varchar(30),@thread varchar(30)
select @first='0,1,2,3,4,5,6,7,8,9',@second='0,1,2,3,4,5,6,7,8,9',@thread='0,1,2,3,4,5,6,7,8,9'
declare @firindex int=1,@secindex int=1 ,@threadindex int=1
declare @firitem varchar(2)='',@secitem varchar(2)='' ,@threaditem varchar(2)=''

while @firindex<=dbo.Get_StrArrayLength(@first,',')
begin

set @firitem=dbo.Get_StrArrayStrOfIndex(@first,',',@firindex)
while @secindex<=dbo.Get_StrArrayLength(@second,',')
begin
set @secitem=dbo.Get_StrArrayStrOfIndex(@second,',',@secindex)
while @threadindex<=dbo.Get_StrArrayLength(@thread,',')
begin

set @threaditem=dbo.Get_StrArrayStrOfIndex(@thread,',',@threadindex)
if((cast(@firitem as int)+cast(@secitem as int)+cast(@threaditem as int))=cast(@result as int))
begin
set @sumitem+=cast(@firitem as varchar(5))+','+cast(@secitem as varchar(5))+','+cast(@threaditem as varchar(5))+';'
end
set @threadindex=@threadindex+1
end
set @threadindex=1
set @secindex=@secindex+1
end
set @secindex=1
set @firindex=@firindex+1
end

 return @sumitem
END
GO
/****** Object:  StoredProcedure [dbo].[lotterfucairesult]    Script Date: 11/03/2016 14:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[lotterfucairesult]
as
begin
begin try

if object_id('tempdb..#tempresult') is not null
drop table #tempresult

declare @dttimenow varchar(25)='' ,@nwfcnum varchar(20)=''
declare @errorSum int=0 ,@dtdiff int=-1

select top 1 @dttimenow=LotteryTime,@nwfcnum=FCNum from FCBettingInfo where FCStatus=1 order by ObjName  

if(@dttimenow<>'')
begin
set @dtdiff=DATEDIFF(second,convert(varchar(20),getdate(),120),@dttimenow)
end

if(@dttimenow='' or @dtdiff<-40 or @dtdiff>80  )
begin
select '没有需要开奖' 提示
return
end

begin tran t1


select IDENTITY(int,1,1) Id, a.ObjId,a.FCNum, a.CusUserID, a.CusBettInfo, a.BettNumber, a.BettTotalEggs,a.CheckBettType
into #tempresult
from CusBettingInfo a
join CusUserInfo b on a.CusUserID=b.ObjName and b.UserStatus='正常'
 where a.FCNum=@nwfcnum 

if(select count(1) from #tempresult)=0 
begin
declare @minkj varchar(2)=ROUND(((27-0 -1) * RAND() + 1),0)

declare @itemslktkj varchar(1000)=(SELECT dbo.getSumItems(@minkj))

declare @itemsresultkj varchar(10)=(select dbo.Get_StrArrayStrOfIndex(@itemslktkj,';', (ROUND((((select COUNT(1) from SplitToTable(@itemslktkj,';')) -1) * RAND() + 1), 0))))



update a set a.LuckyUsersCount=0,a.FCStatus='2' from FCBettingInfo a where a.FCNum=@nwfcnum
 set @errorSum=@errorSum+@@error

insert into FCLuckyResult(FCNum, FCLuckyNum, FCLuckFly, FCLotteryTime, First, Second, Thread, Result,CreateUser)
select a.FCNum,@minkj,'02',a.LotteryTime,(select value from SplitToTable(@itemsresultkj,',') where id=1),
(select value from SplitToTable(@itemsresultkj,',') where id=2)
,(select value from SplitToTable(@itemsresultkj,',') where id=3),@minkj,'admin' from FCBettingInfo a where a.FCNum=@nwfcnum

select '没有中奖用户' 提示
commit tran t1
return 
end



declare  @allbettnum table(
Id int identity(1,1),
Number varchar(5),
BettUserCount int,
UserID varchar(max),
BettTotalGolds int,
LotteryTotalGolds int
)

declare @index int=0
while(@index<=27)
begin
insert into @allbettnum(Number,BettUserCount,UserID,BettTotalGolds,LotteryTotalGolds)
select case when LEN(@index)=1 then '0'+cast(@index as varchar(5)) else cast(@index as varchar(5)) end,0,'',0,0

set @index=@index+1
end


--计算 
declare @btindex int,@btcount int=0
select  @btindex=1,@btcount=(select COUNT(1) from #tempresult)
while(@btindex<=@btcount)
begin

declare @userid varchar(10),@cusbettinfo varchar(max),
@win int,@chkbttype varchar(5),@BettTotalEggs int,@bettnums varchar(200)
select @userid=CusUserID,@cusbettinfo=CusBettInfo ,
@chkbttype=CheckBettType,@BettTotalEggs=BettTotalEggs,@bettnums=BettNumber
from #tempresult where Id=@btindex

set @cusbettinfo=REPLACE(@cusbettinfo,',','')

declare @peilv varchar(5)
set @peilv=(select LossPerCent from NumLossPerCent where Number=@chkbttype)

if(@chkbttype='0')
begin
update b set b.BettUserCount=isnull(b.BettUserCount,0)+1,
b.UserID=((case ltrim(rtrim(isnull(b.UserID,''))) when '' then '' else ltrim(rtrim(isnull(b.UserID,'')))+',' end)+@userid),
b.BettTotalGolds=isnull(b.BettTotalGolds,0)+a.betteggNum,b.LotteryTotalGolds=
isnull(b.LotteryTotalGolds,0)+a.betteggNum*@peilv  from @allbettnum b 
join dbo.SplitToTableForBett(@cusbettinfo,';') a on b.Number=a.number

--insert into @allbettnum(Number,BettUserCount,UserID,BettTotalGolds,LotteryTotalGolds)
--select a.number,1,@userid,a.betteggNum,a.betteggNum*@peilv 
--from dbo.SplitToTableForBett(@cusbettinfo,';') a
--where  a.number not in(select Number from @allbettnum)

end
else 
begin
update a set  a.BettUserCount=isnull(a.BettUserCount,0)+1,
a.UserID=((case ltrim(rtrim(isnull(a.UserID,''))) when '' then '' else ltrim(rtrim(isnull(a.UserID,'')))+',' end)+@userid),
a.BettTotalGolds=isnull(a.BettTotalGolds,0)+@BettTotalEggs,a.LotteryTotalGolds=
isnull(a.LotteryTotalGolds,0)+@BettTotalEggs*@peilv--,a.NumberBettType=ISNULL(a.NumberBettType,0)+1 
from @allbettnum a
join (select * from SplitToTable(@bettnums,';')) b on a.Number=b.value

--insert into @allbettnum(Number,BettUserCount,UserID,BettTotalGolds,LotteryTotalGolds)
--select value,1,@userid,@BettTotalEggs,@BettTotalEggs*@peilv
--from SplitToTable(@bettnums,';') 
--where value not in (select Number from @allbettnum)
end


set @btindex=@btindex+1
end

delete from @allbettnum where BettUserCount=0

if object_id('tempdb..#tempmilist') is not null
drop table #tempmilist

declare @mincount int
select IDENTITY(int,1,1) Id,Number,BettUserCount,UserID,BettTotalGolds,LotteryTotalGolds
into #tempmilist 
from @allbettnum where LotteryTotalGolds=( select MIN(isnull(LotteryTotalGolds,0)) from @allbettnum)


declare @minnumber varchar(5),@resuserid varchar(max)=''
declare @usercount int=0,@LotteryTTGolds int
if(select COUNT(1) from #tempmilist)=1
begin
select @minnumber=Number,@resuserid=UserID,@usercount=BettUserCount,@LotteryTTGolds=LotteryTotalGolds
 from @allbettnum where LotteryTotalGolds=( select MIN(isnull(LotteryTotalGolds,0)) from @allbettnum)
end
else
begin
select @minnumber=Number,@resuserid=UserID,@usercount=BettUserCount ,@LotteryTTGolds=LotteryTotalGolds
from #tempmilist where Id=(select ROUND((((select COUNT(1) from #tempmilist) -1) * RAND() + 1), 0))
end

if((select COUNT(1) from #tempresult)=1)
begin
set @minnumber=ROUND(((27-0 -1) * RAND() + 1),0)
if(LEN(@minnumber)<2)
set @minnumber='0'+@minnumber

if not exists(select 1 from @allbettnum where Number =@minnumber)
begin
select @resuserid='',@usercount=0
end
else
begin
select @resuserid=UserID,@usercount=BettUserCount,@LotteryTTGolds=LotteryTotalGolds
 from @allbettnum where Number=@minnumber
end
end


if(@minnumber='')
begin
select '获取最小号码失败:'+ERROR_MESSAGE() 提示
commit tran t1
return 
end


declare @itemslkt varchar(1000)=(SELECT dbo.getSumItems(@minnumber))

declare @itemsresult varchar(10)=(select dbo.Get_StrArrayStrOfIndex(@itemslkt,';',(ROUND((((select COUNT(1) from SplitToTable(@itemslkt,';')) -1) * RAND() + 1), 0))))

update a set a.LuckyUsersCount=@usercount,a.FCStatus='2' from FCBettingInfo a where a.FCNum=@nwfcnum
 set @errorSum=@errorSum+@@error

insert into FCLuckyResult(FCNum, FCLuckyNum, FCLuckFly, FCLotteryTime, First, Second, Thread, Result,CreateUser)
select a.FCNum,@minnumber,'02',a.LotteryTime,(select value from SplitToTable(@itemsresult,',') where id=1),
(select value from SplitToTable(@itemsresult,',') where id=2)
,(select value from SplitToTable(@itemsresult,',') where id=3),@minnumber,'admin' from FCBettingInfo a where a.FCNum=@nwfcnum

set @errorSum=@errorSum+@@error
 

if object_id('tempdb..#templkt') is not null
drop table #templkt

select IDENTITY(int,1,1) Id,FCNum,CusUserID,CusBettInfo,BettNumber,BettTotalEggs,CheckBettType
into #templkt
from #tempresult a
join (select value from SplitToTable(@resuserid,',')) b on a.CusUserID =b.value


declare @lktindex int=1,@lktcount int=0
set @lktcount=(select count(1) from #templkt)

while(@lktindex<=@lktcount)
begin

declare @lktuserid varchar(10),@lktcusbettinfo varchar(max),@lktbttype varchar(5),@lktbetttotaleggs int
select @lktuserid=CusUserID,@lktcusbettinfo=CusBettInfo,@lktbttype=CheckBettType ,@lktbetttotaleggs=BettTotalEggs
from #templkt where Id=@lktindex

declare @peilvlkt varchar(5)
set @peilvlkt=(select LossPerCent from NumLossPerCent where Number=@lktbttype)

if(@lktbttype='0')--数字
begin

declare @btnum varchar(20)
select @btnum=value from SplitToTable((
select CusBettInfo from  CusBettingInfo a where a.FCNum=@nwfcnum and a.CusUserID=@lktuserid),';') 
where patindex('%'+@minnumber+'%',value)>0

declare @btgolds int=0
select @btgolds=value from SplitToTable(@btnum,':') where id=2

update a set a.LuckyNumber=@minnumber,a.LuckyTotalEggs=@btgolds*@peilvlkt from  CusBettingInfo a 
where a.FCNum=@nwfcnum and a.CusUserID=@lktuserid
set @errorSum=@errorSum+@@error

update a set a.UsGoldNum=ISNULL(a.UsGoldNum,0)+@btgolds*@peilvlkt
from CusUserEstate a where CusUserID=@lktuserid
set @errorSum=@errorSum+@@error

end
else 
begin

update a set a.LuckyNumber=@minnumber,a.LuckyTotalEggs=a.BettTotalEggs*@peilvlkt 
from  CusBettingInfo a 
where a.FCNum=@nwfcnum and a.CusUserID=@lktuserid
set @errorSum=@errorSum+@@error

update a set a.UsGoldNum=ISNULL(a.UsGoldNum,0)+@lktbetttotaleggs*@peilvlkt  
from CusUserEstate a where a.CusUserID=@lktuserid  

set @errorSum=@errorSum+@@error

end



set @lktindex=@lktindex+1
end

if(@errorSum<>0)
begin
select '处理失败，异常信息:'+ERROR_MESSAGE() 提示
rollback tran t1
end
else
begin
select '成功' 提示
commit tran t1
end


end try
begin catch
rollback tran t1
select ERROR_MESSAGE() 提示
end catch
end
GO
/****** Object:  StoredProcedure [dbo].[AutoSendUserIntegral]    Script Date: 11/03/2016 14:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AutoSendUserIntegral]
AS
BEGIN

begin try
begin tran t1

declare @errors int=0

if object_id('tempdb..#tempdata') is not null
drop table #tempdata
select a.CusUserID,COUNT(a.FCNum) Num,SUM(a.BettTotalEggs) totalgolds 
into #tempdata
from CusBettingInfo a 
join CusUserInfo b on a.CusUserID=b.ObjName and b.LastLuckFCNum<a.FCNum and b.UserStatus='正常'
where ISNULL(a.LuckyTotalEggs,0)>0  group by CusUserID


--清除中奖次数小于10或投注金币小于5000的用户
delete from #tempdata where Num<3 or totalgolds<5000

if(select COUNT(1) from #tempdata)=0
begin
select '没有需要发放奖励的用户'
commit tran t1
return 
end

declare @total varchar(100)='5000'



update a set a.UsGoldNum=isnull(a.UsGoldNum,0)+10000 ,a.RecommendAwardGoldTime=convert(varchar(25),getdate(),120)
 from CusUserEstate a  
 join #tempdata b on a.CusUserID=b.CusUserID --and b.totalgolds >=5000
set @errors=@errors+@@error

------记录积分操作
--insert into CusUserEstateOperate(CusUserID, Type, Content, UsIntegral)
--select CusUserID,'收入','您投注金币达到【5000】并且累计中奖3次，特此奖励积分【10000】！',10000
--from #tempdata --where totalgolds >=5000

--set @errors=@errors+@@error

--修改用户最后中奖期号

update a set a.LastLuckFCNum=MAX(b.FCNum)
  from CusUserInfo a
  join CusBettingInfo b on a.ObjName=b.CusUserID and a.LastLuckFCNum<b.FCNum
  join #tempdata c on a.ObjName=c.CusUserID  --符合条件的用户
  set @errors=@errors+@@error

exec RecommendedUserAwardJF

if(@errors=0)
begin
select '成功'
commit tran t1
end
else
begin
select '失败'+ERROR_MESSAGE()
rollback tran t1
end

end try
begin catch
rollback tran t1
select ERROR_MESSAGE()
end catch

END
GO
/****** Object:  Default [DF_CusBettingInfo_ObjId_1]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[CusBettingInfo] ADD  CONSTRAINT [DF_CusBettingInfo_ObjId_1]  DEFAULT (newid()) FOR [ObjId]
GO
/****** Object:  Default [DF_CusBettingInfo_CreateTime_1]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[CusBettingInfo] ADD  CONSTRAINT [DF_CusBettingInfo_CreateTime_1]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_CusBettMode_ObjId]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[CusBettMode] ADD  CONSTRAINT [DF_CusBettMode_ObjId]  DEFAULT (newid()) FOR [ObjId]
GO
/****** Object:  Default [DF_CusBettMode_CreateTime]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[CusBettMode] ADD  CONSTRAINT [DF_CusBettMode_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_CusReciveMsg_ObjId]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[CusReciveMsg] ADD  CONSTRAINT [DF_CusReciveMsg_ObjId]  DEFAULT (newid()) FOR [ObjId]
GO
/****** Object:  Default [DF_CusReciveMsg_IsRead]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[CusReciveMsg] ADD  CONSTRAINT [DF_CusReciveMsg_IsRead]  DEFAULT ((0)) FOR [IsRead]
GO
/****** Object:  Default [DF_CusReciveMsg_CreateTime]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[CusReciveMsg] ADD  CONSTRAINT [DF_CusReciveMsg_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_CusRecommandInfo_ObjId]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[CusRecommandInfo] ADD  CONSTRAINT [DF_CusRecommandInfo_ObjId]  DEFAULT (newid()) FOR [ObjId]
GO
/****** Object:  Default [DF_CusRecommandInfo_CreateTime]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[CusRecommandInfo] ADD  CONSTRAINT [DF_CusRecommandInfo_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_CusUserAutoBett_ObjId]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[CusUserAutoBett] ADD  CONSTRAINT [DF_CusUserAutoBett_ObjId]  DEFAULT (newid()) FOR [ObjId]
GO
/****** Object:  Default [DF_CusUserAutoBett_CreateTime]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[CusUserAutoBett] ADD  CONSTRAINT [DF_CusUserAutoBett_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_CusUserAccount_ObjId]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[CusUserEstate] ADD  CONSTRAINT [DF_CusUserAccount_ObjId]  DEFAULT (newid()) FOR [ObjId]
GO
/****** Object:  Default [DF_CusUserAccount_UsGoldNum]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[CusUserEstate] ADD  CONSTRAINT [DF_CusUserAccount_UsGoldNum]  DEFAULT ((0)) FOR [UsGoldNum]
GO
/****** Object:  Default [DF_CusUserAccount_UsIntegral]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[CusUserEstate] ADD  CONSTRAINT [DF_CusUserAccount_UsIntegral]  DEFAULT ((0)) FOR [UsIntegral]
GO
/****** Object:  Default [DF_CusUserAccount_CreateTime]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[CusUserEstate] ADD  CONSTRAINT [DF_CusUserAccount_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_CusUserEstateOperate_ObjId]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[CusUserEstateOperate] ADD  CONSTRAINT [DF_CusUserEstateOperate_ObjId]  DEFAULT (newid()) FOR [ObjId]
GO
/****** Object:  Default [DF_CusUserEstateOperate_Type]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[CusUserEstateOperate] ADD  CONSTRAINT [DF_CusUserEstateOperate_Type]  DEFAULT ((0)) FOR [Type]
GO
/****** Object:  Default [DF_CusUserEstateOperate_CreateTime]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[CusUserEstateOperate] ADD  CONSTRAINT [DF_CusUserEstateOperate_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_CusUserInfo_ObjId]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[CusUserInfo] ADD  CONSTRAINT [DF_CusUserInfo_ObjId]  DEFAULT (newid()) FOR [ObjId]
GO
/****** Object:  Default [DF_CusUserInfo_RecommendUserCount]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[CusUserInfo] ADD  CONSTRAINT [DF_CusUserInfo_RecommendUserCount]  DEFAULT ((0)) FOR [RecommendUserCount]
GO
/****** Object:  Default [DF_CusUserInfo_UserStatus]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[CusUserInfo] ADD  CONSTRAINT [DF_CusUserInfo_UserStatus]  DEFAULT ('正常') FOR [UserStatus]
GO
/****** Object:  Default [DF_CusUserInfo_CreateTime]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[CusUserInfo] ADD  CONSTRAINT [DF_CusUserInfo_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF__CusUserIn__Sourc__4D94879B]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[CusUserInfo] ADD  DEFAULT ((0)) FOR [SourceType]
GO
/****** Object:  Default [DF_CusUserRecharge_ObjId]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[CusUserRecharge] ADD  CONSTRAINT [DF_CusUserRecharge_ObjId]  DEFAULT (newid()) FOR [ObjId]
GO
/****** Object:  Default [DF_CusUserRecharge_IsComplete]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[CusUserRecharge] ADD  CONSTRAINT [DF_CusUserRecharge_IsComplete]  DEFAULT ((0)) FOR [IsComplete]
GO
/****** Object:  Default [DF_CusUserRecharge_CreateTime]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[CusUserRecharge] ADD  CONSTRAINT [DF_CusUserRecharge_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_CusBettingInfo_ObjId]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[FCBettingInfo] ADD  CONSTRAINT [DF_CusBettingInfo_ObjId]  DEFAULT (newid()) FOR [ObjId]
GO
/****** Object:  Default [DF_FCBettingInfo_FCStatus]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[FCBettingInfo] ADD  CONSTRAINT [DF_FCBettingInfo_FCStatus]  DEFAULT ((0)) FOR [FCStatus]
GO
/****** Object:  Default [DF_CusBettingInfo_CreateTime]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[FCBettingInfo] ADD  CONSTRAINT [DF_CusBettingInfo_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_FCLuckyResult_ObjId]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[FCLuckyResult] ADD  CONSTRAINT [DF_FCLuckyResult_ObjId]  DEFAULT (newid()) FOR [ObjId]
GO
/****** Object:  Default [DF_FCLuckyResult_CreateTime]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[FCLuckyResult] ADD  CONSTRAINT [DF_FCLuckyResult_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_NumLossPerCent_ObjId]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[NumLossPerCent] ADD  CONSTRAINT [DF_NumLossPerCent_ObjId]  DEFAULT (newid()) FOR [ObjId]
GO
/****** Object:  Default [DF_NumLossPerCent_CreateTime]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[NumLossPerCent] ADD  CONSTRAINT [DF_NumLossPerCent_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_Sys_ActiveInfo_ObjId]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[Sys_ActiveInfo] ADD  CONSTRAINT [DF_Sys_ActiveInfo_ObjId]  DEFAULT (newid()) FOR [ObjId]
GO
/****** Object:  Default [DF_Sys_ActiveInfo_CreateTime]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[Sys_ActiveInfo] ADD  CONSTRAINT [DF_Sys_ActiveInfo_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_Sys_UserInfo_ObjId]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[Sys_UserInfo] ADD  CONSTRAINT [DF_Sys_UserInfo_ObjId]  DEFAULT (newid()) FOR [ObjId]
GO
/****** Object:  Default [DF_Sys_UserInfo_CreateTime]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[Sys_UserInfo] ADD  CONSTRAINT [DF_Sys_UserInfo_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_Sys_ReflectInfo_ObjId]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[Sys_WithDrawInfo] ADD  CONSTRAINT [DF_Sys_ReflectInfo_ObjId]  DEFAULT (newid()) FOR [ObjId]
GO
/****** Object:  Default [DF_Sys_ReflectInfo_IsRead]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[Sys_WithDrawInfo] ADD  CONSTRAINT [DF_Sys_ReflectInfo_IsRead]  DEFAULT ((0)) FOR [IsRead]
GO
/****** Object:  Default [DF_Sys_WithDrawInfo_DrawStatus]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[Sys_WithDrawInfo] ADD  CONSTRAINT [DF_Sys_WithDrawInfo_DrawStatus]  DEFAULT ((0)) FOR [DrawStatus]
GO
/****** Object:  Default [DF_Sys_ReflectInfo_CreateTime]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[Sys_WithDrawInfo] ADD  CONSTRAINT [DF_Sys_ReflectInfo_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_UserRecommendInfo_ObjId]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[UserRecommendInfo] ADD  CONSTRAINT [DF_UserRecommendInfo_ObjId]  DEFAULT (newid()) FOR [ObjId]
GO
/****** Object:  Default [DF_UserRecommendInfo_CreateTime]    Script Date: 11/03/2016 14:20:03 ******/
ALTER TABLE [dbo].[UserRecommendInfo] ADD  CONSTRAINT [DF_UserRecommendInfo_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
