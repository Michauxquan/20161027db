USE [cplottery]
GO
/****** Object:  Table [dbo].[LotteryResult]    Script Date: 12/09/2016 18:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LotteryResult](
	[AutoID] [int] IDENTITY(1,1) NOT NULL,
	[CPCode] [nvarchar](64) NOT NULL,
	[IssueNum] [nvarchar](64) NOT NULL,
	[ResultNum] [nvarchar](64) NULL,
	[Status] [int] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[PizeNum] [int] NOT NULL,
	[UserNum] [int] NOT NULL,
	[SumNum] [int] NOT NULL,
	[OpenTime] [datetime] NOT NULL,
	[Num] [int] NULL,
 CONSTRAINT [PK_LottertResult] PRIMARY KEY CLUSTERED 
(
	[AutoID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'和值' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LotteryResult', @level2type=N'COLUMN',@level2name=N'SumNum'
GO
SET IDENTITY_INSERT [dbo].[LotteryResult] ON
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (1, N'SD11X5', N'2016112901', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DD7 AS DateTime), CAST(0x0000A6CD00926490 AS DateTime), 0, 0, 0, CAST(0x0000A6CD009523B0 AS DateTime), 1)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (2, N'SD11X5', N'2016112902', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DD7 AS DateTime), CAST(0x0000A6CD009523B0 AS DateTime), 0, 0, 0, CAST(0x0000A6CD0097E2D0 AS DateTime), 2)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (3, N'SD11X5', N'2016112903', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DD7 AS DateTime), CAST(0x0000A6CD0097E2D0 AS DateTime), 0, 0, 0, CAST(0x0000A6CD009AA1F0 AS DateTime), 3)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (4, N'SD11X5', N'2016112904', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DD7 AS DateTime), CAST(0x0000A6CD009AA1F0 AS DateTime), 0, 0, 0, CAST(0x0000A6CD009D6110 AS DateTime), 4)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (5, N'SD11X5', N'2016112905', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DD8 AS DateTime), CAST(0x0000A6CD009D6110 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00A02030 AS DateTime), 5)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (6, N'SD11X5', N'2016112906', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DD8 AS DateTime), CAST(0x0000A6CD00A02030 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00A2DF50 AS DateTime), 6)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (7, N'SD11X5', N'2016112907', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DD8 AS DateTime), CAST(0x0000A6CD00A2DF50 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00A59E70 AS DateTime), 7)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (8, N'SD11X5', N'2016112908', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DD8 AS DateTime), CAST(0x0000A6CD00A59E70 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00A85D90 AS DateTime), 8)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (9, N'SD11X5', N'2016112909', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DD9 AS DateTime), CAST(0x0000A6CD00A85D90 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00AB1CB0 AS DateTime), 9)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (10, N'SD11X5', N'2016112910', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DD9 AS DateTime), CAST(0x0000A6CD00AB1CB0 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00ADDBD0 AS DateTime), 10)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (11, N'SD11X5', N'2016112911', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DD9 AS DateTime), CAST(0x0000A6CD00ADDBD0 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00B09AF0 AS DateTime), 11)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (12, N'SD11X5', N'2016112912', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DD9 AS DateTime), CAST(0x0000A6CD00B09AF0 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00B35A10 AS DateTime), 12)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (13, N'SD11X5', N'2016112913', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DD9 AS DateTime), CAST(0x0000A6CD00B35A10 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00B61930 AS DateTime), 13)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (14, N'SD11X5', N'2016112914', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDA AS DateTime), CAST(0x0000A6CD00B61930 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00B8D850 AS DateTime), 14)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (15, N'SD11X5', N'2016112915', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDA AS DateTime), CAST(0x0000A6CD00B8D850 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00BB9770 AS DateTime), 15)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (16, N'SD11X5', N'2016112916', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDA AS DateTime), CAST(0x0000A6CD00BB9770 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00BE5690 AS DateTime), 16)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (17, N'SD11X5', N'2016112917', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDA AS DateTime), CAST(0x0000A6CD00BE5690 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00C115B0 AS DateTime), 17)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (18, N'SD11X5', N'2016112918', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDA AS DateTime), CAST(0x0000A6CD00C115B0 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00C3D4D0 AS DateTime), 18)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (19, N'SD11X5', N'2016112919', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDA AS DateTime), CAST(0x0000A6CD00C3D4D0 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00C693F0 AS DateTime), 19)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (20, N'SD11X5', N'2016112920', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDB AS DateTime), CAST(0x0000A6CD00C693F0 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00C95310 AS DateTime), 20)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (21, N'SD11X5', N'2016112921', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDB AS DateTime), CAST(0x0000A6CD00C95310 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00CC1230 AS DateTime), 21)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (22, N'SD11X5', N'2016112922', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDB AS DateTime), CAST(0x0000A6CD00CC1230 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00CED150 AS DateTime), 22)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (23, N'SD11X5', N'2016112923', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDB AS DateTime), CAST(0x0000A6CD00CED150 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00D19070 AS DateTime), 23)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (24, N'SD11X5', N'2016112924', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDC AS DateTime), CAST(0x0000A6CD00D19070 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00D44F90 AS DateTime), 24)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (25, N'SD11X5', N'2016112925', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDC AS DateTime), CAST(0x0000A6CD00D44F90 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00D70EB0 AS DateTime), 25)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (26, N'SD11X5', N'2016112926', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDC AS DateTime), CAST(0x0000A6CD00D70EB0 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00D9CDD0 AS DateTime), 26)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (27, N'SD11X5', N'2016112927', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDC AS DateTime), CAST(0x0000A6CD00D9CDD0 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00DC8CF0 AS DateTime), 27)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (28, N'SD11X5', N'2016112928', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDC AS DateTime), CAST(0x0000A6CD00DC8CF0 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00DF4C10 AS DateTime), 28)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (29, N'SD11X5', N'2016112929', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDD AS DateTime), CAST(0x0000A6CD00DF4C10 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00E20B30 AS DateTime), 29)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (30, N'SD11X5', N'2016112930', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDD AS DateTime), CAST(0x0000A6CD00E20B30 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00E4CA50 AS DateTime), 30)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (31, N'SD11X5', N'2016112931', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDD AS DateTime), CAST(0x0000A6CD00E4CA50 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00E78970 AS DateTime), 31)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (32, N'SD11X5', N'2016112932', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDD AS DateTime), CAST(0x0000A6CD00E78970 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00EA4890 AS DateTime), 32)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (33, N'SD11X5', N'2016112933', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDD AS DateTime), CAST(0x0000A6CD00EA4890 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00ED07B0 AS DateTime), 33)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (34, N'SD11X5', N'2016112934', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDE AS DateTime), CAST(0x0000A6CD00ED07B0 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00EFC6D0 AS DateTime), 34)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (35, N'SD11X5', N'2016112935', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDE AS DateTime), CAST(0x0000A6CD00EFC6D0 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00F285F0 AS DateTime), 35)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (36, N'SD11X5', N'2016112936', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDE AS DateTime), CAST(0x0000A6CD00F285F0 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00F54510 AS DateTime), 36)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (37, N'SD11X5', N'2016112937', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDE AS DateTime), CAST(0x0000A6CD00F54510 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00F80430 AS DateTime), 37)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (38, N'SD11X5', N'2016112938', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDE AS DateTime), CAST(0x0000A6CD00F80430 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00FAC350 AS DateTime), 38)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (39, N'SD11X5', N'2016112939', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDF AS DateTime), CAST(0x0000A6CD00FAC350 AS DateTime), 0, 0, 0, CAST(0x0000A6CD00FD8270 AS DateTime), 39)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (40, N'SD11X5', N'2016112940', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDF AS DateTime), CAST(0x0000A6CD00FD8270 AS DateTime), 0, 0, 0, CAST(0x0000A6CD01004190 AS DateTime), 40)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (41, N'SD11X5', N'2016112941', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDF AS DateTime), CAST(0x0000A6CD01004190 AS DateTime), 0, 0, 0, CAST(0x0000A6CD010300B0 AS DateTime), 41)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (42, N'SD11X5', N'2016112942', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDF AS DateTime), CAST(0x0000A6CD010300B0 AS DateTime), 0, 0, 0, CAST(0x0000A6CD0105BFD0 AS DateTime), 42)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (43, N'SD11X5', N'2016112943', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDF AS DateTime), CAST(0x0000A6CD0105BFD0 AS DateTime), 0, 0, 0, CAST(0x0000A6CD01087EF0 AS DateTime), 43)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (44, N'SD11X5', N'2016112944', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DDF AS DateTime), CAST(0x0000A6CD01087EF0 AS DateTime), 0, 0, 0, CAST(0x0000A6CD010B3E10 AS DateTime), 44)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (45, N'SD11X5', N'2016112945', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE0 AS DateTime), CAST(0x0000A6CD010B3E10 AS DateTime), 0, 0, 0, CAST(0x0000A6CD010DFD30 AS DateTime), 45)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (46, N'SD11X5', N'2016112946', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE0 AS DateTime), CAST(0x0000A6CD010DFD30 AS DateTime), 0, 0, 0, CAST(0x0000A6CD0110BC50 AS DateTime), 46)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (47, N'SD11X5', N'2016112947', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE0 AS DateTime), CAST(0x0000A6CD0110BC50 AS DateTime), 0, 0, 0, CAST(0x0000A6CD01137B70 AS DateTime), 47)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (48, N'SD11X5', N'2016112948', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE0 AS DateTime), CAST(0x0000A6CD01137B70 AS DateTime), 0, 0, 0, CAST(0x0000A6CD01163A90 AS DateTime), 48)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (49, N'SD11X5', N'2016112949', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE0 AS DateTime), CAST(0x0000A6CD01163A90 AS DateTime), 0, 0, 0, CAST(0x0000A6CD0118F9B0 AS DateTime), 49)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (50, N'SD11X5', N'2016112950', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE0 AS DateTime), CAST(0x0000A6CD0118F9B0 AS DateTime), 0, 0, 0, CAST(0x0000A6CD011BB8D0 AS DateTime), 50)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (51, N'SD11X5', N'2016112951', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE0 AS DateTime), CAST(0x0000A6CD011BB8D0 AS DateTime), 0, 0, 0, CAST(0x0000A6CD011E77F0 AS DateTime), 51)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (52, N'SD11X5', N'2016112952', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE0 AS DateTime), CAST(0x0000A6CD011E77F0 AS DateTime), 0, 0, 0, CAST(0x0000A6CD01213710 AS DateTime), 52)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (53, N'SD11X5', N'2016112953', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE1 AS DateTime), CAST(0x0000A6CD01213710 AS DateTime), 0, 0, 0, CAST(0x0000A6CD0123F630 AS DateTime), 53)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (54, N'SD11X5', N'2016112954', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE1 AS DateTime), CAST(0x0000A6CD0123F630 AS DateTime), 0, 0, 0, CAST(0x0000A6CD0126B550 AS DateTime), 54)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (55, N'SD11X5', N'2016112955', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE1 AS DateTime), CAST(0x0000A6CD0126B550 AS DateTime), 0, 0, 0, CAST(0x0000A6CD01297470 AS DateTime), 55)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (56, N'SD11X5', N'2016112956', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE1 AS DateTime), CAST(0x0000A6CD01297470 AS DateTime), 0, 0, 0, CAST(0x0000A6CD012C3390 AS DateTime), 56)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (57, N'SD11X5', N'2016112957', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE1 AS DateTime), CAST(0x0000A6CD012C3390 AS DateTime), 0, 0, 0, CAST(0x0000A6CD012EF2B0 AS DateTime), 57)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (58, N'SD11X5', N'2016112958', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE1 AS DateTime), CAST(0x0000A6CD012EF2B0 AS DateTime), 0, 0, 0, CAST(0x0000A6CD0131B1D0 AS DateTime), 58)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (59, N'SD11X5', N'2016112959', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE2 AS DateTime), CAST(0x0000A6CD0131B1D0 AS DateTime), 0, 0, 0, CAST(0x0000A6CD013470F0 AS DateTime), 59)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (60, N'SD11X5', N'2016112960', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE2 AS DateTime), CAST(0x0000A6CD013470F0 AS DateTime), 0, 0, 0, CAST(0x0000A6CD01373010 AS DateTime), 60)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (61, N'SD11X5', N'2016112961', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE2 AS DateTime), CAST(0x0000A6CD01373010 AS DateTime), 0, 0, 0, CAST(0x0000A6CD0139EF30 AS DateTime), 61)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (62, N'SD11X5', N'2016112962', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE2 AS DateTime), CAST(0x0000A6CD0139EF30 AS DateTime), 0, 0, 0, CAST(0x0000A6CD013CAE50 AS DateTime), 62)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (63, N'SD11X5', N'2016112963', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE2 AS DateTime), CAST(0x0000A6CD013CAE50 AS DateTime), 0, 0, 0, CAST(0x0000A6CD013F6D70 AS DateTime), 63)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (64, N'SD11X5', N'2016112964', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE2 AS DateTime), CAST(0x0000A6CD013F6D70 AS DateTime), 0, 0, 0, CAST(0x0000A6CD01422C90 AS DateTime), 64)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (65, N'SD11X5', N'2016112965', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE3 AS DateTime), CAST(0x0000A6CD01422C90 AS DateTime), 0, 0, 0, CAST(0x0000A6CD0144EBB0 AS DateTime), 65)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (66, N'SD11X5', N'2016112966', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE3 AS DateTime), CAST(0x0000A6CD0144EBB0 AS DateTime), 0, 0, 0, CAST(0x0000A6CD0147AAD0 AS DateTime), 66)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (67, N'SD11X5', N'2016112967', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE3 AS DateTime), CAST(0x0000A6CD0147AAD0 AS DateTime), 0, 0, 0, CAST(0x0000A6CD014A69F0 AS DateTime), 67)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (68, N'SD11X5', N'2016112968', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE3 AS DateTime), CAST(0x0000A6CD014A69F0 AS DateTime), 0, 0, 0, CAST(0x0000A6CD014D2910 AS DateTime), 68)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (69, N'SD11X5', N'2016112969', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE3 AS DateTime), CAST(0x0000A6CD014D2910 AS DateTime), 0, 0, 0, CAST(0x0000A6CD014FE830 AS DateTime), 69)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (70, N'SD11X5', N'2016112970', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE3 AS DateTime), CAST(0x0000A6CD014FE830 AS DateTime), 0, 0, 0, CAST(0x0000A6CD0152A750 AS DateTime), 70)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (71, N'SD11X5', N'2016112971', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE3 AS DateTime), CAST(0x0000A6CD0152A750 AS DateTime), 0, 0, 0, CAST(0x0000A6CD01556670 AS DateTime), 71)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (72, N'SD11X5', N'2016112972', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE3 AS DateTime), CAST(0x0000A6CD01556670 AS DateTime), 0, 0, 0, CAST(0x0000A6CD01582590 AS DateTime), 72)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (73, N'SD11X5', N'2016112973', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE4 AS DateTime), CAST(0x0000A6CD01582590 AS DateTime), 0, 0, 0, CAST(0x0000A6CD015AE4B0 AS DateTime), 73)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (74, N'SD11X5', N'2016112974', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE4 AS DateTime), CAST(0x0000A6CD015AE4B0 AS DateTime), 0, 0, 0, CAST(0x0000A6CD015DA3D0 AS DateTime), 74)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (75, N'SD11X5', N'2016112975', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE4 AS DateTime), CAST(0x0000A6CD015DA3D0 AS DateTime), 0, 0, 0, CAST(0x0000A6CD016062F0 AS DateTime), 75)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (76, N'SD11X5', N'2016112976', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE4 AS DateTime), CAST(0x0000A6CD016062F0 AS DateTime), 0, 0, 0, CAST(0x0000A6CD01632210 AS DateTime), 76)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (77, N'SD11X5', N'2016112977', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE4 AS DateTime), CAST(0x0000A6CD01632210 AS DateTime), 0, 0, 0, CAST(0x0000A6CD0165E130 AS DateTime), 77)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (78, N'SD11X5', N'2016112978', N'01 02 03 04 05', 1, CAST(0x0000A6CD010E6DE4 AS DateTime), CAST(0x0000A6CD0165E130 AS DateTime), 0, 0, 0, CAST(0x0000A6CD0168A050 AS DateTime), 78)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (79, N'SD11X5', N'2016113001', N'01 02 03 04 05', 1, CAST(0x0000A6CE0091921A AS DateTime), CAST(0x0000A6CE00926490 AS DateTime), 0, 0, 0, CAST(0x0000A6CE009523B0 AS DateTime), 1)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (80, N'SD11X5', N'2016113002', N'01 02 03 04 05', 1, CAST(0x0000A6CE0091921A AS DateTime), CAST(0x0000A6CE009523B0 AS DateTime), 0, 0, 0, CAST(0x0000A6CE0097E2D0 AS DateTime), 2)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (81, N'SD11X5', N'2016113003', N'01 02 03 04 05', 1, CAST(0x0000A6CE0091921B AS DateTime), CAST(0x0000A6CE0097E2D0 AS DateTime), 0, 0, 0, CAST(0x0000A6CE009AA1F0 AS DateTime), 3)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (82, N'SD11X5', N'2016113004', N'01 02 03 04 05', 1, CAST(0x0000A6CE0091921B AS DateTime), CAST(0x0000A6CE009AA1F0 AS DateTime), 0, 0, 0, CAST(0x0000A6CE009D6110 AS DateTime), 4)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (83, N'SD11X5', N'2016113005', N'01 02 03 04 05', 1, CAST(0x0000A6CE0091921B AS DateTime), CAST(0x0000A6CE009D6110 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00A02030 AS DateTime), 5)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (84, N'SD11X5', N'2016113006', N'', 1, CAST(0x0000A6CE0091921B AS DateTime), CAST(0x0000A6CE00A02030 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00A2DF50 AS DateTime), 6)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (85, N'SD11X5', N'2016113007', N'', 1, CAST(0x0000A6CE0091921B AS DateTime), CAST(0x0000A6CE00A2DF50 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00A59E70 AS DateTime), 7)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (86, N'SD11X5', N'2016113008', N'', 1, CAST(0x0000A6CE0091921B AS DateTime), CAST(0x0000A6CE00A59E70 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00A85D90 AS DateTime), 8)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (87, N'SD11X5', N'2016113009', N'', 1, CAST(0x0000A6CE0091921C AS DateTime), CAST(0x0000A6CE00A85D90 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00AB1CB0 AS DateTime), 9)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (88, N'SD11X5', N'2016113010', N'', 1, CAST(0x0000A6CE0091921C AS DateTime), CAST(0x0000A6CE00AB1CB0 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00ADDBD0 AS DateTime), 10)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (89, N'SD11X5', N'2016113011', N'', 1, CAST(0x0000A6CE0091921C AS DateTime), CAST(0x0000A6CE00ADDBD0 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00B09AF0 AS DateTime), 11)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (90, N'SD11X5', N'2016113012', N'', 1, CAST(0x0000A6CE0091921C AS DateTime), CAST(0x0000A6CE00B09AF0 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00B35A10 AS DateTime), 12)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (91, N'SD11X5', N'2016113013', N'', 1, CAST(0x0000A6CE0091921C AS DateTime), CAST(0x0000A6CE00B35A10 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00B61930 AS DateTime), 13)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (92, N'SD11X5', N'2016113014', N'', 1, CAST(0x0000A6CE0091921D AS DateTime), CAST(0x0000A6CE00B61930 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00B8D850 AS DateTime), 14)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (93, N'SD11X5', N'2016113015', N'', 1, CAST(0x0000A6CE0091921D AS DateTime), CAST(0x0000A6CE00B8D850 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00BB9770 AS DateTime), 15)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (94, N'SD11X5', N'2016113016', N'', 1, CAST(0x0000A6CE0091921D AS DateTime), CAST(0x0000A6CE00BB9770 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00BE5690 AS DateTime), 16)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (95, N'SD11X5', N'2016113017', N'', 1, CAST(0x0000A6CE0091921D AS DateTime), CAST(0x0000A6CE00BE5690 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00C115B0 AS DateTime), 17)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (96, N'SD11X5', N'2016113018', N'', 1, CAST(0x0000A6CE0091921D AS DateTime), CAST(0x0000A6CE00C115B0 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00C3D4D0 AS DateTime), 18)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (97, N'SD11X5', N'2016113019', N'', 1, CAST(0x0000A6CE0091921E AS DateTime), CAST(0x0000A6CE00C3D4D0 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00C693F0 AS DateTime), 19)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (98, N'SD11X5', N'2016113020', N'', 1, CAST(0x0000A6CE0091921E AS DateTime), CAST(0x0000A6CE00C693F0 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00C95310 AS DateTime), 20)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (99, N'SD11X5', N'2016113021', N'', 1, CAST(0x0000A6CE0091921E AS DateTime), CAST(0x0000A6CE00C95310 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00CC1230 AS DateTime), 21)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (100, N'SD11X5', N'2016113022', N'', 1, CAST(0x0000A6CE0091921E AS DateTime), CAST(0x0000A6CE00CC1230 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00CED150 AS DateTime), 22)
GO
print 'Processed 100 total records'
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (101, N'SD11X5', N'2016113023', N'', 1, CAST(0x0000A6CE0091921E AS DateTime), CAST(0x0000A6CE00CED150 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00D19070 AS DateTime), 23)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (102, N'SD11X5', N'2016113024', N'', 1, CAST(0x0000A6CE0091921E AS DateTime), CAST(0x0000A6CE00D19070 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00D44F90 AS DateTime), 24)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (103, N'SD11X5', N'2016113025', N'', 1, CAST(0x0000A6CE0091921E AS DateTime), CAST(0x0000A6CE00D44F90 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00D70EB0 AS DateTime), 25)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (104, N'SD11X5', N'2016113026', N'', 1, CAST(0x0000A6CE0091921E AS DateTime), CAST(0x0000A6CE00D70EB0 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00D9CDD0 AS DateTime), 26)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (105, N'SD11X5', N'2016113027', N'', 1, CAST(0x0000A6CE0091921F AS DateTime), CAST(0x0000A6CE00D9CDD0 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00DC8CF0 AS DateTime), 27)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (106, N'SD11X5', N'2016113028', N'', 1, CAST(0x0000A6CE0091921F AS DateTime), CAST(0x0000A6CE00DC8CF0 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00DF4C10 AS DateTime), 28)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (107, N'SD11X5', N'2016113029', N'', 1, CAST(0x0000A6CE0091921F AS DateTime), CAST(0x0000A6CE00DF4C10 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00E20B30 AS DateTime), 29)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (108, N'SD11X5', N'2016113030', N'', 1, CAST(0x0000A6CE0091921F AS DateTime), CAST(0x0000A6CE00E20B30 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00E4CA50 AS DateTime), 30)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (109, N'SD11X5', N'2016113031', N'', 1, CAST(0x0000A6CE0091921F AS DateTime), CAST(0x0000A6CE00E4CA50 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00E78970 AS DateTime), 31)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (110, N'SD11X5', N'2016113032', N'', 1, CAST(0x0000A6CE00919220 AS DateTime), CAST(0x0000A6CE00E78970 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00EA4890 AS DateTime), 32)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (111, N'SD11X5', N'2016113033', N'', 1, CAST(0x0000A6CE00919220 AS DateTime), CAST(0x0000A6CE00EA4890 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00ED07B0 AS DateTime), 33)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (112, N'SD11X5', N'2016113034', N'', 1, CAST(0x0000A6CE00919220 AS DateTime), CAST(0x0000A6CE00ED07B0 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00EFC6D0 AS DateTime), 34)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (113, N'SD11X5', N'2016113035', N'', 1, CAST(0x0000A6CE00919220 AS DateTime), CAST(0x0000A6CE00EFC6D0 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00F285F0 AS DateTime), 35)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (114, N'SD11X5', N'2016113036', N'', 1, CAST(0x0000A6CE00919220 AS DateTime), CAST(0x0000A6CE00F285F0 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00F54510 AS DateTime), 36)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (115, N'SD11X5', N'2016113037', N'', 1, CAST(0x0000A6CE00919220 AS DateTime), CAST(0x0000A6CE00F54510 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00F80430 AS DateTime), 37)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (116, N'SD11X5', N'2016113038', N'', 1, CAST(0x0000A6CE00919221 AS DateTime), CAST(0x0000A6CE00F80430 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00FAC350 AS DateTime), 38)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (117, N'SD11X5', N'2016113039', N'', 1, CAST(0x0000A6CE00919221 AS DateTime), CAST(0x0000A6CE00FAC350 AS DateTime), 0, 0, 0, CAST(0x0000A6CE00FD8270 AS DateTime), 39)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (118, N'SD11X5', N'2016113040', N'', 1, CAST(0x0000A6CE00919221 AS DateTime), CAST(0x0000A6CE00FD8270 AS DateTime), 0, 0, 0, CAST(0x0000A6CE01004190 AS DateTime), 40)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (119, N'SD11X5', N'2016113041', N'', 1, CAST(0x0000A6CE00919221 AS DateTime), CAST(0x0000A6CE01004190 AS DateTime), 0, 0, 0, CAST(0x0000A6CE010300B0 AS DateTime), 41)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (120, N'SD11X5', N'2016113042', N'', 1, CAST(0x0000A6CE00919221 AS DateTime), CAST(0x0000A6CE010300B0 AS DateTime), 0, 0, 0, CAST(0x0000A6CE0105BFD0 AS DateTime), 42)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (121, N'SD11X5', N'2016113043', N'', 1, CAST(0x0000A6CE00919221 AS DateTime), CAST(0x0000A6CE0105BFD0 AS DateTime), 0, 0, 0, CAST(0x0000A6CE01087EF0 AS DateTime), 43)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (122, N'SD11X5', N'2016113044', N'', 1, CAST(0x0000A6CE00919222 AS DateTime), CAST(0x0000A6CE01087EF0 AS DateTime), 0, 0, 0, CAST(0x0000A6CE010B3E10 AS DateTime), 44)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (123, N'SD11X5', N'2016113045', N'', 1, CAST(0x0000A6CE00919222 AS DateTime), CAST(0x0000A6CE010B3E10 AS DateTime), 0, 0, 0, CAST(0x0000A6CE010DFD30 AS DateTime), 45)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (124, N'SD11X5', N'2016113046', N'', 1, CAST(0x0000A6CE00919222 AS DateTime), CAST(0x0000A6CE010DFD30 AS DateTime), 0, 0, 0, CAST(0x0000A6CE0110BC50 AS DateTime), 46)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (125, N'SD11X5', N'2016113047', N'', 1, CAST(0x0000A6CE00919222 AS DateTime), CAST(0x0000A6CE0110BC50 AS DateTime), 0, 0, 0, CAST(0x0000A6CE01137B70 AS DateTime), 47)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (126, N'SD11X5', N'2016113048', N'', 1, CAST(0x0000A6CE00919222 AS DateTime), CAST(0x0000A6CE01137B70 AS DateTime), 0, 0, 0, CAST(0x0000A6CE01163A90 AS DateTime), 48)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (127, N'SD11X5', N'2016113049', N'', 1, CAST(0x0000A6CE00919223 AS DateTime), CAST(0x0000A6CE01163A90 AS DateTime), 0, 0, 0, CAST(0x0000A6CE0118F9B0 AS DateTime), 49)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (128, N'SD11X5', N'2016113050', N'', 1, CAST(0x0000A6CE00919223 AS DateTime), CAST(0x0000A6CE0118F9B0 AS DateTime), 0, 0, 0, CAST(0x0000A6CE011BB8D0 AS DateTime), 50)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (129, N'SD11X5', N'2016113051', N'', 1, CAST(0x0000A6CE00919223 AS DateTime), CAST(0x0000A6CE011BB8D0 AS DateTime), 0, 0, 0, CAST(0x0000A6CE011E77F0 AS DateTime), 51)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (130, N'SD11X5', N'2016113052', N'', 1, CAST(0x0000A6CE00919223 AS DateTime), CAST(0x0000A6CE011E77F0 AS DateTime), 0, 0, 0, CAST(0x0000A6CE01213710 AS DateTime), 52)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (131, N'SD11X5', N'2016113053', N'', 1, CAST(0x0000A6CE00919223 AS DateTime), CAST(0x0000A6CE01213710 AS DateTime), 0, 0, 0, CAST(0x0000A6CE0123F630 AS DateTime), 53)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (132, N'SD11X5', N'2016113054', N'', 1, CAST(0x0000A6CE00919223 AS DateTime), CAST(0x0000A6CE0123F630 AS DateTime), 0, 0, 0, CAST(0x0000A6CE0126B550 AS DateTime), 54)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (133, N'SD11X5', N'2016113055', N'', 1, CAST(0x0000A6CE00919224 AS DateTime), CAST(0x0000A6CE0126B550 AS DateTime), 0, 0, 0, CAST(0x0000A6CE01297470 AS DateTime), 55)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (134, N'SD11X5', N'2016113056', N'', 1, CAST(0x0000A6CE00919224 AS DateTime), CAST(0x0000A6CE01297470 AS DateTime), 0, 0, 0, CAST(0x0000A6CE012C3390 AS DateTime), 56)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (135, N'SD11X5', N'2016113057', N'', 1, CAST(0x0000A6CE00919224 AS DateTime), CAST(0x0000A6CE012C3390 AS DateTime), 0, 0, 0, CAST(0x0000A6CE012EF2B0 AS DateTime), 57)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (136, N'SD11X5', N'2016113058', N'', 1, CAST(0x0000A6CE00919224 AS DateTime), CAST(0x0000A6CE012EF2B0 AS DateTime), 0, 0, 0, CAST(0x0000A6CE0131B1D0 AS DateTime), 58)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (137, N'SD11X5', N'2016113059', N'', 1, CAST(0x0000A6CE00919224 AS DateTime), CAST(0x0000A6CE0131B1D0 AS DateTime), 0, 0, 0, CAST(0x0000A6CE013470F0 AS DateTime), 59)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (138, N'SD11X5', N'2016113060', N'', 1, CAST(0x0000A6CE00919224 AS DateTime), CAST(0x0000A6CE013470F0 AS DateTime), 0, 0, 0, CAST(0x0000A6CE01373010 AS DateTime), 60)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (139, N'SD11X5', N'2016113061', N'', 1, CAST(0x0000A6CE00919224 AS DateTime), CAST(0x0000A6CE01373010 AS DateTime), 0, 0, 0, CAST(0x0000A6CE0139EF30 AS DateTime), 61)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (140, N'SD11X5', N'2016113062', N'', 1, CAST(0x0000A6CE00919224 AS DateTime), CAST(0x0000A6CE0139EF30 AS DateTime), 0, 0, 0, CAST(0x0000A6CE013CAE50 AS DateTime), 62)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (141, N'SD11X5', N'2016113063', N'', 1, CAST(0x0000A6CE00919225 AS DateTime), CAST(0x0000A6CE013CAE50 AS DateTime), 0, 0, 0, CAST(0x0000A6CE013F6D70 AS DateTime), 63)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (142, N'SD11X5', N'2016113064', N'', 1, CAST(0x0000A6CE00919225 AS DateTime), CAST(0x0000A6CE013F6D70 AS DateTime), 0, 0, 0, CAST(0x0000A6CE01422C90 AS DateTime), 64)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (143, N'SD11X5', N'2016113065', N'', 1, CAST(0x0000A6CE00919225 AS DateTime), CAST(0x0000A6CE01422C90 AS DateTime), 0, 0, 0, CAST(0x0000A6CE0144EBB0 AS DateTime), 65)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (144, N'SD11X5', N'2016113066', N'', 1, CAST(0x0000A6CE00919225 AS DateTime), CAST(0x0000A6CE0144EBB0 AS DateTime), 0, 0, 0, CAST(0x0000A6CE0147AAD0 AS DateTime), 66)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (145, N'SD11X5', N'2016113067', N'', 1, CAST(0x0000A6CE00919225 AS DateTime), CAST(0x0000A6CE0147AAD0 AS DateTime), 0, 0, 0, CAST(0x0000A6CE014A69F0 AS DateTime), 67)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (146, N'SD11X5', N'2016113068', N'', 1, CAST(0x0000A6CE00919225 AS DateTime), CAST(0x0000A6CE014A69F0 AS DateTime), 0, 0, 0, CAST(0x0000A6CE014D2910 AS DateTime), 68)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (147, N'SD11X5', N'2016113069', N'', 1, CAST(0x0000A6CE00919225 AS DateTime), CAST(0x0000A6CE014D2910 AS DateTime), 0, 0, 0, CAST(0x0000A6CE014FE830 AS DateTime), 69)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (148, N'SD11X5', N'2016113070', N'', 1, CAST(0x0000A6CE00919226 AS DateTime), CAST(0x0000A6CE014FE830 AS DateTime), 0, 0, 0, CAST(0x0000A6CE0152A750 AS DateTime), 70)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (149, N'SD11X5', N'2016113071', N'', 1, CAST(0x0000A6CE00919226 AS DateTime), CAST(0x0000A6CE0152A750 AS DateTime), 0, 0, 0, CAST(0x0000A6CE01556670 AS DateTime), 71)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (150, N'SD11X5', N'2016113072', N'', 1, CAST(0x0000A6CE00919226 AS DateTime), CAST(0x0000A6CE01556670 AS DateTime), 0, 0, 0, CAST(0x0000A6CE01582590 AS DateTime), 72)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (151, N'SD11X5', N'2016113073', N'', 1, CAST(0x0000A6CE00919226 AS DateTime), CAST(0x0000A6CE01582590 AS DateTime), 0, 0, 0, CAST(0x0000A6CE015AE4B0 AS DateTime), 73)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (152, N'SD11X5', N'2016113074', N'', 1, CAST(0x0000A6CE00919226 AS DateTime), CAST(0x0000A6CE015AE4B0 AS DateTime), 0, 0, 0, CAST(0x0000A6CE015DA3D0 AS DateTime), 74)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (153, N'SD11X5', N'2016113075', N'', 1, CAST(0x0000A6CE00919226 AS DateTime), CAST(0x0000A6CE015DA3D0 AS DateTime), 0, 0, 0, CAST(0x0000A6CE016062F0 AS DateTime), 75)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (154, N'SD11X5', N'2016113076', N'', 1, CAST(0x0000A6CE00919227 AS DateTime), CAST(0x0000A6CE016062F0 AS DateTime), 0, 0, 0, CAST(0x0000A6CE01632210 AS DateTime), 76)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (155, N'SD11X5', N'2016113077', N'', 1, CAST(0x0000A6CE00919227 AS DateTime), CAST(0x0000A6CE01632210 AS DateTime), 0, 0, 0, CAST(0x0000A6CE0165E130 AS DateTime), 77)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (156, N'SD11X5', N'2016113078', N'', 1, CAST(0x0000A6CE00919227 AS DateTime), CAST(0x0000A6CE0165E130 AS DateTime), 0, 0, 0, CAST(0x0000A6CE0168A050 AS DateTime), 78)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (157, N'SD11X5', N'2016120101', N'', 1, CAST(0x0000A6CF009F0BDE AS DateTime), CAST(0x0000A6CF00926490 AS DateTime), 0, 0, 0, CAST(0x0000A6CF009523B0 AS DateTime), 1)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (158, N'SD11X5', N'2016120102', N'', 1, CAST(0x0000A6CF009F0BDF AS DateTime), CAST(0x0000A6CF009523B0 AS DateTime), 0, 0, 0, CAST(0x0000A6CF0097E2D0 AS DateTime), 2)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (159, N'SD11X5', N'2016120103', N'', 1, CAST(0x0000A6CF009F0BDF AS DateTime), CAST(0x0000A6CF0097E2D0 AS DateTime), 0, 0, 0, CAST(0x0000A6CF009AA1F0 AS DateTime), 3)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (160, N'SD11X5', N'2016120104', N'', 1, CAST(0x0000A6CF009F0BDF AS DateTime), CAST(0x0000A6CF009AA1F0 AS DateTime), 0, 0, 0, CAST(0x0000A6CF009D6110 AS DateTime), 4)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (161, N'SD11X5', N'2016120105', N'', 1, CAST(0x0000A6CF009F0BDF AS DateTime), CAST(0x0000A6CF009D6110 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00A02030 AS DateTime), 5)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (162, N'SD11X5', N'2016120106', N'', 1, CAST(0x0000A6CF009F0BDF AS DateTime), CAST(0x0000A6CF00A02030 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00A2DF50 AS DateTime), 6)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (163, N'SD11X5', N'2016120107', N'', 1, CAST(0x0000A6CF009F0BDF AS DateTime), CAST(0x0000A6CF00A2DF50 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00A59E70 AS DateTime), 7)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (164, N'SD11X5', N'2016120108', N'', 1, CAST(0x0000A6CF009F0BE0 AS DateTime), CAST(0x0000A6CF00A59E70 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00A85D90 AS DateTime), 8)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (165, N'SD11X5', N'2016120109', N'', 1, CAST(0x0000A6CF009F0BE0 AS DateTime), CAST(0x0000A6CF00A85D90 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00AB1CB0 AS DateTime), 9)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (166, N'SD11X5', N'2016120110', N'', 1, CAST(0x0000A6CF009F0BE0 AS DateTime), CAST(0x0000A6CF00AB1CB0 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00ADDBD0 AS DateTime), 10)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (167, N'SD11X5', N'2016120111', N'', 1, CAST(0x0000A6CF009F0BE0 AS DateTime), CAST(0x0000A6CF00ADDBD0 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00B09AF0 AS DateTime), 11)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (168, N'SD11X5', N'2016120112', N'', 1, CAST(0x0000A6CF009F0BE0 AS DateTime), CAST(0x0000A6CF00B09AF0 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00B35A10 AS DateTime), 12)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (169, N'SD11X5', N'2016120113', N'', 1, CAST(0x0000A6CF009F0BE1 AS DateTime), CAST(0x0000A6CF00B35A10 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00B61930 AS DateTime), 13)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (170, N'SD11X5', N'2016120114', N'', 1, CAST(0x0000A6CF009F0BE1 AS DateTime), CAST(0x0000A6CF00B61930 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00B8D850 AS DateTime), 14)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (171, N'SD11X5', N'2016120115', N'', 1, CAST(0x0000A6CF009F0BE1 AS DateTime), CAST(0x0000A6CF00B8D850 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00BB9770 AS DateTime), 15)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (172, N'SD11X5', N'2016120116', N'', 1, CAST(0x0000A6CF009F0BE1 AS DateTime), CAST(0x0000A6CF00BB9770 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00BE5690 AS DateTime), 16)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (173, N'SD11X5', N'2016120117', N'', 1, CAST(0x0000A6CF009F0BE1 AS DateTime), CAST(0x0000A6CF00BE5690 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00C115B0 AS DateTime), 17)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (174, N'SD11X5', N'2016120118', N'', 1, CAST(0x0000A6CF009F0BE2 AS DateTime), CAST(0x0000A6CF00C115B0 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00C3D4D0 AS DateTime), 18)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (175, N'SD11X5', N'2016120119', N'', 1, CAST(0x0000A6CF009F0BE2 AS DateTime), CAST(0x0000A6CF00C3D4D0 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00C693F0 AS DateTime), 19)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (176, N'SD11X5', N'2016120120', N'', 1, CAST(0x0000A6CF009F0BE2 AS DateTime), CAST(0x0000A6CF00C693F0 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00C95310 AS DateTime), 20)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (177, N'SD11X5', N'2016120121', N'', 1, CAST(0x0000A6CF009F0BE2 AS DateTime), CAST(0x0000A6CF00C95310 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00CC1230 AS DateTime), 21)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (178, N'SD11X5', N'2016120122', N'', 1, CAST(0x0000A6CF009F0BE2 AS DateTime), CAST(0x0000A6CF00CC1230 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00CED150 AS DateTime), 22)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (179, N'SD11X5', N'2016120123', N'', 1, CAST(0x0000A6CF009F0BE2 AS DateTime), CAST(0x0000A6CF00CED150 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00D19070 AS DateTime), 23)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (180, N'SD11X5', N'2016120124', N'', 1, CAST(0x0000A6CF009F0BE3 AS DateTime), CAST(0x0000A6CF00D19070 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00D44F90 AS DateTime), 24)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (181, N'SD11X5', N'2016120125', N'', 1, CAST(0x0000A6CF009F0BE3 AS DateTime), CAST(0x0000A6CF00D44F90 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00D70EB0 AS DateTime), 25)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (182, N'SD11X5', N'2016120126', N'', 1, CAST(0x0000A6CF009F0BE3 AS DateTime), CAST(0x0000A6CF00D70EB0 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00D9CDD0 AS DateTime), 26)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (183, N'SD11X5', N'2016120127', N'', 1, CAST(0x0000A6CF009F0BE3 AS DateTime), CAST(0x0000A6CF00D9CDD0 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00DC8CF0 AS DateTime), 27)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (184, N'SD11X5', N'2016120128', N'', 1, CAST(0x0000A6CF009F0BE3 AS DateTime), CAST(0x0000A6CF00DC8CF0 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00DF4C10 AS DateTime), 28)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (185, N'SD11X5', N'2016120129', N'', 1, CAST(0x0000A6CF009F0BE4 AS DateTime), CAST(0x0000A6CF00DF4C10 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00E20B30 AS DateTime), 29)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (186, N'SD11X5', N'2016120130', N'', 1, CAST(0x0000A6CF009F0BE4 AS DateTime), CAST(0x0000A6CF00E20B30 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00E4CA50 AS DateTime), 30)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (187, N'SD11X5', N'2016120131', N'', 1, CAST(0x0000A6CF009F0BE4 AS DateTime), CAST(0x0000A6CF00E4CA50 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00E78970 AS DateTime), 31)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (188, N'SD11X5', N'2016120132', N'', 1, CAST(0x0000A6CF009F0BE4 AS DateTime), CAST(0x0000A6CF00E78970 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00EA4890 AS DateTime), 32)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (189, N'SD11X5', N'2016120133', N'', 1, CAST(0x0000A6CF009F0BE4 AS DateTime), CAST(0x0000A6CF00EA4890 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00ED07B0 AS DateTime), 33)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (190, N'SD11X5', N'2016120134', N'', 1, CAST(0x0000A6CF009F0BE5 AS DateTime), CAST(0x0000A6CF00ED07B0 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00EFC6D0 AS DateTime), 34)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (191, N'SD11X5', N'2016120135', N'', 1, CAST(0x0000A6CF009F0BE5 AS DateTime), CAST(0x0000A6CF00EFC6D0 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00F285F0 AS DateTime), 35)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (192, N'SD11X5', N'2016120136', N'', 1, CAST(0x0000A6CF009F0BE5 AS DateTime), CAST(0x0000A6CF00F285F0 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00F54510 AS DateTime), 36)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (193, N'SD11X5', N'2016120137', N'', 1, CAST(0x0000A6CF009F0BE5 AS DateTime), CAST(0x0000A6CF00F54510 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00F80430 AS DateTime), 37)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (194, N'SD11X5', N'2016120138', N'', 1, CAST(0x0000A6CF009F0BE5 AS DateTime), CAST(0x0000A6CF00F80430 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00FAC350 AS DateTime), 38)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (195, N'SD11X5', N'2016120139', N'', 1, CAST(0x0000A6CF009F0BE5 AS DateTime), CAST(0x0000A6CF00FAC350 AS DateTime), 0, 0, 0, CAST(0x0000A6CF00FD8270 AS DateTime), 39)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (196, N'SD11X5', N'2016120140', N'', 1, CAST(0x0000A6CF009F0BE5 AS DateTime), CAST(0x0000A6CF00FD8270 AS DateTime), 0, 0, 0, CAST(0x0000A6CF01004190 AS DateTime), 40)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (197, N'SD11X5', N'2016120141', N'', 1, CAST(0x0000A6CF009F0BE6 AS DateTime), CAST(0x0000A6CF01004190 AS DateTime), 0, 0, 0, CAST(0x0000A6CF010300B0 AS DateTime), 41)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (198, N'SD11X5', N'2016120142', N'', 1, CAST(0x0000A6CF009F0BE6 AS DateTime), CAST(0x0000A6CF010300B0 AS DateTime), 0, 0, 0, CAST(0x0000A6CF0105BFD0 AS DateTime), 42)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (199, N'SD11X5', N'2016120143', N'', 1, CAST(0x0000A6CF009F0BE6 AS DateTime), CAST(0x0000A6CF0105BFD0 AS DateTime), 0, 0, 0, CAST(0x0000A6CF01087EF0 AS DateTime), 43)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (200, N'SD11X5', N'2016120144', N'', 1, CAST(0x0000A6CF009F0BE6 AS DateTime), CAST(0x0000A6CF01087EF0 AS DateTime), 0, 0, 0, CAST(0x0000A6CF010B3E10 AS DateTime), 44)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (201, N'SD11X5', N'2016120145', N'', 1, CAST(0x0000A6CF009F0BE6 AS DateTime), CAST(0x0000A6CF010B3E10 AS DateTime), 0, 0, 0, CAST(0x0000A6CF010DFD30 AS DateTime), 45)
GO
print 'Processed 200 total records'
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (202, N'SD11X5', N'2016120146', N'', 1, CAST(0x0000A6CF009F0BE7 AS DateTime), CAST(0x0000A6CF010DFD30 AS DateTime), 0, 0, 0, CAST(0x0000A6CF0110BC50 AS DateTime), 46)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (203, N'SD11X5', N'2016120147', N'', 1, CAST(0x0000A6CF009F0BE7 AS DateTime), CAST(0x0000A6CF0110BC50 AS DateTime), 0, 0, 0, CAST(0x0000A6CF01137B70 AS DateTime), 47)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (204, N'SD11X5', N'2016120148', N'', 1, CAST(0x0000A6CF009F0BE7 AS DateTime), CAST(0x0000A6CF01137B70 AS DateTime), 0, 0, 0, CAST(0x0000A6CF01163A90 AS DateTime), 48)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (205, N'SD11X5', N'2016120149', N'', 1, CAST(0x0000A6CF009F0BE7 AS DateTime), CAST(0x0000A6CF01163A90 AS DateTime), 0, 0, 0, CAST(0x0000A6CF0118F9B0 AS DateTime), 49)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (206, N'SD11X5', N'2016120150', N'', 1, CAST(0x0000A6CF009F0BE8 AS DateTime), CAST(0x0000A6CF0118F9B0 AS DateTime), 0, 0, 0, CAST(0x0000A6CF011BB8D0 AS DateTime), 50)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (207, N'SD11X5', N'2016120151', N'', 1, CAST(0x0000A6CF009F0BE8 AS DateTime), CAST(0x0000A6CF011BB8D0 AS DateTime), 0, 0, 0, CAST(0x0000A6CF011E77F0 AS DateTime), 51)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (208, N'SD11X5', N'2016120152', N'', 1, CAST(0x0000A6CF009F0BE8 AS DateTime), CAST(0x0000A6CF011E77F0 AS DateTime), 0, 0, 0, CAST(0x0000A6CF01213710 AS DateTime), 52)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (209, N'SD11X5', N'2016120153', N'', 1, CAST(0x0000A6CF009F0BE8 AS DateTime), CAST(0x0000A6CF01213710 AS DateTime), 0, 0, 0, CAST(0x0000A6CF0123F630 AS DateTime), 53)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (210, N'SD11X5', N'2016120154', N'', 1, CAST(0x0000A6CF009F0BE8 AS DateTime), CAST(0x0000A6CF0123F630 AS DateTime), 0, 0, 0, CAST(0x0000A6CF0126B550 AS DateTime), 54)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (211, N'SD11X5', N'2016120155', N'', 1, CAST(0x0000A6CF009F0BE8 AS DateTime), CAST(0x0000A6CF0126B550 AS DateTime), 0, 0, 0, CAST(0x0000A6CF01297470 AS DateTime), 55)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (212, N'SD11X5', N'2016120156', N'', 1, CAST(0x0000A6CF009F0BE8 AS DateTime), CAST(0x0000A6CF01297470 AS DateTime), 0, 0, 0, CAST(0x0000A6CF012C3390 AS DateTime), 56)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (213, N'SD11X5', N'2016120157', N'', 1, CAST(0x0000A6CF009F0BE9 AS DateTime), CAST(0x0000A6CF012C3390 AS DateTime), 0, 0, 0, CAST(0x0000A6CF012EF2B0 AS DateTime), 57)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (214, N'SD11X5', N'2016120158', N'', 1, CAST(0x0000A6CF009F0BE9 AS DateTime), CAST(0x0000A6CF012EF2B0 AS DateTime), 0, 0, 0, CAST(0x0000A6CF0131B1D0 AS DateTime), 58)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (215, N'SD11X5', N'2016120159', N'', 1, CAST(0x0000A6CF009F0BE9 AS DateTime), CAST(0x0000A6CF0131B1D0 AS DateTime), 0, 0, 0, CAST(0x0000A6CF013470F0 AS DateTime), 59)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (216, N'SD11X5', N'2016120160', N'', 1, CAST(0x0000A6CF009F0BE9 AS DateTime), CAST(0x0000A6CF013470F0 AS DateTime), 0, 0, 0, CAST(0x0000A6CF01373010 AS DateTime), 60)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (217, N'SD11X5', N'2016120161', N'', 1, CAST(0x0000A6CF009F0BEA AS DateTime), CAST(0x0000A6CF01373010 AS DateTime), 0, 0, 0, CAST(0x0000A6CF0139EF30 AS DateTime), 61)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (218, N'SD11X5', N'2016120162', N'', 1, CAST(0x0000A6CF009F0BEA AS DateTime), CAST(0x0000A6CF0139EF30 AS DateTime), 0, 0, 0, CAST(0x0000A6CF013CAE50 AS DateTime), 62)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (219, N'SD11X5', N'2016120163', N'', 1, CAST(0x0000A6CF009F0BEA AS DateTime), CAST(0x0000A6CF013CAE50 AS DateTime), 0, 0, 0, CAST(0x0000A6CF013F6D70 AS DateTime), 63)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (220, N'SD11X5', N'2016120164', N'', 1, CAST(0x0000A6CF009F0BEA AS DateTime), CAST(0x0000A6CF013F6D70 AS DateTime), 0, 0, 0, CAST(0x0000A6CF01422C90 AS DateTime), 64)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (221, N'SD11X5', N'2016120165', N'', 1, CAST(0x0000A6CF009F0BEA AS DateTime), CAST(0x0000A6CF01422C90 AS DateTime), 0, 0, 0, CAST(0x0000A6CF0144EBB0 AS DateTime), 65)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (222, N'SD11X5', N'2016120166', N'', 1, CAST(0x0000A6CF009F0BEB AS DateTime), CAST(0x0000A6CF0144EBB0 AS DateTime), 0, 0, 0, CAST(0x0000A6CF0147AAD0 AS DateTime), 66)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (223, N'SD11X5', N'2016120167', N'', 1, CAST(0x0000A6CF009F0BEB AS DateTime), CAST(0x0000A6CF0147AAD0 AS DateTime), 0, 0, 0, CAST(0x0000A6CF014A69F0 AS DateTime), 67)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (224, N'SD11X5', N'2016120168', N'', 1, CAST(0x0000A6CF009F0BEB AS DateTime), CAST(0x0000A6CF014A69F0 AS DateTime), 0, 0, 0, CAST(0x0000A6CF014D2910 AS DateTime), 68)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (225, N'SD11X5', N'2016120169', N'', 1, CAST(0x0000A6CF009F0BEB AS DateTime), CAST(0x0000A6CF014D2910 AS DateTime), 0, 0, 0, CAST(0x0000A6CF014FE830 AS DateTime), 69)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (226, N'SD11X5', N'2016120170', N'', 1, CAST(0x0000A6CF009F0BEB AS DateTime), CAST(0x0000A6CF014FE830 AS DateTime), 0, 0, 0, CAST(0x0000A6CF0152A750 AS DateTime), 70)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (227, N'SD11X5', N'2016120171', N'', 1, CAST(0x0000A6CF009F0BEB AS DateTime), CAST(0x0000A6CF0152A750 AS DateTime), 0, 0, 0, CAST(0x0000A6CF01556670 AS DateTime), 71)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (228, N'SD11X5', N'2016120172', N'', 1, CAST(0x0000A6CF009F0BEC AS DateTime), CAST(0x0000A6CF01556670 AS DateTime), 0, 0, 0, CAST(0x0000A6CF01582590 AS DateTime), 72)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (229, N'SD11X5', N'2016120173', N'', 1, CAST(0x0000A6CF009F0BEC AS DateTime), CAST(0x0000A6CF01582590 AS DateTime), 0, 0, 0, CAST(0x0000A6CF015AE4B0 AS DateTime), 73)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (230, N'SD11X5', N'2016120174', N'', 1, CAST(0x0000A6CF009F0BEC AS DateTime), CAST(0x0000A6CF015AE4B0 AS DateTime), 0, 0, 0, CAST(0x0000A6CF015DA3D0 AS DateTime), 74)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (231, N'SD11X5', N'2016120175', N'', 1, CAST(0x0000A6CF009F0BEC AS DateTime), CAST(0x0000A6CF015DA3D0 AS DateTime), 0, 0, 0, CAST(0x0000A6CF016062F0 AS DateTime), 75)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (232, N'SD11X5', N'2016120176', N'', 1, CAST(0x0000A6CF009F0BEC AS DateTime), CAST(0x0000A6CF016062F0 AS DateTime), 0, 0, 0, CAST(0x0000A6CF01632210 AS DateTime), 76)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (233, N'SD11X5', N'2016120177', N'', 1, CAST(0x0000A6CF009F0BED AS DateTime), CAST(0x0000A6CF01632210 AS DateTime), 0, 0, 0, CAST(0x0000A6CF0165E130 AS DateTime), 77)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (234, N'SD11X5', N'2016120178', N'', 1, CAST(0x0000A6CF009F0BED AS DateTime), CAST(0x0000A6CF0165E130 AS DateTime), 0, 0, 0, CAST(0x0000A6CF0168A050 AS DateTime), 78)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (235, N'SD11X5', N'2016120201', N'', 1, CAST(0x0000A6D000B0B302 AS DateTime), CAST(0x0000A6D000926490 AS DateTime), 0, 0, 0, CAST(0x0000A6D0009523B0 AS DateTime), 1)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (236, N'SD11X5', N'2016120202', N'', 1, CAST(0x0000A6D000B0B302 AS DateTime), CAST(0x0000A6D0009523B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D00097E2D0 AS DateTime), 2)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (237, N'SD11X5', N'2016120203', N'', 1, CAST(0x0000A6D000B0B302 AS DateTime), CAST(0x0000A6D00097E2D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D0009AA1F0 AS DateTime), 3)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (238, N'SD11X5', N'2016120204', N'', 1, CAST(0x0000A6D000B0B302 AS DateTime), CAST(0x0000A6D0009AA1F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D0009D6110 AS DateTime), 4)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (239, N'SD11X5', N'2016120205', N'', 1, CAST(0x0000A6D000B0B302 AS DateTime), CAST(0x0000A6D0009D6110 AS DateTime), 0, 0, 0, CAST(0x0000A6D000A02030 AS DateTime), 5)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (240, N'SD11X5', N'2016120206', N'', 1, CAST(0x0000A6D000B0B302 AS DateTime), CAST(0x0000A6D000A02030 AS DateTime), 0, 0, 0, CAST(0x0000A6D000A2DF50 AS DateTime), 6)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (241, N'SD11X5', N'2016120207', N'', 1, CAST(0x0000A6D000B0B303 AS DateTime), CAST(0x0000A6D000A2DF50 AS DateTime), 0, 0, 0, CAST(0x0000A6D000A59E70 AS DateTime), 7)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (242, N'SD11X5', N'2016120208', N'', 1, CAST(0x0000A6D000B0B303 AS DateTime), CAST(0x0000A6D000A59E70 AS DateTime), 0, 0, 0, CAST(0x0000A6D000A85D90 AS DateTime), 8)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (243, N'SD11X5', N'2016120209', N'', 1, CAST(0x0000A6D000B0B303 AS DateTime), CAST(0x0000A6D000A85D90 AS DateTime), 0, 0, 0, CAST(0x0000A6D000AB1CB0 AS DateTime), 9)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (244, N'SD11X5', N'2016120210', N'', 1, CAST(0x0000A6D000B0B303 AS DateTime), CAST(0x0000A6D000AB1CB0 AS DateTime), 0, 0, 0, CAST(0x0000A6D000ADDBD0 AS DateTime), 10)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (245, N'SD11X5', N'2016120211', N'', 1, CAST(0x0000A6D000B0B304 AS DateTime), CAST(0x0000A6D000ADDBD0 AS DateTime), 0, 0, 0, CAST(0x0000A6D000B09AF0 AS DateTime), 11)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (246, N'SD11X5', N'2016120212', N'', 1, CAST(0x0000A6D000B0B304 AS DateTime), CAST(0x0000A6D000B09AF0 AS DateTime), 0, 0, 0, CAST(0x0000A6D000B35A10 AS DateTime), 12)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (247, N'SD11X5', N'2016120213', N'', 1, CAST(0x0000A6D000B0B304 AS DateTime), CAST(0x0000A6D000B35A10 AS DateTime), 0, 0, 0, CAST(0x0000A6D000B61930 AS DateTime), 13)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (248, N'SD11X5', N'2016120214', N'', 1, CAST(0x0000A6D000B0B304 AS DateTime), CAST(0x0000A6D000B61930 AS DateTime), 0, 0, 0, CAST(0x0000A6D000B8D850 AS DateTime), 14)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (249, N'SD11X5', N'2016120215', N'', 1, CAST(0x0000A6D000B0B304 AS DateTime), CAST(0x0000A6D000B8D850 AS DateTime), 0, 0, 0, CAST(0x0000A6D000BB9770 AS DateTime), 15)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (250, N'SD11X5', N'2016120216', N'', 1, CAST(0x0000A6D000B0B305 AS DateTime), CAST(0x0000A6D000BB9770 AS DateTime), 0, 0, 0, CAST(0x0000A6D000BE5690 AS DateTime), 16)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (251, N'SD11X5', N'2016120217', N'', 1, CAST(0x0000A6D000B0B305 AS DateTime), CAST(0x0000A6D000BE5690 AS DateTime), 0, 0, 0, CAST(0x0000A6D000C115B0 AS DateTime), 17)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (252, N'SD11X5', N'2016120218', N'', 1, CAST(0x0000A6D000B0B305 AS DateTime), CAST(0x0000A6D000C115B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D000C3D4D0 AS DateTime), 18)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (253, N'SD11X5', N'2016120219', N'', 1, CAST(0x0000A6D000B0B305 AS DateTime), CAST(0x0000A6D000C3D4D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D000C693F0 AS DateTime), 19)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (254, N'SD11X5', N'2016120220', N'', 1, CAST(0x0000A6D000B0B305 AS DateTime), CAST(0x0000A6D000C693F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D000C95310 AS DateTime), 20)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (255, N'SD11X5', N'2016120221', N'', 1, CAST(0x0000A6D000B0B305 AS DateTime), CAST(0x0000A6D000C95310 AS DateTime), 0, 0, 0, CAST(0x0000A6D000CC1230 AS DateTime), 21)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (256, N'SD11X5', N'2016120222', N'', 1, CAST(0x0000A6D000B0B305 AS DateTime), CAST(0x0000A6D000CC1230 AS DateTime), 0, 0, 0, CAST(0x0000A6D000CED150 AS DateTime), 22)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (257, N'SD11X5', N'2016120223', N'', 1, CAST(0x0000A6D000B0B306 AS DateTime), CAST(0x0000A6D000CED150 AS DateTime), 0, 0, 0, CAST(0x0000A6D000D19070 AS DateTime), 23)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (258, N'SD11X5', N'2016120224', N'', 1, CAST(0x0000A6D000B0B306 AS DateTime), CAST(0x0000A6D000D19070 AS DateTime), 0, 0, 0, CAST(0x0000A6D000D44F90 AS DateTime), 24)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (259, N'SD11X5', N'2016120225', N'', 1, CAST(0x0000A6D000B0B306 AS DateTime), CAST(0x0000A6D000D44F90 AS DateTime), 0, 0, 0, CAST(0x0000A6D000D70EB0 AS DateTime), 25)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (260, N'SD11X5', N'2016120226', N'', 1, CAST(0x0000A6D000B0B306 AS DateTime), CAST(0x0000A6D000D70EB0 AS DateTime), 0, 0, 0, CAST(0x0000A6D000D9CDD0 AS DateTime), 26)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (261, N'SD11X5', N'2016120227', N'', 1, CAST(0x0000A6D000B0B306 AS DateTime), CAST(0x0000A6D000D9CDD0 AS DateTime), 0, 0, 0, CAST(0x0000A6D000DC8CF0 AS DateTime), 27)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (262, N'SD11X5', N'2016120228', N'', 1, CAST(0x0000A6D000B0B307 AS DateTime), CAST(0x0000A6D000DC8CF0 AS DateTime), 0, 0, 0, CAST(0x0000A6D000DF4C10 AS DateTime), 28)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (263, N'SD11X5', N'2016120229', N'', 1, CAST(0x0000A6D000B0B307 AS DateTime), CAST(0x0000A6D000DF4C10 AS DateTime), 0, 0, 0, CAST(0x0000A6D000E20B30 AS DateTime), 29)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (264, N'SD11X5', N'2016120230', N'', 1, CAST(0x0000A6D000B0B307 AS DateTime), CAST(0x0000A6D000E20B30 AS DateTime), 0, 0, 0, CAST(0x0000A6D000E4CA50 AS DateTime), 30)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (265, N'SD11X5', N'2016120231', N'', 1, CAST(0x0000A6D000B0B307 AS DateTime), CAST(0x0000A6D000E4CA50 AS DateTime), 0, 0, 0, CAST(0x0000A6D000E78970 AS DateTime), 31)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (266, N'SD11X5', N'2016120232', N'', 1, CAST(0x0000A6D000B0B307 AS DateTime), CAST(0x0000A6D000E78970 AS DateTime), 0, 0, 0, CAST(0x0000A6D000EA4890 AS DateTime), 32)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (267, N'SD11X5', N'2016120233', N'', 1, CAST(0x0000A6D000B0B307 AS DateTime), CAST(0x0000A6D000EA4890 AS DateTime), 0, 0, 0, CAST(0x0000A6D000ED07B0 AS DateTime), 33)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (268, N'SD11X5', N'2016120234', N'', 1, CAST(0x0000A6D000B0B308 AS DateTime), CAST(0x0000A6D000ED07B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D000EFC6D0 AS DateTime), 34)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (269, N'SD11X5', N'2016120235', N'', 1, CAST(0x0000A6D000B0B308 AS DateTime), CAST(0x0000A6D000EFC6D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D000F285F0 AS DateTime), 35)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (270, N'SD11X5', N'2016120236', N'', 1, CAST(0x0000A6D000B0B308 AS DateTime), CAST(0x0000A6D000F285F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D000F54510 AS DateTime), 36)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (271, N'SD11X5', N'2016120237', N'', 1, CAST(0x0000A6D000B0B308 AS DateTime), CAST(0x0000A6D000F54510 AS DateTime), 0, 0, 0, CAST(0x0000A6D000F80430 AS DateTime), 37)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (272, N'SD11X5', N'2016120238', N'', 1, CAST(0x0000A6D000B0B308 AS DateTime), CAST(0x0000A6D000F80430 AS DateTime), 0, 0, 0, CAST(0x0000A6D000FAC350 AS DateTime), 38)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (273, N'SD11X5', N'2016120239', N'', 1, CAST(0x0000A6D000B0B308 AS DateTime), CAST(0x0000A6D000FAC350 AS DateTime), 0, 0, 0, CAST(0x0000A6D000FD8270 AS DateTime), 39)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (274, N'SD11X5', N'2016120240', N'', 1, CAST(0x0000A6D000B0B308 AS DateTime), CAST(0x0000A6D000FD8270 AS DateTime), 0, 0, 0, CAST(0x0000A6D001004190 AS DateTime), 40)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (275, N'SD11X5', N'2016120241', N'', 1, CAST(0x0000A6D000B0B308 AS DateTime), CAST(0x0000A6D001004190 AS DateTime), 0, 0, 0, CAST(0x0000A6D0010300B0 AS DateTime), 41)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (276, N'SD11X5', N'2016120242', N'', 1, CAST(0x0000A6D000B0B309 AS DateTime), CAST(0x0000A6D0010300B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D00105BFD0 AS DateTime), 42)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (277, N'SD11X5', N'2016120243', N'', 1, CAST(0x0000A6D000B0B309 AS DateTime), CAST(0x0000A6D00105BFD0 AS DateTime), 0, 0, 0, CAST(0x0000A6D001087EF0 AS DateTime), 43)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (278, N'SD11X5', N'2016120244', N'', 1, CAST(0x0000A6D000B0B309 AS DateTime), CAST(0x0000A6D001087EF0 AS DateTime), 0, 0, 0, CAST(0x0000A6D0010B3E10 AS DateTime), 44)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (279, N'SD11X5', N'2016120245', N'', 1, CAST(0x0000A6D000B0B309 AS DateTime), CAST(0x0000A6D0010B3E10 AS DateTime), 0, 0, 0, CAST(0x0000A6D0010DFD30 AS DateTime), 45)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (280, N'SD11X5', N'2016120246', N'', 1, CAST(0x0000A6D000B0B309 AS DateTime), CAST(0x0000A6D0010DFD30 AS DateTime), 0, 0, 0, CAST(0x0000A6D00110BC50 AS DateTime), 46)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (281, N'SD11X5', N'2016120247', N'', 1, CAST(0x0000A6D000B0B30A AS DateTime), CAST(0x0000A6D00110BC50 AS DateTime), 0, 0, 0, CAST(0x0000A6D001137B70 AS DateTime), 47)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (282, N'SD11X5', N'2016120248', N'', 1, CAST(0x0000A6D000B0B30A AS DateTime), CAST(0x0000A6D001137B70 AS DateTime), 0, 0, 0, CAST(0x0000A6D001163A90 AS DateTime), 48)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (283, N'SD11X5', N'2016120249', N'', 1, CAST(0x0000A6D000B0B30A AS DateTime), CAST(0x0000A6D001163A90 AS DateTime), 0, 0, 0, CAST(0x0000A6D00118F9B0 AS DateTime), 49)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (284, N'SD11X5', N'2016120250', N'', 1, CAST(0x0000A6D000B0B30A AS DateTime), CAST(0x0000A6D00118F9B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D0011BB8D0 AS DateTime), 50)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (285, N'SD11X5', N'2016120251', N'', 1, CAST(0x0000A6D000B0B30A AS DateTime), CAST(0x0000A6D0011BB8D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D0011E77F0 AS DateTime), 51)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (286, N'SD11X5', N'2016120252', N'', 1, CAST(0x0000A6D000B0B30B AS DateTime), CAST(0x0000A6D0011E77F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D001213710 AS DateTime), 52)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (287, N'SD11X5', N'2016120253', N'', 1, CAST(0x0000A6D000B0B30B AS DateTime), CAST(0x0000A6D001213710 AS DateTime), 0, 0, 0, CAST(0x0000A6D00123F630 AS DateTime), 53)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (288, N'SD11X5', N'2016120254', N'', 1, CAST(0x0000A6D000B0B30B AS DateTime), CAST(0x0000A6D00123F630 AS DateTime), 0, 0, 0, CAST(0x0000A6D00126B550 AS DateTime), 54)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (289, N'SD11X5', N'2016120255', N'', 1, CAST(0x0000A6D000B0B30B AS DateTime), CAST(0x0000A6D00126B550 AS DateTime), 0, 0, 0, CAST(0x0000A6D001297470 AS DateTime), 55)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (290, N'SD11X5', N'2016120256', N'', 1, CAST(0x0000A6D000B0B30B AS DateTime), CAST(0x0000A6D001297470 AS DateTime), 0, 0, 0, CAST(0x0000A6D0012C3390 AS DateTime), 56)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (291, N'SD11X5', N'2016120257', N'', 1, CAST(0x0000A6D000B0B30B AS DateTime), CAST(0x0000A6D0012C3390 AS DateTime), 0, 0, 0, CAST(0x0000A6D0012EF2B0 AS DateTime), 57)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (292, N'SD11X5', N'2016120258', N'', 1, CAST(0x0000A6D000B0B30B AS DateTime), CAST(0x0000A6D0012EF2B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D00131B1D0 AS DateTime), 58)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (293, N'SD11X5', N'2016120259', N'', 1, CAST(0x0000A6D000B0B30B AS DateTime), CAST(0x0000A6D00131B1D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D0013470F0 AS DateTime), 59)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (294, N'SD11X5', N'2016120260', N'', 0, CAST(0x0000A6D000B0B30C AS DateTime), CAST(0x0000A6D0013470F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D001373010 AS DateTime), 60)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (295, N'SD11X5', N'2016120261', N'', 0, CAST(0x0000A6D000B0B30C AS DateTime), CAST(0x0000A6D001373010 AS DateTime), 0, 0, 0, CAST(0x0000A6D00139EF30 AS DateTime), 61)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (296, N'SD11X5', N'2016120262', N'', 0, CAST(0x0000A6D000B0B30C AS DateTime), CAST(0x0000A6D00139EF30 AS DateTime), 0, 0, 0, CAST(0x0000A6D0013CAE50 AS DateTime), 62)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (297, N'SD11X5', N'2016120263', N'', 0, CAST(0x0000A6D000B0B30C AS DateTime), CAST(0x0000A6D0013CAE50 AS DateTime), 0, 0, 0, CAST(0x0000A6D0013F6D70 AS DateTime), 63)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (298, N'SD11X5', N'2016120264', N'', 0, CAST(0x0000A6D000B0B30C AS DateTime), CAST(0x0000A6D0013F6D70 AS DateTime), 0, 0, 0, CAST(0x0000A6D001422C90 AS DateTime), 64)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (299, N'SD11X5', N'2016120265', N'', 0, CAST(0x0000A6D000B0B30D AS DateTime), CAST(0x0000A6D001422C90 AS DateTime), 0, 0, 0, CAST(0x0000A6D00144EBB0 AS DateTime), 65)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (300, N'SD11X5', N'2016120266', N'', 0, CAST(0x0000A6D000B0B30D AS DateTime), CAST(0x0000A6D00144EBB0 AS DateTime), 0, 0, 0, CAST(0x0000A6D00147AAD0 AS DateTime), 66)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (301, N'SD11X5', N'2016120267', N'', 0, CAST(0x0000A6D000B0B30D AS DateTime), CAST(0x0000A6D00147AAD0 AS DateTime), 0, 0, 0, CAST(0x0000A6D0014A69F0 AS DateTime), 67)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (302, N'SD11X5', N'2016120268', N'', 0, CAST(0x0000A6D000B0B30D AS DateTime), CAST(0x0000A6D0014A69F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D0014D2910 AS DateTime), 68)
GO
print 'Processed 300 total records'
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (303, N'SD11X5', N'2016120269', N'', 0, CAST(0x0000A6D000B0B30D AS DateTime), CAST(0x0000A6D0014D2910 AS DateTime), 0, 0, 0, CAST(0x0000A6D0014FE830 AS DateTime), 69)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (304, N'SD11X5', N'2016120270', N'', 0, CAST(0x0000A6D000B0B30E AS DateTime), CAST(0x0000A6D0014FE830 AS DateTime), 0, 0, 0, CAST(0x0000A6D00152A750 AS DateTime), 70)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (305, N'SD11X5', N'2016120271', N'', 0, CAST(0x0000A6D000B0B30E AS DateTime), CAST(0x0000A6D00152A750 AS DateTime), 0, 0, 0, CAST(0x0000A6D001556670 AS DateTime), 71)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (306, N'SD11X5', N'2016120272', N'', 0, CAST(0x0000A6D000B0B30E AS DateTime), CAST(0x0000A6D001556670 AS DateTime), 0, 0, 0, CAST(0x0000A6D001582590 AS DateTime), 72)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (307, N'SD11X5', N'2016120273', N'', 0, CAST(0x0000A6D000B0B30E AS DateTime), CAST(0x0000A6D001582590 AS DateTime), 0, 0, 0, CAST(0x0000A6D0015AE4B0 AS DateTime), 73)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (308, N'SD11X5', N'2016120274', N'', 0, CAST(0x0000A6D000B0B30E AS DateTime), CAST(0x0000A6D0015AE4B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D0015DA3D0 AS DateTime), 74)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (309, N'SD11X5', N'2016120275', N'', 0, CAST(0x0000A6D000B0B30E AS DateTime), CAST(0x0000A6D0015DA3D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D0016062F0 AS DateTime), 75)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (310, N'SD11X5', N'2016120276', N'', 0, CAST(0x0000A6D000B0B30E AS DateTime), CAST(0x0000A6D0016062F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D001632210 AS DateTime), 76)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (311, N'SD11X5', N'2016120277', N'', 0, CAST(0x0000A6D000B0B30E AS DateTime), CAST(0x0000A6D001632210 AS DateTime), 0, 0, 0, CAST(0x0000A6D00165E130 AS DateTime), 77)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (312, N'SD11X5', N'2016120278', N'', 0, CAST(0x0000A6D000B0B30F AS DateTime), CAST(0x0000A6D00165E130 AS DateTime), 0, 0, 0, CAST(0x0000A6D00168A050 AS DateTime), 78)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (313, N'SD11X5', N'2016120401', N'', 0, CAST(0x0000A6D2009F06F6 AS DateTime), CAST(0x0000A6D200926490 AS DateTime), 0, 0, 0, CAST(0x0000A6D2009523B0 AS DateTime), 1)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (314, N'SD11X5', N'2016120402', N'', 0, CAST(0x0000A6D2009F06F6 AS DateTime), CAST(0x0000A6D2009523B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D20097E2D0 AS DateTime), 2)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (315, N'SD11X5', N'2016120403', N'', 0, CAST(0x0000A6D2009F06F6 AS DateTime), CAST(0x0000A6D20097E2D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D2009AA1F0 AS DateTime), 3)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (316, N'SD11X5', N'2016120404', N'', 0, CAST(0x0000A6D2009F06F6 AS DateTime), CAST(0x0000A6D2009AA1F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D2009D6110 AS DateTime), 4)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (317, N'SD11X5', N'2016120405', N'', 1, CAST(0x0000A6D2009F06F7 AS DateTime), CAST(0x0000A6D2009D6110 AS DateTime), 0, 0, 0, CAST(0x0000A6D200A02030 AS DateTime), 5)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (318, N'SD11X5', N'2016120406', N'', 1, CAST(0x0000A6D2009F06F7 AS DateTime), CAST(0x0000A6D200A02030 AS DateTime), 0, 0, 0, CAST(0x0000A6D200A2DF50 AS DateTime), 6)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (319, N'SD11X5', N'2016120407', N'', 1, CAST(0x0000A6D2009F06F7 AS DateTime), CAST(0x0000A6D200A2DF50 AS DateTime), 0, 0, 0, CAST(0x0000A6D200A59E70 AS DateTime), 7)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (320, N'SD11X5', N'2016120408', N'', 1, CAST(0x0000A6D2009F06F7 AS DateTime), CAST(0x0000A6D200A59E70 AS DateTime), 0, 0, 0, CAST(0x0000A6D200A85D90 AS DateTime), 8)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (321, N'SD11X5', N'2016120409', N'', 1, CAST(0x0000A6D2009F06F8 AS DateTime), CAST(0x0000A6D200A85D90 AS DateTime), 0, 0, 0, CAST(0x0000A6D200AB1CB0 AS DateTime), 9)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (322, N'SD11X5', N'2016120410', N'', 1, CAST(0x0000A6D2009F06F8 AS DateTime), CAST(0x0000A6D200AB1CB0 AS DateTime), 0, 0, 0, CAST(0x0000A6D200ADDBD0 AS DateTime), 10)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (323, N'SD11X5', N'2016120411', N'', 1, CAST(0x0000A6D2009F06F8 AS DateTime), CAST(0x0000A6D200ADDBD0 AS DateTime), 0, 0, 0, CAST(0x0000A6D200B09AF0 AS DateTime), 11)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (324, N'SD11X5', N'2016120412', N'', 1, CAST(0x0000A6D2009F06F8 AS DateTime), CAST(0x0000A6D200B09AF0 AS DateTime), 0, 0, 0, CAST(0x0000A6D200B35A10 AS DateTime), 12)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (325, N'SD11X5', N'2016120413', N'', 1, CAST(0x0000A6D2009F06F9 AS DateTime), CAST(0x0000A6D200B35A10 AS DateTime), 0, 0, 0, CAST(0x0000A6D200B61930 AS DateTime), 13)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (326, N'SD11X5', N'2016120414', N'', 1, CAST(0x0000A6D2009F06F9 AS DateTime), CAST(0x0000A6D200B61930 AS DateTime), 0, 0, 0, CAST(0x0000A6D200B8D850 AS DateTime), 14)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (327, N'SD11X5', N'2016120415', N'', 1, CAST(0x0000A6D2009F06F9 AS DateTime), CAST(0x0000A6D200B8D850 AS DateTime), 0, 0, 0, CAST(0x0000A6D200BB9770 AS DateTime), 15)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (328, N'SD11X5', N'2016120416', N'', 1, CAST(0x0000A6D2009F06F9 AS DateTime), CAST(0x0000A6D200BB9770 AS DateTime), 0, 0, 0, CAST(0x0000A6D200BE5690 AS DateTime), 16)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (329, N'SD11X5', N'2016120417', N'', 1, CAST(0x0000A6D2009F06F9 AS DateTime), CAST(0x0000A6D200BE5690 AS DateTime), 0, 0, 0, CAST(0x0000A6D200C115B0 AS DateTime), 17)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (330, N'SD11X5', N'2016120418', N'', 1, CAST(0x0000A6D2009F06F9 AS DateTime), CAST(0x0000A6D200C115B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D200C3D4D0 AS DateTime), 18)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (331, N'SD11X5', N'2016120419', N'', 1, CAST(0x0000A6D2009F06FA AS DateTime), CAST(0x0000A6D200C3D4D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D200C693F0 AS DateTime), 19)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (332, N'SD11X5', N'2016120420', N'', 1, CAST(0x0000A6D2009F06FA AS DateTime), CAST(0x0000A6D200C693F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D200C95310 AS DateTime), 20)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (333, N'SD11X5', N'2016120421', N'', 1, CAST(0x0000A6D2009F06FA AS DateTime), CAST(0x0000A6D200C95310 AS DateTime), 0, 0, 0, CAST(0x0000A6D200CC1230 AS DateTime), 21)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (334, N'SD11X5', N'2016120422', N'', 1, CAST(0x0000A6D2009F06FA AS DateTime), CAST(0x0000A6D200CC1230 AS DateTime), 0, 0, 0, CAST(0x0000A6D200CED150 AS DateTime), 22)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (335, N'SD11X5', N'2016120423', N'', 1, CAST(0x0000A6D2009F06FB AS DateTime), CAST(0x0000A6D200CED150 AS DateTime), 0, 0, 0, CAST(0x0000A6D200D19070 AS DateTime), 23)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (336, N'SD11X5', N'2016120424', N'', 1, CAST(0x0000A6D2009F06FB AS DateTime), CAST(0x0000A6D200D19070 AS DateTime), 0, 0, 0, CAST(0x0000A6D200D44F90 AS DateTime), 24)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (337, N'SD11X5', N'2016120425', N'', 1, CAST(0x0000A6D2009F06FB AS DateTime), CAST(0x0000A6D200D44F90 AS DateTime), 0, 0, 0, CAST(0x0000A6D200D70EB0 AS DateTime), 25)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (338, N'SD11X5', N'2016120426', N'', 1, CAST(0x0000A6D2009F06FC AS DateTime), CAST(0x0000A6D200D70EB0 AS DateTime), 0, 0, 0, CAST(0x0000A6D200D9CDD0 AS DateTime), 26)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (339, N'SD11X5', N'2016120427', N'', 1, CAST(0x0000A6D2009F06FC AS DateTime), CAST(0x0000A6D200D9CDD0 AS DateTime), 0, 0, 0, CAST(0x0000A6D200DC8CF0 AS DateTime), 27)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (340, N'SD11X5', N'2016120428', N'', 1, CAST(0x0000A6D2009F06FC AS DateTime), CAST(0x0000A6D200DC8CF0 AS DateTime), 0, 0, 0, CAST(0x0000A6D200DF4C10 AS DateTime), 28)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (341, N'SD11X5', N'2016120429', N'', 1, CAST(0x0000A6D2009F06FC AS DateTime), CAST(0x0000A6D200DF4C10 AS DateTime), 0, 0, 0, CAST(0x0000A6D200E20B30 AS DateTime), 29)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (342, N'SD11X5', N'2016120430', N'', 1, CAST(0x0000A6D2009F06FC AS DateTime), CAST(0x0000A6D200E20B30 AS DateTime), 0, 0, 0, CAST(0x0000A6D200E4CA50 AS DateTime), 30)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (343, N'SD11X5', N'2016120431', N'', 1, CAST(0x0000A6D2009F06FC AS DateTime), CAST(0x0000A6D200E4CA50 AS DateTime), 0, 0, 0, CAST(0x0000A6D200E78970 AS DateTime), 31)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (344, N'SD11X5', N'2016120432', N'', 1, CAST(0x0000A6D2009F06FD AS DateTime), CAST(0x0000A6D200E78970 AS DateTime), 0, 0, 0, CAST(0x0000A6D200EA4890 AS DateTime), 32)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (345, N'SD11X5', N'2016120433', N'', 1, CAST(0x0000A6D2009F06FD AS DateTime), CAST(0x0000A6D200EA4890 AS DateTime), 0, 0, 0, CAST(0x0000A6D200ED07B0 AS DateTime), 33)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (346, N'SD11X5', N'2016120434', N'', 0, CAST(0x0000A6D2009F06FD AS DateTime), CAST(0x0000A6D200ED07B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D200EFC6D0 AS DateTime), 34)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (347, N'SD11X5', N'2016120435', N'', 0, CAST(0x0000A6D2009F06FD AS DateTime), CAST(0x0000A6D200EFC6D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D200F285F0 AS DateTime), 35)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (348, N'SD11X5', N'2016120436', N'', 1, CAST(0x0000A6D2009F06FE AS DateTime), CAST(0x0000A6D200F285F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D200F54510 AS DateTime), 36)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (349, N'SD11X5', N'2016120437', N'', 1, CAST(0x0000A6D2009F06FE AS DateTime), CAST(0x0000A6D200F54510 AS DateTime), 0, 0, 0, CAST(0x0000A6D200F80430 AS DateTime), 37)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (350, N'SD11X5', N'2016120438', N'', 1, CAST(0x0000A6D2009F06FE AS DateTime), CAST(0x0000A6D200F80430 AS DateTime), 0, 0, 0, CAST(0x0000A6D200FAC350 AS DateTime), 38)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (351, N'SD11X5', N'2016120439', N'', 1, CAST(0x0000A6D2009F06FE AS DateTime), CAST(0x0000A6D200FAC350 AS DateTime), 0, 0, 0, CAST(0x0000A6D200FD8270 AS DateTime), 39)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (352, N'SD11X5', N'2016120440', N'', 1, CAST(0x0000A6D2009F06FF AS DateTime), CAST(0x0000A6D200FD8270 AS DateTime), 0, 0, 0, CAST(0x0000A6D201004190 AS DateTime), 40)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (353, N'SD11X5', N'2016120441', N'', 1, CAST(0x0000A6D2009F06FF AS DateTime), CAST(0x0000A6D201004190 AS DateTime), 0, 0, 0, CAST(0x0000A6D2010300B0 AS DateTime), 41)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (354, N'SD11X5', N'2016120442', N'', 1, CAST(0x0000A6D2009F06FF AS DateTime), CAST(0x0000A6D2010300B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D20105BFD0 AS DateTime), 42)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (355, N'SD11X5', N'2016120443', N'', 1, CAST(0x0000A6D2009F06FF AS DateTime), CAST(0x0000A6D20105BFD0 AS DateTime), 0, 0, 0, CAST(0x0000A6D201087EF0 AS DateTime), 43)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (356, N'SD11X5', N'2016120444', N'', 1, CAST(0x0000A6D2009F06FF AS DateTime), CAST(0x0000A6D201087EF0 AS DateTime), 0, 0, 0, CAST(0x0000A6D2010B3E10 AS DateTime), 44)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (357, N'SD11X5', N'2016120445', N'', 1, CAST(0x0000A6D2009F06FF AS DateTime), CAST(0x0000A6D2010B3E10 AS DateTime), 0, 0, 0, CAST(0x0000A6D2010DFD30 AS DateTime), 45)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (358, N'SD11X5', N'2016120446', N'', 1, CAST(0x0000A6D2009F0700 AS DateTime), CAST(0x0000A6D2010DFD30 AS DateTime), 0, 0, 0, CAST(0x0000A6D20110BC50 AS DateTime), 46)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (359, N'SD11X5', N'2016120447', N'', 0, CAST(0x0000A6D2009F0700 AS DateTime), CAST(0x0000A6D20110BC50 AS DateTime), 0, 0, 0, CAST(0x0000A6D201137B70 AS DateTime), 47)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (360, N'SD11X5', N'2016120448', N'', 0, CAST(0x0000A6D2009F0700 AS DateTime), CAST(0x0000A6D201137B70 AS DateTime), 0, 0, 0, CAST(0x0000A6D201163A90 AS DateTime), 48)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (361, N'SD11X5', N'2016120449', N'', 0, CAST(0x0000A6D2009F0700 AS DateTime), CAST(0x0000A6D201163A90 AS DateTime), 0, 0, 0, CAST(0x0000A6D20118F9B0 AS DateTime), 49)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (362, N'SD11X5', N'2016120450', N'', 0, CAST(0x0000A6D2009F0700 AS DateTime), CAST(0x0000A6D20118F9B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D2011BB8D0 AS DateTime), 50)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (363, N'SD11X5', N'2016120451', N'', 0, CAST(0x0000A6D2009F0701 AS DateTime), CAST(0x0000A6D2011BB8D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D2011E77F0 AS DateTime), 51)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (364, N'SD11X5', N'2016120452', N'', 0, CAST(0x0000A6D2009F0701 AS DateTime), CAST(0x0000A6D2011E77F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D201213710 AS DateTime), 52)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (365, N'SD11X5', N'2016120453', N'', 1, CAST(0x0000A6D2009F0701 AS DateTime), CAST(0x0000A6D201213710 AS DateTime), 0, 0, 0, CAST(0x0000A6D20123F630 AS DateTime), 53)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (366, N'SD11X5', N'2016120454', N'', 1, CAST(0x0000A6D2009F0701 AS DateTime), CAST(0x0000A6D20123F630 AS DateTime), 0, 0, 0, CAST(0x0000A6D20126B550 AS DateTime), 54)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (367, N'SD11X5', N'2016120455', N'', 1, CAST(0x0000A6D2009F0701 AS DateTime), CAST(0x0000A6D20126B550 AS DateTime), 0, 0, 0, CAST(0x0000A6D201297470 AS DateTime), 55)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (368, N'SD11X5', N'2016120456', N'', 1, CAST(0x0000A6D2009F0701 AS DateTime), CAST(0x0000A6D201297470 AS DateTime), 0, 0, 0, CAST(0x0000A6D2012C3390 AS DateTime), 56)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (369, N'SD11X5', N'2016120457', N'', 1, CAST(0x0000A6D2009F0702 AS DateTime), CAST(0x0000A6D2012C3390 AS DateTime), 0, 0, 0, CAST(0x0000A6D2012EF2B0 AS DateTime), 57)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (370, N'SD11X5', N'2016120458', N'', 1, CAST(0x0000A6D2009F0702 AS DateTime), CAST(0x0000A6D2012EF2B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D20131B1D0 AS DateTime), 58)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (371, N'SD11X5', N'2016120459', N'', 1, CAST(0x0000A6D2009F0702 AS DateTime), CAST(0x0000A6D20131B1D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D2013470F0 AS DateTime), 59)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (372, N'SD11X5', N'2016120460', N'', 1, CAST(0x0000A6D2009F0702 AS DateTime), CAST(0x0000A6D2013470F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D201373010 AS DateTime), 60)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (373, N'SD11X5', N'2016120461', N'', 1, CAST(0x0000A6D2009F0702 AS DateTime), CAST(0x0000A6D201373010 AS DateTime), 0, 0, 0, CAST(0x0000A6D20139EF30 AS DateTime), 61)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (374, N'SD11X5', N'2016120462', N'', 1, CAST(0x0000A6D2009F0702 AS DateTime), CAST(0x0000A6D20139EF30 AS DateTime), 0, 0, 0, CAST(0x0000A6D2013CAE50 AS DateTime), 62)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (375, N'SD11X5', N'2016120463', N'', 1, CAST(0x0000A6D2009F0703 AS DateTime), CAST(0x0000A6D2013CAE50 AS DateTime), 0, 0, 0, CAST(0x0000A6D2013F6D70 AS DateTime), 63)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (376, N'SD11X5', N'2016120464', N'', 1, CAST(0x0000A6D2009F0703 AS DateTime), CAST(0x0000A6D2013F6D70 AS DateTime), 0, 0, 0, CAST(0x0000A6D201422C90 AS DateTime), 64)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (377, N'SD11X5', N'2016120465', N'', 1, CAST(0x0000A6D2009F0703 AS DateTime), CAST(0x0000A6D201422C90 AS DateTime), 0, 0, 0, CAST(0x0000A6D20144EBB0 AS DateTime), 65)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (378, N'SD11X5', N'2016120466', N'', 1, CAST(0x0000A6D2009F0703 AS DateTime), CAST(0x0000A6D20144EBB0 AS DateTime), 0, 0, 0, CAST(0x0000A6D20147AAD0 AS DateTime), 66)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (379, N'SD11X5', N'2016120467', N'', 1, CAST(0x0000A6D2009F0703 AS DateTime), CAST(0x0000A6D20147AAD0 AS DateTime), 0, 0, 0, CAST(0x0000A6D2014A69F0 AS DateTime), 67)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (380, N'SD11X5', N'2016120468', N'', 1, CAST(0x0000A6D2009F0703 AS DateTime), CAST(0x0000A6D2014A69F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D2014D2910 AS DateTime), 68)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (381, N'SD11X5', N'2016120469', N'', 1, CAST(0x0000A6D2009F0704 AS DateTime), CAST(0x0000A6D2014D2910 AS DateTime), 0, 0, 0, CAST(0x0000A6D2014FE830 AS DateTime), 69)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (382, N'SD11X5', N'2016120470', N'', 1, CAST(0x0000A6D2009F0704 AS DateTime), CAST(0x0000A6D2014FE830 AS DateTime), 0, 0, 0, CAST(0x0000A6D20152A750 AS DateTime), 70)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (383, N'SD11X5', N'2016120471', N'', 1, CAST(0x0000A6D2009F0704 AS DateTime), CAST(0x0000A6D20152A750 AS DateTime), 0, 0, 0, CAST(0x0000A6D201556670 AS DateTime), 71)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (384, N'SD11X5', N'2016120472', N'', 1, CAST(0x0000A6D2009F0704 AS DateTime), CAST(0x0000A6D201556670 AS DateTime), 0, 0, 0, CAST(0x0000A6D201582590 AS DateTime), 72)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (385, N'SD11X5', N'2016120473', N'', 0, CAST(0x0000A6D2009F0704 AS DateTime), CAST(0x0000A6D201582590 AS DateTime), 0, 0, 0, CAST(0x0000A6D2015AE4B0 AS DateTime), 73)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (386, N'SD11X5', N'2016120474', N'', 0, CAST(0x0000A6D2009F0705 AS DateTime), CAST(0x0000A6D2015AE4B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D2015DA3D0 AS DateTime), 74)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (387, N'SD11X5', N'2016120475', N'', 0, CAST(0x0000A6D2009F0705 AS DateTime), CAST(0x0000A6D2015DA3D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D2016062F0 AS DateTime), 75)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (388, N'SD11X5', N'2016120476', N'', 0, CAST(0x0000A6D2009F0705 AS DateTime), CAST(0x0000A6D2016062F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D201632210 AS DateTime), 76)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (389, N'SD11X5', N'2016120477', N'', 0, CAST(0x0000A6D2009F0705 AS DateTime), CAST(0x0000A6D201632210 AS DateTime), 0, 0, 0, CAST(0x0000A6D20165E130 AS DateTime), 77)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (390, N'SD11X5', N'2016120478', N'', 0, CAST(0x0000A6D2009F0705 AS DateTime), CAST(0x0000A6D20165E130 AS DateTime), 0, 0, 0, CAST(0x0000A6D20168A050 AS DateTime), 78)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (391, N'SD11X5', N'2016120501', N'', 0, CAST(0x0000A6D3009F06F6 AS DateTime), CAST(0x0000A6D300926490 AS DateTime), 0, 0, 0, CAST(0x0000A6D3009523B0 AS DateTime), 1)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (392, N'SD11X5', N'2016120502', N'', 0, CAST(0x0000A6D3009F06F7 AS DateTime), CAST(0x0000A6D3009523B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D30097E2D0 AS DateTime), 2)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (393, N'SD11X5', N'2016120503', N'', 0, CAST(0x0000A6D3009F06F7 AS DateTime), CAST(0x0000A6D30097E2D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D3009AA1F0 AS DateTime), 3)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (394, N'SD11X5', N'2016120504', N'', 0, CAST(0x0000A6D3009F06F8 AS DateTime), CAST(0x0000A6D3009AA1F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D3009D6110 AS DateTime), 4)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (395, N'SD11X5', N'2016120505', N'', 1, CAST(0x0000A6D3009F06F8 AS DateTime), CAST(0x0000A6D3009D6110 AS DateTime), 0, 0, 0, CAST(0x0000A6D300A02030 AS DateTime), 5)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (396, N'SD11X5', N'2016120506', N'', 1, CAST(0x0000A6D3009F06F9 AS DateTime), CAST(0x0000A6D300A02030 AS DateTime), 0, 0, 0, CAST(0x0000A6D300A2DF50 AS DateTime), 6)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (397, N'SD11X5', N'2016120507', N'', 1, CAST(0x0000A6D3009F06FA AS DateTime), CAST(0x0000A6D300A2DF50 AS DateTime), 0, 0, 0, CAST(0x0000A6D300A59E70 AS DateTime), 7)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (398, N'SD11X5', N'2016120508', N'', 1, CAST(0x0000A6D3009F06FA AS DateTime), CAST(0x0000A6D300A59E70 AS DateTime), 0, 0, 0, CAST(0x0000A6D300A85D90 AS DateTime), 8)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (399, N'SD11X5', N'2016120509', N'', 1, CAST(0x0000A6D3009F06FB AS DateTime), CAST(0x0000A6D300A85D90 AS DateTime), 0, 0, 0, CAST(0x0000A6D300AB1CB0 AS DateTime), 9)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (400, N'SD11X5', N'2016120510', N'', 1, CAST(0x0000A6D3009F06FB AS DateTime), CAST(0x0000A6D300AB1CB0 AS DateTime), 0, 0, 0, CAST(0x0000A6D300ADDBD0 AS DateTime), 10)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (401, N'SD11X5', N'2016120511', N'', 1, CAST(0x0000A6D3009F06FC AS DateTime), CAST(0x0000A6D300ADDBD0 AS DateTime), 0, 0, 0, CAST(0x0000A6D300B09AF0 AS DateTime), 11)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (402, N'SD11X5', N'2016120512', N'', 1, CAST(0x0000A6D3009F06FC AS DateTime), CAST(0x0000A6D300B09AF0 AS DateTime), 0, 0, 0, CAST(0x0000A6D300B35A10 AS DateTime), 12)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (403, N'SD11X5', N'2016120513', N'', 1, CAST(0x0000A6D3009F06FC AS DateTime), CAST(0x0000A6D300B35A10 AS DateTime), 0, 0, 0, CAST(0x0000A6D300B61930 AS DateTime), 13)
GO
print 'Processed 400 total records'
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (404, N'SD11X5', N'2016120514', N'', 1, CAST(0x0000A6D3009F06FD AS DateTime), CAST(0x0000A6D300B61930 AS DateTime), 0, 0, 0, CAST(0x0000A6D300B8D850 AS DateTime), 14)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (405, N'SD11X5', N'2016120515', N'', 1, CAST(0x0000A6D3009F06FD AS DateTime), CAST(0x0000A6D300B8D850 AS DateTime), 0, 0, 0, CAST(0x0000A6D300BB9770 AS DateTime), 15)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (406, N'SD11X5', N'2016120516', N'', 1, CAST(0x0000A6D3009F06FE AS DateTime), CAST(0x0000A6D300BB9770 AS DateTime), 0, 0, 0, CAST(0x0000A6D300BE5690 AS DateTime), 16)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (407, N'SD11X5', N'2016120517', N'', 1, CAST(0x0000A6D3009F06FE AS DateTime), CAST(0x0000A6D300BE5690 AS DateTime), 0, 0, 0, CAST(0x0000A6D300C115B0 AS DateTime), 17)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (408, N'SD11X5', N'2016120518', N'', 1, CAST(0x0000A6D3009F06FF AS DateTime), CAST(0x0000A6D300C115B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D300C3D4D0 AS DateTime), 18)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (409, N'SD11X5', N'2016120519', N'', 1, CAST(0x0000A6D3009F06FF AS DateTime), CAST(0x0000A6D300C3D4D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D300C693F0 AS DateTime), 19)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (410, N'SD11X5', N'2016120520', N'', 1, CAST(0x0000A6D3009F06FF AS DateTime), CAST(0x0000A6D300C693F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D300C95310 AS DateTime), 20)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (411, N'SD11X5', N'2016120521', N'', 1, CAST(0x0000A6D3009F0700 AS DateTime), CAST(0x0000A6D300C95310 AS DateTime), 0, 0, 0, CAST(0x0000A6D300CC1230 AS DateTime), 21)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (412, N'SD11X5', N'2016120522', N'', 1, CAST(0x0000A6D3009F0700 AS DateTime), CAST(0x0000A6D300CC1230 AS DateTime), 0, 0, 0, CAST(0x0000A6D300CED150 AS DateTime), 22)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (413, N'SD11X5', N'2016120523', N'', 0, CAST(0x0000A6D3009F0701 AS DateTime), CAST(0x0000A6D300CED150 AS DateTime), 0, 0, 0, CAST(0x0000A6D300D19070 AS DateTime), 23)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (414, N'SD11X5', N'2016120524', N'', 0, CAST(0x0000A6D3009F0701 AS DateTime), CAST(0x0000A6D300D19070 AS DateTime), 0, 0, 0, CAST(0x0000A6D300D44F90 AS DateTime), 24)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (415, N'SD11X5', N'2016120525', N'', 0, CAST(0x0000A6D3009F0702 AS DateTime), CAST(0x0000A6D300D44F90 AS DateTime), 0, 0, 0, CAST(0x0000A6D300D70EB0 AS DateTime), 25)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (416, N'SD11X5', N'2016120526', N'', 0, CAST(0x0000A6D3009F0702 AS DateTime), CAST(0x0000A6D300D70EB0 AS DateTime), 0, 0, 0, CAST(0x0000A6D300D9CDD0 AS DateTime), 26)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (417, N'SD11X5', N'2016120527', N'', 0, CAST(0x0000A6D3009F0702 AS DateTime), CAST(0x0000A6D300D9CDD0 AS DateTime), 0, 0, 0, CAST(0x0000A6D300DC8CF0 AS DateTime), 27)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (418, N'SD11X5', N'2016120528', N'', 0, CAST(0x0000A6D3009F0703 AS DateTime), CAST(0x0000A6D300DC8CF0 AS DateTime), 0, 0, 0, CAST(0x0000A6D300DF4C10 AS DateTime), 28)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (419, N'SD11X5', N'2016120529', N'', 0, CAST(0x0000A6D3009F0703 AS DateTime), CAST(0x0000A6D300DF4C10 AS DateTime), 0, 0, 0, CAST(0x0000A6D300E20B30 AS DateTime), 29)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (420, N'SD11X5', N'2016120530', N'', 1, CAST(0x0000A6D3009F0704 AS DateTime), CAST(0x0000A6D300E20B30 AS DateTime), 0, 0, 0, CAST(0x0000A6D300E4CA50 AS DateTime), 30)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (421, N'SD11X5', N'2016120531', N'', 1, CAST(0x0000A6D3009F0704 AS DateTime), CAST(0x0000A6D300E4CA50 AS DateTime), 0, 0, 0, CAST(0x0000A6D300E78970 AS DateTime), 31)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (422, N'SD11X5', N'2016120532', N'', 1, CAST(0x0000A6D3009F0705 AS DateTime), CAST(0x0000A6D300E78970 AS DateTime), 0, 0, 0, CAST(0x0000A6D300EA4890 AS DateTime), 32)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (423, N'SD11X5', N'2016120533', N'', 1, CAST(0x0000A6D3009F0705 AS DateTime), CAST(0x0000A6D300EA4890 AS DateTime), 0, 0, 0, CAST(0x0000A6D300ED07B0 AS DateTime), 33)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (424, N'SD11X5', N'2016120534', N'', 1, CAST(0x0000A6D3009F0706 AS DateTime), CAST(0x0000A6D300ED07B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D300EFC6D0 AS DateTime), 34)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (425, N'SD11X5', N'2016120535', N'', 1, CAST(0x0000A6D3009F0706 AS DateTime), CAST(0x0000A6D300EFC6D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D300F285F0 AS DateTime), 35)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (426, N'SD11X5', N'2016120536', N'', 1, CAST(0x0000A6D3009F0706 AS DateTime), CAST(0x0000A6D300F285F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D300F54510 AS DateTime), 36)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (427, N'SD11X5', N'2016120537', N'', 1, CAST(0x0000A6D3009F0707 AS DateTime), CAST(0x0000A6D300F54510 AS DateTime), 0, 0, 0, CAST(0x0000A6D300F80430 AS DateTime), 37)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (428, N'SD11X5', N'2016120538', N'', 1, CAST(0x0000A6D3009F0707 AS DateTime), CAST(0x0000A6D300F80430 AS DateTime), 0, 0, 0, CAST(0x0000A6D300FAC350 AS DateTime), 38)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (429, N'SD11X5', N'2016120539', N'', 1, CAST(0x0000A6D3009F0707 AS DateTime), CAST(0x0000A6D300FAC350 AS DateTime), 0, 0, 0, CAST(0x0000A6D300FD8270 AS DateTime), 39)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (430, N'SD11X5', N'2016120540', N'', 1, CAST(0x0000A6D3009F0707 AS DateTime), CAST(0x0000A6D300FD8270 AS DateTime), 0, 0, 0, CAST(0x0000A6D301004190 AS DateTime), 40)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (431, N'SD11X5', N'2016120541', N'', 1, CAST(0x0000A6D3009F0708 AS DateTime), CAST(0x0000A6D301004190 AS DateTime), 0, 0, 0, CAST(0x0000A6D3010300B0 AS DateTime), 41)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (432, N'SD11X5', N'2016120542', N'', 1, CAST(0x0000A6D3009F0708 AS DateTime), CAST(0x0000A6D3010300B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D30105BFD0 AS DateTime), 42)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (433, N'SD11X5', N'2016120543', N'', 1, CAST(0x0000A6D3009F0708 AS DateTime), CAST(0x0000A6D30105BFD0 AS DateTime), 0, 0, 0, CAST(0x0000A6D301087EF0 AS DateTime), 43)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (434, N'SD11X5', N'2016120544', N'', 1, CAST(0x0000A6D3009F0708 AS DateTime), CAST(0x0000A6D301087EF0 AS DateTime), 0, 0, 0, CAST(0x0000A6D3010B3E10 AS DateTime), 44)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (435, N'SD11X5', N'2016120545', N'', 1, CAST(0x0000A6D3009F0708 AS DateTime), CAST(0x0000A6D3010B3E10 AS DateTime), 0, 0, 0, CAST(0x0000A6D3010DFD30 AS DateTime), 45)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (436, N'SD11X5', N'2016120546', N'', 1, CAST(0x0000A6D3009F0709 AS DateTime), CAST(0x0000A6D3010DFD30 AS DateTime), 0, 0, 0, CAST(0x0000A6D30110BC50 AS DateTime), 46)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (437, N'SD11X5', N'2016120547', N'', 1, CAST(0x0000A6D3009F0709 AS DateTime), CAST(0x0000A6D30110BC50 AS DateTime), 0, 0, 0, CAST(0x0000A6D301137B70 AS DateTime), 47)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (438, N'SD11X5', N'2016120548', N'', 1, CAST(0x0000A6D3009F0709 AS DateTime), CAST(0x0000A6D301137B70 AS DateTime), 0, 0, 0, CAST(0x0000A6D301163A90 AS DateTime), 48)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (439, N'SD11X5', N'2016120549', N'', 1, CAST(0x0000A6D3009F070A AS DateTime), CAST(0x0000A6D301163A90 AS DateTime), 0, 0, 0, CAST(0x0000A6D30118F9B0 AS DateTime), 49)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (440, N'SD11X5', N'2016120550', N'', 1, CAST(0x0000A6D3009F070A AS DateTime), CAST(0x0000A6D30118F9B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D3011BB8D0 AS DateTime), 50)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (441, N'SD11X5', N'2016120551', N'', 1, CAST(0x0000A6D3009F070A AS DateTime), CAST(0x0000A6D3011BB8D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D3011E77F0 AS DateTime), 51)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (442, N'SD11X5', N'2016120552', N'', 1, CAST(0x0000A6D3009F070A AS DateTime), CAST(0x0000A6D3011E77F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D301213710 AS DateTime), 52)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (443, N'SD11X5', N'2016120553', N'', 1, CAST(0x0000A6D3009F070B AS DateTime), CAST(0x0000A6D301213710 AS DateTime), 0, 0, 0, CAST(0x0000A6D30123F630 AS DateTime), 53)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (444, N'SD11X5', N'2016120554', N'', 1, CAST(0x0000A6D3009F070B AS DateTime), CAST(0x0000A6D30123F630 AS DateTime), 0, 0, 0, CAST(0x0000A6D30126B550 AS DateTime), 54)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (445, N'SD11X5', N'2016120555', N'', 1, CAST(0x0000A6D3009F070B AS DateTime), CAST(0x0000A6D30126B550 AS DateTime), 0, 0, 0, CAST(0x0000A6D301297470 AS DateTime), 55)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (446, N'SD11X5', N'2016120556', N'', 1, CAST(0x0000A6D3009F070B AS DateTime), CAST(0x0000A6D301297470 AS DateTime), 0, 0, 0, CAST(0x0000A6D3012C3390 AS DateTime), 56)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (447, N'SD11X5', N'2016120557', N'', 0, CAST(0x0000A6D3009F070C AS DateTime), CAST(0x0000A6D3012C3390 AS DateTime), 0, 0, 0, CAST(0x0000A6D3012EF2B0 AS DateTime), 57)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (448, N'SD11X5', N'2016120558', N'', 0, CAST(0x0000A6D3009F070C AS DateTime), CAST(0x0000A6D3012EF2B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D30131B1D0 AS DateTime), 58)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (449, N'SD11X5', N'2016120559', N'', 0, CAST(0x0000A6D3009F070C AS DateTime), CAST(0x0000A6D30131B1D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D3013470F0 AS DateTime), 59)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (450, N'SD11X5', N'2016120560', N'', 0, CAST(0x0000A6D3009F070C AS DateTime), CAST(0x0000A6D3013470F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D301373010 AS DateTime), 60)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (451, N'SD11X5', N'2016120561', N'', 0, CAST(0x0000A6D3009F070D AS DateTime), CAST(0x0000A6D301373010 AS DateTime), 0, 0, 0, CAST(0x0000A6D30139EF30 AS DateTime), 61)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (452, N'SD11X5', N'2016120562', N'', 0, CAST(0x0000A6D3009F070D AS DateTime), CAST(0x0000A6D30139EF30 AS DateTime), 0, 0, 0, CAST(0x0000A6D3013CAE50 AS DateTime), 62)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (453, N'SD11X5', N'2016120563', N'', 0, CAST(0x0000A6D3009F070D AS DateTime), CAST(0x0000A6D3013CAE50 AS DateTime), 0, 0, 0, CAST(0x0000A6D3013F6D70 AS DateTime), 63)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (454, N'SD11X5', N'2016120564', N'', 0, CAST(0x0000A6D3009F070E AS DateTime), CAST(0x0000A6D3013F6D70 AS DateTime), 0, 0, 0, CAST(0x0000A6D301422C90 AS DateTime), 64)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (455, N'SD11X5', N'2016120565', N'', 0, CAST(0x0000A6D3009F070E AS DateTime), CAST(0x0000A6D301422C90 AS DateTime), 0, 0, 0, CAST(0x0000A6D30144EBB0 AS DateTime), 65)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (456, N'SD11X5', N'2016120566', N'', 0, CAST(0x0000A6D3009F070E AS DateTime), CAST(0x0000A6D30144EBB0 AS DateTime), 0, 0, 0, CAST(0x0000A6D30147AAD0 AS DateTime), 66)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (457, N'SD11X5', N'2016120567', N'', 0, CAST(0x0000A6D3009F070E AS DateTime), CAST(0x0000A6D30147AAD0 AS DateTime), 0, 0, 0, CAST(0x0000A6D3014A69F0 AS DateTime), 67)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (458, N'SD11X5', N'2016120568', N'', 0, CAST(0x0000A6D3009F070E AS DateTime), CAST(0x0000A6D3014A69F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D3014D2910 AS DateTime), 68)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (459, N'SD11X5', N'2016120569', N'', 0, CAST(0x0000A6D3009F070F AS DateTime), CAST(0x0000A6D3014D2910 AS DateTime), 0, 0, 0, CAST(0x0000A6D3014FE830 AS DateTime), 69)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (460, N'SD11X5', N'2016120570', N'', 0, CAST(0x0000A6D3009F070F AS DateTime), CAST(0x0000A6D3014FE830 AS DateTime), 0, 0, 0, CAST(0x0000A6D30152A750 AS DateTime), 70)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (461, N'SD11X5', N'2016120571', N'', 0, CAST(0x0000A6D3009F070F AS DateTime), CAST(0x0000A6D30152A750 AS DateTime), 0, 0, 0, CAST(0x0000A6D301556670 AS DateTime), 71)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (462, N'SD11X5', N'2016120572', N'', 0, CAST(0x0000A6D3009F070F AS DateTime), CAST(0x0000A6D301556670 AS DateTime), 0, 0, 0, CAST(0x0000A6D301582590 AS DateTime), 72)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (463, N'SD11X5', N'2016120573', N'', 0, CAST(0x0000A6D3009F0710 AS DateTime), CAST(0x0000A6D301582590 AS DateTime), 0, 0, 0, CAST(0x0000A6D3015AE4B0 AS DateTime), 73)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (464, N'SD11X5', N'2016120574', N'', 0, CAST(0x0000A6D3009F0710 AS DateTime), CAST(0x0000A6D3015AE4B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D3015DA3D0 AS DateTime), 74)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (465, N'SD11X5', N'2016120575', N'', 0, CAST(0x0000A6D3009F0710 AS DateTime), CAST(0x0000A6D3015DA3D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D3016062F0 AS DateTime), 75)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (466, N'SD11X5', N'2016120576', N'', 0, CAST(0x0000A6D3009F0710 AS DateTime), CAST(0x0000A6D3016062F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D301632210 AS DateTime), 76)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (467, N'SD11X5', N'2016120577', N'', 0, CAST(0x0000A6D3009F0710 AS DateTime), CAST(0x0000A6D301632210 AS DateTime), 0, 0, 0, CAST(0x0000A6D30165E130 AS DateTime), 77)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (468, N'SD11X5', N'2016120578', N'', 0, CAST(0x0000A6D3009F0711 AS DateTime), CAST(0x0000A6D30165E130 AS DateTime), 0, 0, 0, CAST(0x0000A6D30168A050 AS DateTime), 78)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (469, N'SD11X5', N'2016120601', N'01 02 03 04 05', 2, CAST(0x0000A6D4009F06F4 AS DateTime), CAST(0x0000A6D400926490 AS DateTime), 0, 0, 0, CAST(0x0000A6D4009523B0 AS DateTime), 1)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (470, N'SD11X5', N'2016120602', N'', 0, CAST(0x0000A6D4009F06F5 AS DateTime), CAST(0x0000A6D4009523B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D40097E2D0 AS DateTime), 2)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (471, N'SD11X5', N'2016120603', N'', 0, CAST(0x0000A6D4009F06F5 AS DateTime), CAST(0x0000A6D40097E2D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D4009AA1F0 AS DateTime), 3)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (472, N'SD11X5', N'2016120604', N'', 0, CAST(0x0000A6D4009F06F5 AS DateTime), CAST(0x0000A6D4009AA1F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D4009D6110 AS DateTime), 4)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (473, N'SD11X5', N'2016120605', N'', 0, CAST(0x0000A6D4009F06F6 AS DateTime), CAST(0x0000A6D4009D6110 AS DateTime), 0, 0, 0, CAST(0x0000A6D400A02030 AS DateTime), 5)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (474, N'SD11X5', N'2016120606', N'', 1, CAST(0x0000A6D4009F06F6 AS DateTime), CAST(0x0000A6D400A02030 AS DateTime), 0, 0, 0, CAST(0x0000A6D400A2DF50 AS DateTime), 6)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (475, N'SD11X5', N'2016120607', N'', 1, CAST(0x0000A6D4009F06F6 AS DateTime), CAST(0x0000A6D400A2DF50 AS DateTime), 0, 0, 0, CAST(0x0000A6D400A59E70 AS DateTime), 7)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (476, N'SD11X5', N'2016120608', N'', 1, CAST(0x0000A6D4009F06F6 AS DateTime), CAST(0x0000A6D400A59E70 AS DateTime), 0, 0, 0, CAST(0x0000A6D400A85D90 AS DateTime), 8)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (477, N'SD11X5', N'2016120609', N'', 1, CAST(0x0000A6D4009F06F6 AS DateTime), CAST(0x0000A6D400A85D90 AS DateTime), 0, 0, 0, CAST(0x0000A6D400AB1CB0 AS DateTime), 9)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (478, N'SD11X5', N'2016120610', N'', 1, CAST(0x0000A6D4009F06F7 AS DateTime), CAST(0x0000A6D400AB1CB0 AS DateTime), 0, 0, 0, CAST(0x0000A6D400ADDBD0 AS DateTime), 10)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (479, N'SD11X5', N'2016120611', N'', 1, CAST(0x0000A6D4009F06F7 AS DateTime), CAST(0x0000A6D400ADDBD0 AS DateTime), 0, 0, 0, CAST(0x0000A6D400B09AF0 AS DateTime), 11)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (480, N'SD11X5', N'2016120612', N'', 1, CAST(0x0000A6D4009F06F7 AS DateTime), CAST(0x0000A6D400B09AF0 AS DateTime), 0, 0, 0, CAST(0x0000A6D400B35A10 AS DateTime), 12)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (481, N'SD11X5', N'2016120613', N'', 1, CAST(0x0000A6D4009F06F8 AS DateTime), CAST(0x0000A6D400B35A10 AS DateTime), 0, 0, 0, CAST(0x0000A6D400B61930 AS DateTime), 13)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (482, N'SD11X5', N'2016120614', N'', 1, CAST(0x0000A6D4009F06F8 AS DateTime), CAST(0x0000A6D400B61930 AS DateTime), 0, 0, 0, CAST(0x0000A6D400B8D850 AS DateTime), 14)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (483, N'SD11X5', N'2016120615', N'', 1, CAST(0x0000A6D4009F06F8 AS DateTime), CAST(0x0000A6D400B8D850 AS DateTime), 0, 0, 0, CAST(0x0000A6D400BB9770 AS DateTime), 15)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (484, N'SD11X5', N'2016120616', N'', 1, CAST(0x0000A6D4009F06F8 AS DateTime), CAST(0x0000A6D400BB9770 AS DateTime), 0, 0, 0, CAST(0x0000A6D400BE5690 AS DateTime), 16)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (485, N'SD11X5', N'2016120617', N'', 1, CAST(0x0000A6D4009F06F9 AS DateTime), CAST(0x0000A6D400BE5690 AS DateTime), 0, 0, 0, CAST(0x0000A6D400C115B0 AS DateTime), 17)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (486, N'SD11X5', N'2016120618', N'', 1, CAST(0x0000A6D4009F06F9 AS DateTime), CAST(0x0000A6D400C115B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D400C3D4D0 AS DateTime), 18)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (487, N'SD11X5', N'2016120619', N'', 1, CAST(0x0000A6D4009F06F9 AS DateTime), CAST(0x0000A6D400C3D4D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D400C693F0 AS DateTime), 19)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (488, N'SD11X5', N'2016120620', N'', 1, CAST(0x0000A6D4009F06F9 AS DateTime), CAST(0x0000A6D400C693F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D400C95310 AS DateTime), 20)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (489, N'SD11X5', N'2016120621', N'', 1, CAST(0x0000A6D4009F06FA AS DateTime), CAST(0x0000A6D400C95310 AS DateTime), 0, 0, 0, CAST(0x0000A6D400CC1230 AS DateTime), 21)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (490, N'SD11X5', N'2016120622', N'', 1, CAST(0x0000A6D4009F06FA AS DateTime), CAST(0x0000A6D400CC1230 AS DateTime), 0, 0, 0, CAST(0x0000A6D400CED150 AS DateTime), 22)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (491, N'SD11X5', N'2016120623', N'', 0, CAST(0x0000A6D4009F06FA AS DateTime), CAST(0x0000A6D400CED150 AS DateTime), 0, 0, 0, CAST(0x0000A6D400D19070 AS DateTime), 23)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (492, N'SD11X5', N'2016120624', N'', 0, CAST(0x0000A6D4009F06FA AS DateTime), CAST(0x0000A6D400D19070 AS DateTime), 0, 0, 0, CAST(0x0000A6D400D44F90 AS DateTime), 24)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (493, N'SD11X5', N'2016120625', N'', 0, CAST(0x0000A6D4009F06FB AS DateTime), CAST(0x0000A6D400D44F90 AS DateTime), 0, 0, 0, CAST(0x0000A6D400D70EB0 AS DateTime), 25)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (494, N'SD11X5', N'2016120626', N'', 0, CAST(0x0000A6D4009F06FB AS DateTime), CAST(0x0000A6D400D70EB0 AS DateTime), 0, 0, 0, CAST(0x0000A6D400D9CDD0 AS DateTime), 26)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (495, N'SD11X5', N'2016120627', N'', 0, CAST(0x0000A6D4009F06FB AS DateTime), CAST(0x0000A6D400D9CDD0 AS DateTime), 0, 0, 0, CAST(0x0000A6D400DC8CF0 AS DateTime), 27)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (496, N'SD11X5', N'2016120628', N'', 0, CAST(0x0000A6D4009F06FC AS DateTime), CAST(0x0000A6D400DC8CF0 AS DateTime), 0, 0, 0, CAST(0x0000A6D400DF4C10 AS DateTime), 28)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (497, N'SD11X5', N'2016120629', N'', 0, CAST(0x0000A6D4009F06FC AS DateTime), CAST(0x0000A6D400DF4C10 AS DateTime), 0, 0, 0, CAST(0x0000A6D400E20B30 AS DateTime), 29)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (498, N'SD11X5', N'2016120630', N'', 0, CAST(0x0000A6D4009F06FC AS DateTime), CAST(0x0000A6D400E20B30 AS DateTime), 0, 0, 0, CAST(0x0000A6D400E4CA50 AS DateTime), 30)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (499, N'SD11X5', N'2016120631', N'', 1, CAST(0x0000A6D4009F06FC AS DateTime), CAST(0x0000A6D400E4CA50 AS DateTime), 0, 0, 0, CAST(0x0000A6D400E78970 AS DateTime), 31)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (500, N'SD11X5', N'2016120632', N'', 1, CAST(0x0000A6D4009F06FC AS DateTime), CAST(0x0000A6D400E78970 AS DateTime), 0, 0, 0, CAST(0x0000A6D400EA4890 AS DateTime), 32)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (501, N'SD11X5', N'2016120633', N'', 1, CAST(0x0000A6D4009F06FD AS DateTime), CAST(0x0000A6D400EA4890 AS DateTime), 0, 0, 0, CAST(0x0000A6D400ED07B0 AS DateTime), 33)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (502, N'SD11X5', N'2016120634', N'', 1, CAST(0x0000A6D4009F06FD AS DateTime), CAST(0x0000A6D400ED07B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D400EFC6D0 AS DateTime), 34)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (503, N'SD11X5', N'2016120635', N'', 1, CAST(0x0000A6D4009F06FD AS DateTime), CAST(0x0000A6D400EFC6D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D400F285F0 AS DateTime), 35)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (504, N'SD11X5', N'2016120636', N'', 1, CAST(0x0000A6D4009F06FE AS DateTime), CAST(0x0000A6D400F285F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D400F54510 AS DateTime), 36)
GO
print 'Processed 500 total records'
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (505, N'SD11X5', N'2016120637', N'', 1, CAST(0x0000A6D4009F06FE AS DateTime), CAST(0x0000A6D400F54510 AS DateTime), 0, 0, 0, CAST(0x0000A6D400F80430 AS DateTime), 37)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (506, N'SD11X5', N'2016120638', N'', 1, CAST(0x0000A6D4009F06FE AS DateTime), CAST(0x0000A6D400F80430 AS DateTime), 0, 0, 0, CAST(0x0000A6D400FAC350 AS DateTime), 38)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (507, N'SD11X5', N'2016120639', N'', 1, CAST(0x0000A6D4009F06FF AS DateTime), CAST(0x0000A6D400FAC350 AS DateTime), 0, 0, 0, CAST(0x0000A6D400FD8270 AS DateTime), 39)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (508, N'SD11X5', N'2016120640', N'', 1, CAST(0x0000A6D4009F06FF AS DateTime), CAST(0x0000A6D400FD8270 AS DateTime), 0, 0, 0, CAST(0x0000A6D401004190 AS DateTime), 40)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (509, N'SD11X5', N'2016120641', N'', 1, CAST(0x0000A6D4009F06FF AS DateTime), CAST(0x0000A6D401004190 AS DateTime), 0, 0, 0, CAST(0x0000A6D4010300B0 AS DateTime), 41)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (510, N'SD11X5', N'2016120642', N'', 1, CAST(0x0000A6D4009F06FF AS DateTime), CAST(0x0000A6D4010300B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D40105BFD0 AS DateTime), 42)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (511, N'SD11X5', N'2016120643', N'', 1, CAST(0x0000A6D4009F06FF AS DateTime), CAST(0x0000A6D40105BFD0 AS DateTime), 0, 0, 0, CAST(0x0000A6D401087EF0 AS DateTime), 43)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (512, N'SD11X5', N'2016120644', N'', 1, CAST(0x0000A6D4009F0700 AS DateTime), CAST(0x0000A6D401087EF0 AS DateTime), 0, 0, 0, CAST(0x0000A6D4010B3E10 AS DateTime), 44)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (513, N'SD11X5', N'2016120645', N'', 1, CAST(0x0000A6D4009F0700 AS DateTime), CAST(0x0000A6D4010B3E10 AS DateTime), 0, 0, 0, CAST(0x0000A6D4010DFD30 AS DateTime), 45)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (514, N'SD11X5', N'2016120646', N'', 1, CAST(0x0000A6D4009F0700 AS DateTime), CAST(0x0000A6D4010DFD30 AS DateTime), 0, 0, 0, CAST(0x0000A6D40110BC50 AS DateTime), 46)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (515, N'SD11X5', N'2016120647', N'', 1, CAST(0x0000A6D4009F0701 AS DateTime), CAST(0x0000A6D40110BC50 AS DateTime), 0, 0, 0, CAST(0x0000A6D401137B70 AS DateTime), 47)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (516, N'SD11X5', N'2016120648', N'', 1, CAST(0x0000A6D4009F0701 AS DateTime), CAST(0x0000A6D401137B70 AS DateTime), 0, 0, 0, CAST(0x0000A6D401163A90 AS DateTime), 48)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (517, N'SD11X5', N'2016120649', N'', 1, CAST(0x0000A6D4009F0701 AS DateTime), CAST(0x0000A6D401163A90 AS DateTime), 0, 0, 0, CAST(0x0000A6D40118F9B0 AS DateTime), 49)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (518, N'SD11X5', N'2016120650', N'', 1, CAST(0x0000A6D4009F0702 AS DateTime), CAST(0x0000A6D40118F9B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D4011BB8D0 AS DateTime), 50)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (519, N'SD11X5', N'2016120651', N'', 1, CAST(0x0000A6D4009F0702 AS DateTime), CAST(0x0000A6D4011BB8D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D4011E77F0 AS DateTime), 51)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (520, N'SD11X5', N'2016120652', N'', 0, CAST(0x0000A6D4009F0702 AS DateTime), CAST(0x0000A6D4011E77F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D401213710 AS DateTime), 52)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (521, N'SD11X5', N'2016120653', N'', 1, CAST(0x0000A6D4009F0702 AS DateTime), CAST(0x0000A6D401213710 AS DateTime), 0, 0, 0, CAST(0x0000A6D40123F630 AS DateTime), 53)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (522, N'SD11X5', N'2016120654', N'', 0, CAST(0x0000A6D4009F0702 AS DateTime), CAST(0x0000A6D40123F630 AS DateTime), 0, 0, 0, CAST(0x0000A6D40126B550 AS DateTime), 54)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (523, N'SD11X5', N'2016120655', N'', 1, CAST(0x0000A6D4009F0703 AS DateTime), CAST(0x0000A6D40126B550 AS DateTime), 0, 0, 0, CAST(0x0000A6D401297470 AS DateTime), 55)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (524, N'SD11X5', N'2016120656', N'', 0, CAST(0x0000A6D4009F0703 AS DateTime), CAST(0x0000A6D401297470 AS DateTime), 0, 0, 0, CAST(0x0000A6D4012C3390 AS DateTime), 56)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (525, N'SD11X5', N'2016120657', N'', 0, CAST(0x0000A6D4009F0703 AS DateTime), CAST(0x0000A6D4012C3390 AS DateTime), 0, 0, 0, CAST(0x0000A6D4012EF2B0 AS DateTime), 57)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (526, N'SD11X5', N'2016120658', N'', 0, CAST(0x0000A6D4009F0704 AS DateTime), CAST(0x0000A6D4012EF2B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D40131B1D0 AS DateTime), 58)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (527, N'SD11X5', N'2016120659', N'', 0, CAST(0x0000A6D4009F0704 AS DateTime), CAST(0x0000A6D40131B1D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D4013470F0 AS DateTime), 59)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (528, N'SD11X5', N'2016120660', N'', 0, CAST(0x0000A6D4009F0704 AS DateTime), CAST(0x0000A6D4013470F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D401373010 AS DateTime), 60)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (529, N'SD11X5', N'2016120661', N'', 0, CAST(0x0000A6D4009F0704 AS DateTime), CAST(0x0000A6D401373010 AS DateTime), 0, 0, 0, CAST(0x0000A6D40139EF30 AS DateTime), 61)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (530, N'SD11X5', N'2016120662', N'', 0, CAST(0x0000A6D4009F0705 AS DateTime), CAST(0x0000A6D40139EF30 AS DateTime), 0, 0, 0, CAST(0x0000A6D4013CAE50 AS DateTime), 62)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (531, N'SD11X5', N'2016120663', N'', 0, CAST(0x0000A6D4009F0705 AS DateTime), CAST(0x0000A6D4013CAE50 AS DateTime), 0, 0, 0, CAST(0x0000A6D4013F6D70 AS DateTime), 63)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (532, N'SD11X5', N'2016120664', N'', 0, CAST(0x0000A6D4009F0705 AS DateTime), CAST(0x0000A6D4013F6D70 AS DateTime), 0, 0, 0, CAST(0x0000A6D401422C90 AS DateTime), 64)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (533, N'SD11X5', N'2016120665', N'', 0, CAST(0x0000A6D4009F0705 AS DateTime), CAST(0x0000A6D401422C90 AS DateTime), 0, 0, 0, CAST(0x0000A6D40144EBB0 AS DateTime), 65)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (534, N'SD11X5', N'2016120666', N'', 0, CAST(0x0000A6D4009F0706 AS DateTime), CAST(0x0000A6D40144EBB0 AS DateTime), 0, 0, 0, CAST(0x0000A6D40147AAD0 AS DateTime), 66)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (535, N'SD11X5', N'2016120667', N'', 0, CAST(0x0000A6D4009F0706 AS DateTime), CAST(0x0000A6D40147AAD0 AS DateTime), 0, 0, 0, CAST(0x0000A6D4014A69F0 AS DateTime), 67)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (536, N'SD11X5', N'2016120668', N'', 0, CAST(0x0000A6D4009F0706 AS DateTime), CAST(0x0000A6D4014A69F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D4014D2910 AS DateTime), 68)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (537, N'SD11X5', N'2016120669', N'', 0, CAST(0x0000A6D4009F0707 AS DateTime), CAST(0x0000A6D4014D2910 AS DateTime), 0, 0, 0, CAST(0x0000A6D4014FE830 AS DateTime), 69)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (538, N'SD11X5', N'2016120670', N'', 0, CAST(0x0000A6D4009F0707 AS DateTime), CAST(0x0000A6D4014FE830 AS DateTime), 0, 0, 0, CAST(0x0000A6D40152A750 AS DateTime), 70)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (539, N'SD11X5', N'2016120671', N'', 0, CAST(0x0000A6D4009F0707 AS DateTime), CAST(0x0000A6D40152A750 AS DateTime), 0, 0, 0, CAST(0x0000A6D401556670 AS DateTime), 71)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (540, N'SD11X5', N'2016120672', N'', 0, CAST(0x0000A6D4009F0708 AS DateTime), CAST(0x0000A6D401556670 AS DateTime), 0, 0, 0, CAST(0x0000A6D401582590 AS DateTime), 72)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (541, N'SD11X5', N'2016120673', N'', 0, CAST(0x0000A6D4009F0708 AS DateTime), CAST(0x0000A6D401582590 AS DateTime), 0, 0, 0, CAST(0x0000A6D4015AE4B0 AS DateTime), 73)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (542, N'SD11X5', N'2016120674', N'', 0, CAST(0x0000A6D4009F0708 AS DateTime), CAST(0x0000A6D4015AE4B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D4015DA3D0 AS DateTime), 74)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (543, N'SD11X5', N'2016120675', N'', 0, CAST(0x0000A6D4009F0708 AS DateTime), CAST(0x0000A6D4015DA3D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D4016062F0 AS DateTime), 75)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (544, N'SD11X5', N'2016120676', N'', 0, CAST(0x0000A6D4009F0708 AS DateTime), CAST(0x0000A6D4016062F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D401632210 AS DateTime), 76)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (545, N'SD11X5', N'2016120677', N'', 0, CAST(0x0000A6D4009F0709 AS DateTime), CAST(0x0000A6D401632210 AS DateTime), 0, 0, 0, CAST(0x0000A6D40165E130 AS DateTime), 77)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (546, N'SD11X5', N'2016120678', N'', 0, CAST(0x0000A6D4009F0709 AS DateTime), CAST(0x0000A6D40165E130 AS DateTime), 0, 0, 0, CAST(0x0000A6D40168A050 AS DateTime), 78)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (547, N'SD11X5', N'2016120701', N'', 0, CAST(0x0000A6D5009F06F9 AS DateTime), CAST(0x0000A6D500926490 AS DateTime), 0, 0, 0, CAST(0x0000A6D5009523B0 AS DateTime), 1)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (548, N'SD11X5', N'2016120702', N'', 0, CAST(0x0000A6D5009F06F9 AS DateTime), CAST(0x0000A6D5009523B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D50097E2D0 AS DateTime), 2)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (549, N'SD11X5', N'2016120703', N'', 0, CAST(0x0000A6D5009F06FA AS DateTime), CAST(0x0000A6D50097E2D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D5009AA1F0 AS DateTime), 3)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (550, N'SD11X5', N'2016120704', N'', 0, CAST(0x0000A6D5009F06FA AS DateTime), CAST(0x0000A6D5009AA1F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D5009D6110 AS DateTime), 4)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (551, N'SD11X5', N'2016120705', N'', 1, CAST(0x0000A6D5009F06FB AS DateTime), CAST(0x0000A6D5009D6110 AS DateTime), 0, 0, 0, CAST(0x0000A6D500A02030 AS DateTime), 5)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (552, N'SD11X5', N'2016120706', N'', 1, CAST(0x0000A6D5009F06FB AS DateTime), CAST(0x0000A6D500A02030 AS DateTime), 0, 0, 0, CAST(0x0000A6D500A2DF50 AS DateTime), 6)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (553, N'SD11X5', N'2016120707', N'', 1, CAST(0x0000A6D5009F06FC AS DateTime), CAST(0x0000A6D500A2DF50 AS DateTime), 0, 0, 0, CAST(0x0000A6D500A59E70 AS DateTime), 7)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (554, N'SD11X5', N'2016120708', N'', 1, CAST(0x0000A6D5009F06FC AS DateTime), CAST(0x0000A6D500A59E70 AS DateTime), 0, 0, 0, CAST(0x0000A6D500A85D90 AS DateTime), 8)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (555, N'SD11X5', N'2016120709', N'', 1, CAST(0x0000A6D5009F06FD AS DateTime), CAST(0x0000A6D500A85D90 AS DateTime), 0, 0, 0, CAST(0x0000A6D500AB1CB0 AS DateTime), 9)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (556, N'SD11X5', N'2016120710', N'', 1, CAST(0x0000A6D5009F06FD AS DateTime), CAST(0x0000A6D500AB1CB0 AS DateTime), 0, 0, 0, CAST(0x0000A6D500ADDBD0 AS DateTime), 10)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (557, N'SD11X5', N'2016120711', N'', 1, CAST(0x0000A6D5009F06FE AS DateTime), CAST(0x0000A6D500ADDBD0 AS DateTime), 0, 0, 0, CAST(0x0000A6D500B09AF0 AS DateTime), 11)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (558, N'SD11X5', N'2016120712', N'', 0, CAST(0x0000A6D5009F06FE AS DateTime), CAST(0x0000A6D500B09AF0 AS DateTime), 0, 0, 0, CAST(0x0000A6D500B35A10 AS DateTime), 12)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (559, N'SD11X5', N'2016120713', N'', 1, CAST(0x0000A6D5009F06FF AS DateTime), CAST(0x0000A6D500B35A10 AS DateTime), 0, 0, 0, CAST(0x0000A6D500B61930 AS DateTime), 13)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (560, N'SD11X5', N'2016120714', N'', 1, CAST(0x0000A6D5009F06FF AS DateTime), CAST(0x0000A6D500B61930 AS DateTime), 0, 0, 0, CAST(0x0000A6D500B8D850 AS DateTime), 14)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (561, N'SD11X5', N'2016120715', N'', 1, CAST(0x0000A6D5009F0700 AS DateTime), CAST(0x0000A6D500B8D850 AS DateTime), 0, 0, 0, CAST(0x0000A6D500BB9770 AS DateTime), 15)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (562, N'SD11X5', N'2016120716', N'', 1, CAST(0x0000A6D5009F0700 AS DateTime), CAST(0x0000A6D500BB9770 AS DateTime), 0, 0, 0, CAST(0x0000A6D500BE5690 AS DateTime), 16)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (563, N'SD11X5', N'2016120717', N'', 1, CAST(0x0000A6D5009F0701 AS DateTime), CAST(0x0000A6D500BE5690 AS DateTime), 0, 0, 0, CAST(0x0000A6D500C115B0 AS DateTime), 17)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (564, N'SD11X5', N'2016120718', N'', 1, CAST(0x0000A6D5009F0702 AS DateTime), CAST(0x0000A6D500C115B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D500C3D4D0 AS DateTime), 18)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (565, N'SD11X5', N'2016120719', N'', 1, CAST(0x0000A6D5009F0702 AS DateTime), CAST(0x0000A6D500C3D4D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D500C693F0 AS DateTime), 19)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (566, N'SD11X5', N'2016120720', N'', 1, CAST(0x0000A6D5009F0702 AS DateTime), CAST(0x0000A6D500C693F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D500C95310 AS DateTime), 20)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (567, N'SD11X5', N'2016120721', N'', 1, CAST(0x0000A6D5009F0702 AS DateTime), CAST(0x0000A6D500C95310 AS DateTime), 0, 0, 0, CAST(0x0000A6D500CC1230 AS DateTime), 21)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (568, N'SD11X5', N'2016120722', N'', 0, CAST(0x0000A6D5009F0703 AS DateTime), CAST(0x0000A6D500CC1230 AS DateTime), 0, 0, 0, CAST(0x0000A6D500CED150 AS DateTime), 22)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (569, N'SD11X5', N'2016120723', N'', 0, CAST(0x0000A6D5009F0703 AS DateTime), CAST(0x0000A6D500CED150 AS DateTime), 0, 0, 0, CAST(0x0000A6D500D19070 AS DateTime), 23)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (570, N'SD11X5', N'2016120724', N'', 0, CAST(0x0000A6D5009F0703 AS DateTime), CAST(0x0000A6D500D19070 AS DateTime), 0, 0, 0, CAST(0x0000A6D500D44F90 AS DateTime), 24)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (571, N'SD11X5', N'2016120725', N'', 0, CAST(0x0000A6D5009F0704 AS DateTime), CAST(0x0000A6D500D44F90 AS DateTime), 0, 0, 0, CAST(0x0000A6D500D70EB0 AS DateTime), 25)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (572, N'SD11X5', N'2016120726', N'', 0, CAST(0x0000A6D5009F0704 AS DateTime), CAST(0x0000A6D500D70EB0 AS DateTime), 0, 0, 0, CAST(0x0000A6D500D9CDD0 AS DateTime), 26)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (573, N'SD11X5', N'2016120727', N'', 0, CAST(0x0000A6D5009F0704 AS DateTime), CAST(0x0000A6D500D9CDD0 AS DateTime), 0, 0, 0, CAST(0x0000A6D500DC8CF0 AS DateTime), 27)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (574, N'SD11X5', N'2016120728', N'', 0, CAST(0x0000A6D5009F0705 AS DateTime), CAST(0x0000A6D500DC8CF0 AS DateTime), 0, 0, 0, CAST(0x0000A6D500DF4C10 AS DateTime), 28)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (575, N'SD11X5', N'2016120729', N'', 0, CAST(0x0000A6D5009F0705 AS DateTime), CAST(0x0000A6D500DF4C10 AS DateTime), 0, 0, 0, CAST(0x0000A6D500E20B30 AS DateTime), 29)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (576, N'SD11X5', N'2016120730', N'', 0, CAST(0x0000A6D5009F0705 AS DateTime), CAST(0x0000A6D500E20B30 AS DateTime), 0, 0, 0, CAST(0x0000A6D500E4CA50 AS DateTime), 30)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (577, N'SD11X5', N'2016120731', N'', 1, CAST(0x0000A6D5009F0705 AS DateTime), CAST(0x0000A6D500E4CA50 AS DateTime), 0, 0, 0, CAST(0x0000A6D500E78970 AS DateTime), 31)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (578, N'SD11X5', N'2016120732', N'', 1, CAST(0x0000A6D5009F0706 AS DateTime), CAST(0x0000A6D500E78970 AS DateTime), 0, 0, 0, CAST(0x0000A6D500EA4890 AS DateTime), 32)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (579, N'SD11X5', N'2016120733', N'', 1, CAST(0x0000A6D5009F0706 AS DateTime), CAST(0x0000A6D500EA4890 AS DateTime), 0, 0, 0, CAST(0x0000A6D500ED07B0 AS DateTime), 33)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (580, N'SD11X5', N'2016120734', N'', 1, CAST(0x0000A6D5009F0706 AS DateTime), CAST(0x0000A6D500ED07B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D500EFC6D0 AS DateTime), 34)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (581, N'SD11X5', N'2016120735', N'', 1, CAST(0x0000A6D5009F0706 AS DateTime), CAST(0x0000A6D500EFC6D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D500F285F0 AS DateTime), 35)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (582, N'SD11X5', N'2016120736', N'', 1, CAST(0x0000A6D5009F0707 AS DateTime), CAST(0x0000A6D500F285F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D500F54510 AS DateTime), 36)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (583, N'SD11X5', N'2016120737', N'', 1, CAST(0x0000A6D5009F0707 AS DateTime), CAST(0x0000A6D500F54510 AS DateTime), 0, 0, 0, CAST(0x0000A6D500F80430 AS DateTime), 37)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (584, N'SD11X5', N'2016120738', N'', 1, CAST(0x0000A6D5009F0707 AS DateTime), CAST(0x0000A6D500F80430 AS DateTime), 0, 0, 0, CAST(0x0000A6D500FAC350 AS DateTime), 38)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (585, N'SD11X5', N'2016120739', N'', 1, CAST(0x0000A6D5009F0708 AS DateTime), CAST(0x0000A6D500FAC350 AS DateTime), 0, 0, 0, CAST(0x0000A6D500FD8270 AS DateTime), 39)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (586, N'SD11X5', N'2016120740', N'', 1, CAST(0x0000A6D5009F0708 AS DateTime), CAST(0x0000A6D500FD8270 AS DateTime), 0, 0, 0, CAST(0x0000A6D501004190 AS DateTime), 40)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (587, N'SD11X5', N'2016120741', N'', 1, CAST(0x0000A6D5009F0708 AS DateTime), CAST(0x0000A6D501004190 AS DateTime), 0, 0, 0, CAST(0x0000A6D5010300B0 AS DateTime), 41)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (588, N'SD11X5', N'2016120742', N'', 1, CAST(0x0000A6D5009F0708 AS DateTime), CAST(0x0000A6D5010300B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D50105BFD0 AS DateTime), 42)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (589, N'SD11X5', N'2016120743', N'', 1, CAST(0x0000A6D5009F0709 AS DateTime), CAST(0x0000A6D50105BFD0 AS DateTime), 0, 0, 0, CAST(0x0000A6D501087EF0 AS DateTime), 43)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (590, N'SD11X5', N'2016120744', N'', 1, CAST(0x0000A6D5009F0709 AS DateTime), CAST(0x0000A6D501087EF0 AS DateTime), 0, 0, 0, CAST(0x0000A6D5010B3E10 AS DateTime), 44)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (591, N'SD11X5', N'2016120745', N'', 1, CAST(0x0000A6D5009F0709 AS DateTime), CAST(0x0000A6D5010B3E10 AS DateTime), 0, 0, 0, CAST(0x0000A6D5010DFD30 AS DateTime), 45)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (592, N'SD11X5', N'2016120746', N'', 1, CAST(0x0000A6D5009F070A AS DateTime), CAST(0x0000A6D5010DFD30 AS DateTime), 0, 0, 0, CAST(0x0000A6D50110BC50 AS DateTime), 46)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (593, N'SD11X5', N'2016120747', N'', 1, CAST(0x0000A6D5009F070A AS DateTime), CAST(0x0000A6D50110BC50 AS DateTime), 0, 0, 0, CAST(0x0000A6D501137B70 AS DateTime), 47)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (594, N'SD11X5', N'2016120748', N'', 1, CAST(0x0000A6D5009F070A AS DateTime), CAST(0x0000A6D501137B70 AS DateTime), 0, 0, 0, CAST(0x0000A6D501163A90 AS DateTime), 48)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (595, N'SD11X5', N'2016120749', N'', 1, CAST(0x0000A6D5009F070B AS DateTime), CAST(0x0000A6D501163A90 AS DateTime), 0, 0, 0, CAST(0x0000A6D50118F9B0 AS DateTime), 49)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (596, N'SD11X5', N'2016120750', N'', 1, CAST(0x0000A6D5009F070B AS DateTime), CAST(0x0000A6D50118F9B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D5011BB8D0 AS DateTime), 50)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (597, N'SD11X5', N'2016120751', N'', 1, CAST(0x0000A6D5009F070B AS DateTime), CAST(0x0000A6D5011BB8D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D5011E77F0 AS DateTime), 51)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (598, N'SD11X5', N'2016120752', N'', 1, CAST(0x0000A6D5009F070B AS DateTime), CAST(0x0000A6D5011E77F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D501213710 AS DateTime), 52)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (599, N'SD11X5', N'2016120753', N'', 1, CAST(0x0000A6D5009F070B AS DateTime), CAST(0x0000A6D501213710 AS DateTime), 0, 0, 0, CAST(0x0000A6D50123F630 AS DateTime), 53)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (600, N'SD11X5', N'2016120754', N'', 1, CAST(0x0000A6D5009F070C AS DateTime), CAST(0x0000A6D50123F630 AS DateTime), 0, 0, 0, CAST(0x0000A6D50126B550 AS DateTime), 54)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (601, N'SD11X5', N'2016120755', N'', 1, CAST(0x0000A6D5009F070C AS DateTime), CAST(0x0000A6D50126B550 AS DateTime), 0, 0, 0, CAST(0x0000A6D501297470 AS DateTime), 55)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (602, N'SD11X5', N'2016120756', N'', 0, CAST(0x0000A6D5009F070C AS DateTime), CAST(0x0000A6D501297470 AS DateTime), 0, 0, 0, CAST(0x0000A6D5012C3390 AS DateTime), 56)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (603, N'SD11X5', N'2016120757', N'', 0, CAST(0x0000A6D5009F070C AS DateTime), CAST(0x0000A6D5012C3390 AS DateTime), 0, 0, 0, CAST(0x0000A6D5012EF2B0 AS DateTime), 57)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (604, N'SD11X5', N'2016120758', N'', 0, CAST(0x0000A6D5009F070C AS DateTime), CAST(0x0000A6D5012EF2B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D50131B1D0 AS DateTime), 58)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (605, N'SD11X5', N'2016120759', N'', 0, CAST(0x0000A6D5009F070D AS DateTime), CAST(0x0000A6D50131B1D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D5013470F0 AS DateTime), 59)
GO
print 'Processed 600 total records'
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (606, N'SD11X5', N'2016120760', N'', 0, CAST(0x0000A6D5009F070D AS DateTime), CAST(0x0000A6D5013470F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D501373010 AS DateTime), 60)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (607, N'SD11X5', N'2016120761', N'', 0, CAST(0x0000A6D5009F070D AS DateTime), CAST(0x0000A6D501373010 AS DateTime), 0, 0, 0, CAST(0x0000A6D50139EF30 AS DateTime), 61)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (608, N'SD11X5', N'2016120762', N'', 0, CAST(0x0000A6D5009F070D AS DateTime), CAST(0x0000A6D50139EF30 AS DateTime), 0, 0, 0, CAST(0x0000A6D5013CAE50 AS DateTime), 62)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (609, N'SD11X5', N'2016120763', N'', 0, CAST(0x0000A6D5009F070E AS DateTime), CAST(0x0000A6D5013CAE50 AS DateTime), 0, 0, 0, CAST(0x0000A6D5013F6D70 AS DateTime), 63)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (610, N'SD11X5', N'2016120764', N'', 0, CAST(0x0000A6D5009F070E AS DateTime), CAST(0x0000A6D5013F6D70 AS DateTime), 0, 0, 0, CAST(0x0000A6D501422C90 AS DateTime), 64)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (611, N'SD11X5', N'2016120765', N'', 0, CAST(0x0000A6D5009F070E AS DateTime), CAST(0x0000A6D501422C90 AS DateTime), 0, 0, 0, CAST(0x0000A6D50144EBB0 AS DateTime), 65)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (612, N'SD11X5', N'2016120766', N'', 0, CAST(0x0000A6D5009F070E AS DateTime), CAST(0x0000A6D50144EBB0 AS DateTime), 0, 0, 0, CAST(0x0000A6D50147AAD0 AS DateTime), 66)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (613, N'SD11X5', N'2016120767', N'', 0, CAST(0x0000A6D5009F070E AS DateTime), CAST(0x0000A6D50147AAD0 AS DateTime), 0, 0, 0, CAST(0x0000A6D5014A69F0 AS DateTime), 67)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (614, N'SD11X5', N'2016120768', N'', 0, CAST(0x0000A6D5009F070F AS DateTime), CAST(0x0000A6D5014A69F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D5014D2910 AS DateTime), 68)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (615, N'SD11X5', N'2016120769', N'', 0, CAST(0x0000A6D5009F070F AS DateTime), CAST(0x0000A6D5014D2910 AS DateTime), 0, 0, 0, CAST(0x0000A6D5014FE830 AS DateTime), 69)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (616, N'SD11X5', N'2016120770', N'', 0, CAST(0x0000A6D5009F070F AS DateTime), CAST(0x0000A6D5014FE830 AS DateTime), 0, 0, 0, CAST(0x0000A6D50152A750 AS DateTime), 70)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (617, N'SD11X5', N'2016120771', N'', 0, CAST(0x0000A6D5009F070F AS DateTime), CAST(0x0000A6D50152A750 AS DateTime), 0, 0, 0, CAST(0x0000A6D501556670 AS DateTime), 71)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (618, N'SD11X5', N'2016120772', N'', 0, CAST(0x0000A6D5009F070F AS DateTime), CAST(0x0000A6D501556670 AS DateTime), 0, 0, 0, CAST(0x0000A6D501582590 AS DateTime), 72)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (619, N'SD11X5', N'2016120773', N'', 0, CAST(0x0000A6D5009F0710 AS DateTime), CAST(0x0000A6D501582590 AS DateTime), 0, 0, 0, CAST(0x0000A6D5015AE4B0 AS DateTime), 73)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (620, N'SD11X5', N'2016120774', N'', 0, CAST(0x0000A6D5009F0710 AS DateTime), CAST(0x0000A6D5015AE4B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D5015DA3D0 AS DateTime), 74)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (621, N'SD11X5', N'2016120775', N'', 0, CAST(0x0000A6D5009F0710 AS DateTime), CAST(0x0000A6D5015DA3D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D5016062F0 AS DateTime), 75)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (622, N'SD11X5', N'2016120776', N'', 0, CAST(0x0000A6D5009F0711 AS DateTime), CAST(0x0000A6D5016062F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D501632210 AS DateTime), 76)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (623, N'SD11X5', N'2016120777', N'', 0, CAST(0x0000A6D5009F0711 AS DateTime), CAST(0x0000A6D501632210 AS DateTime), 0, 0, 0, CAST(0x0000A6D50165E130 AS DateTime), 77)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (624, N'SD11X5', N'2016120778', N'', 0, CAST(0x0000A6D5009F0711 AS DateTime), CAST(0x0000A6D50165E130 AS DateTime), 0, 0, 0, CAST(0x0000A6D50168A050 AS DateTime), 78)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (625, N'SD11X5', N'16120801', N'', 0, CAST(0x0000A6D601008AEC AS DateTime), CAST(0x0000A6D600926490 AS DateTime), 0, 0, 0, CAST(0x0000A6D6009523B0 AS DateTime), 1)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (626, N'SD11X5', N'16120802', N'', 0, CAST(0x0000A6D601008AEC AS DateTime), CAST(0x0000A6D6009523B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D60097E2D0 AS DateTime), 2)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (627, N'SD11X5', N'16120803', N'', 0, CAST(0x0000A6D601008AEC AS DateTime), CAST(0x0000A6D60097E2D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D6009AA1F0 AS DateTime), 3)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (628, N'SD11X5', N'16120804', N'', 0, CAST(0x0000A6D601008AEC AS DateTime), CAST(0x0000A6D6009AA1F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D6009D6110 AS DateTime), 4)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (629, N'SD11X5', N'16120805', N'', 0, CAST(0x0000A6D601008AEC AS DateTime), CAST(0x0000A6D6009D6110 AS DateTime), 0, 0, 0, CAST(0x0000A6D600A02030 AS DateTime), 5)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (630, N'SD11X5', N'16120806', N'', 0, CAST(0x0000A6D601008AED AS DateTime), CAST(0x0000A6D600A02030 AS DateTime), 0, 0, 0, CAST(0x0000A6D600A2DF50 AS DateTime), 6)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (631, N'SD11X5', N'16120807', N'', 0, CAST(0x0000A6D601008AED AS DateTime), CAST(0x0000A6D600A2DF50 AS DateTime), 0, 0, 0, CAST(0x0000A6D600A59E70 AS DateTime), 7)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (632, N'SD11X5', N'16120808', N'', 0, CAST(0x0000A6D601008AED AS DateTime), CAST(0x0000A6D600A59E70 AS DateTime), 0, 0, 0, CAST(0x0000A6D600A85D90 AS DateTime), 8)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (633, N'SD11X5', N'16120809', N'', 0, CAST(0x0000A6D601008AED AS DateTime), CAST(0x0000A6D600A85D90 AS DateTime), 0, 0, 0, CAST(0x0000A6D600AB1CB0 AS DateTime), 9)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (634, N'SD11X5', N'16120810', N'', 0, CAST(0x0000A6D601008AEE AS DateTime), CAST(0x0000A6D600AB1CB0 AS DateTime), 0, 0, 0, CAST(0x0000A6D600ADDBD0 AS DateTime), 10)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (635, N'SD11X5', N'16120811', N'', 0, CAST(0x0000A6D601008AEE AS DateTime), CAST(0x0000A6D600ADDBD0 AS DateTime), 0, 0, 0, CAST(0x0000A6D600B09AF0 AS DateTime), 11)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (636, N'SD11X5', N'16120812', N'', 0, CAST(0x0000A6D601008AEE AS DateTime), CAST(0x0000A6D600B09AF0 AS DateTime), 0, 0, 0, CAST(0x0000A6D600B35A10 AS DateTime), 12)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (637, N'SD11X5', N'16120813', N'', 0, CAST(0x0000A6D601008AEF AS DateTime), CAST(0x0000A6D600B35A10 AS DateTime), 0, 0, 0, CAST(0x0000A6D600B61930 AS DateTime), 13)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (638, N'SD11X5', N'16120814', N'', 0, CAST(0x0000A6D601008AEF AS DateTime), CAST(0x0000A6D600B61930 AS DateTime), 0, 0, 0, CAST(0x0000A6D600B8D850 AS DateTime), 14)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (639, N'SD11X5', N'16120815', N'', 0, CAST(0x0000A6D601008AEF AS DateTime), CAST(0x0000A6D600B8D850 AS DateTime), 0, 0, 0, CAST(0x0000A6D600BB9770 AS DateTime), 15)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (640, N'SD11X5', N'16120816', N'', 0, CAST(0x0000A6D601008AF0 AS DateTime), CAST(0x0000A6D600BB9770 AS DateTime), 0, 0, 0, CAST(0x0000A6D600BE5690 AS DateTime), 16)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (641, N'SD11X5', N'16120817', N'', 0, CAST(0x0000A6D601008AF0 AS DateTime), CAST(0x0000A6D600BE5690 AS DateTime), 0, 0, 0, CAST(0x0000A6D600C115B0 AS DateTime), 17)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (642, N'SD11X5', N'16120818', N'', 0, CAST(0x0000A6D601008AF1 AS DateTime), CAST(0x0000A6D600C115B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D600C3D4D0 AS DateTime), 18)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (643, N'SD11X5', N'16120819', N'', 0, CAST(0x0000A6D601008AF1 AS DateTime), CAST(0x0000A6D600C3D4D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D600C693F0 AS DateTime), 19)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (644, N'SD11X5', N'16120820', N'', 0, CAST(0x0000A6D601008AF1 AS DateTime), CAST(0x0000A6D600C693F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D600C95310 AS DateTime), 20)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (645, N'SD11X5', N'16120821', N'', 0, CAST(0x0000A6D601008AF1 AS DateTime), CAST(0x0000A6D600C95310 AS DateTime), 0, 0, 0, CAST(0x0000A6D600CC1230 AS DateTime), 21)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (646, N'SD11X5', N'16120822', N'', 0, CAST(0x0000A6D601008AF2 AS DateTime), CAST(0x0000A6D600CC1230 AS DateTime), 0, 0, 0, CAST(0x0000A6D600CED150 AS DateTime), 22)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (647, N'SD11X5', N'16120823', N'', 0, CAST(0x0000A6D601008AF2 AS DateTime), CAST(0x0000A6D600CED150 AS DateTime), 0, 0, 0, CAST(0x0000A6D600D19070 AS DateTime), 23)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (648, N'SD11X5', N'16120824', N'', 0, CAST(0x0000A6D601008AF2 AS DateTime), CAST(0x0000A6D600D19070 AS DateTime), 0, 0, 0, CAST(0x0000A6D600D44F90 AS DateTime), 24)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (649, N'SD11X5', N'16120825', N'', 0, CAST(0x0000A6D601008AF2 AS DateTime), CAST(0x0000A6D600D44F90 AS DateTime), 0, 0, 0, CAST(0x0000A6D600D70EB0 AS DateTime), 25)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (650, N'SD11X5', N'16120826', N'', 0, CAST(0x0000A6D601008AF2 AS DateTime), CAST(0x0000A6D600D70EB0 AS DateTime), 0, 0, 0, CAST(0x0000A6D600D9CDD0 AS DateTime), 26)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (651, N'SD11X5', N'16120827', N'', 0, CAST(0x0000A6D601008AF3 AS DateTime), CAST(0x0000A6D600D9CDD0 AS DateTime), 0, 0, 0, CAST(0x0000A6D600DC8CF0 AS DateTime), 27)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (652, N'SD11X5', N'16120828', N'', 0, CAST(0x0000A6D601008AF3 AS DateTime), CAST(0x0000A6D600DC8CF0 AS DateTime), 0, 0, 0, CAST(0x0000A6D600DF4C10 AS DateTime), 28)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (653, N'SD11X5', N'16120829', N'', 0, CAST(0x0000A6D601008AF3 AS DateTime), CAST(0x0000A6D600DF4C10 AS DateTime), 0, 0, 0, CAST(0x0000A6D600E20B30 AS DateTime), 29)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (654, N'SD11X5', N'16120830', N'', 0, CAST(0x0000A6D601008AF3 AS DateTime), CAST(0x0000A6D600E20B30 AS DateTime), 0, 0, 0, CAST(0x0000A6D600E4CA50 AS DateTime), 30)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (655, N'SD11X5', N'16120831', N'', 0, CAST(0x0000A6D601008AF4 AS DateTime), CAST(0x0000A6D600E4CA50 AS DateTime), 0, 0, 0, CAST(0x0000A6D600E78970 AS DateTime), 31)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (656, N'SD11X5', N'16120832', N'', 0, CAST(0x0000A6D601008AF4 AS DateTime), CAST(0x0000A6D600E78970 AS DateTime), 0, 0, 0, CAST(0x0000A6D600EA4890 AS DateTime), 32)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (657, N'SD11X5', N'16120833', N'', 0, CAST(0x0000A6D601008AF4 AS DateTime), CAST(0x0000A6D600EA4890 AS DateTime), 0, 0, 0, CAST(0x0000A6D600ED07B0 AS DateTime), 33)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (658, N'SD11X5', N'16120834', N'', 0, CAST(0x0000A6D601008AF5 AS DateTime), CAST(0x0000A6D600ED07B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D600EFC6D0 AS DateTime), 34)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (659, N'SD11X5', N'16120835', N'', 0, CAST(0x0000A6D601008AF5 AS DateTime), CAST(0x0000A6D600EFC6D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D600F285F0 AS DateTime), 35)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (660, N'SD11X5', N'16120836', N'', 0, CAST(0x0000A6D601008AF5 AS DateTime), CAST(0x0000A6D600F285F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D600F54510 AS DateTime), 36)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (661, N'SD11X5', N'16120837', N'', 0, CAST(0x0000A6D601008AF5 AS DateTime), CAST(0x0000A6D600F54510 AS DateTime), 0, 0, 0, CAST(0x0000A6D600F80430 AS DateTime), 37)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (662, N'SD11X5', N'16120838', N'', 0, CAST(0x0000A6D601008AF5 AS DateTime), CAST(0x0000A6D600F80430 AS DateTime), 0, 0, 0, CAST(0x0000A6D600FAC350 AS DateTime), 38)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (663, N'SD11X5', N'16120839', N'', 0, CAST(0x0000A6D601008AF5 AS DateTime), CAST(0x0000A6D600FAC350 AS DateTime), 0, 0, 0, CAST(0x0000A6D600FD8270 AS DateTime), 39)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (664, N'SD11X5', N'16120840', N'', 0, CAST(0x0000A6D601008AF6 AS DateTime), CAST(0x0000A6D600FD8270 AS DateTime), 0, 0, 0, CAST(0x0000A6D601004190 AS DateTime), 40)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (665, N'SD11X5', N'16120841', N'', 1, CAST(0x0000A6D601008AF6 AS DateTime), CAST(0x0000A6D601004190 AS DateTime), 0, 0, 0, CAST(0x0000A6D6010300B0 AS DateTime), 41)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (666, N'SD11X5', N'16120842', N'', 1, CAST(0x0000A6D601008AF6 AS DateTime), CAST(0x0000A6D6010300B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D60105BFD0 AS DateTime), 42)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (667, N'SD11X5', N'16120843', N'', 1, CAST(0x0000A6D601008AF6 AS DateTime), CAST(0x0000A6D60105BFD0 AS DateTime), 0, 0, 0, CAST(0x0000A6D601087EF0 AS DateTime), 43)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (668, N'SD11X5', N'16120844', N'', 1, CAST(0x0000A6D601008AF7 AS DateTime), CAST(0x0000A6D601087EF0 AS DateTime), 0, 0, 0, CAST(0x0000A6D6010B3E10 AS DateTime), 44)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (669, N'SD11X5', N'16120845', N'', 1, CAST(0x0000A6D601008AF7 AS DateTime), CAST(0x0000A6D6010B3E10 AS DateTime), 0, 0, 0, CAST(0x0000A6D6010DFD30 AS DateTime), 45)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (670, N'SD11X5', N'16120846', N'', 1, CAST(0x0000A6D601008AF7 AS DateTime), CAST(0x0000A6D6010DFD30 AS DateTime), 0, 0, 0, CAST(0x0000A6D60110BC50 AS DateTime), 46)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (671, N'SD11X5', N'16120847', N'', 1, CAST(0x0000A6D601008AF7 AS DateTime), CAST(0x0000A6D60110BC50 AS DateTime), 0, 0, 0, CAST(0x0000A6D601137B70 AS DateTime), 47)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (672, N'SD11X5', N'16120848', N'', 1, CAST(0x0000A6D601008AF8 AS DateTime), CAST(0x0000A6D601137B70 AS DateTime), 0, 0, 0, CAST(0x0000A6D601163A90 AS DateTime), 48)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (673, N'SD11X5', N'16120849', N'', 1, CAST(0x0000A6D601008AF8 AS DateTime), CAST(0x0000A6D601163A90 AS DateTime), 0, 0, 0, CAST(0x0000A6D60118F9B0 AS DateTime), 49)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (674, N'SD11X5', N'16120850', N'', 1, CAST(0x0000A6D601008AF8 AS DateTime), CAST(0x0000A6D60118F9B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D6011BB8D0 AS DateTime), 50)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (675, N'SD11X5', N'16120851', N'', 1, CAST(0x0000A6D601008AF8 AS DateTime), CAST(0x0000A6D6011BB8D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D6011E77F0 AS DateTime), 51)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (676, N'SD11X5', N'16120852', N'', 1, CAST(0x0000A6D601008AF9 AS DateTime), CAST(0x0000A6D6011E77F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D601213710 AS DateTime), 52)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (677, N'SD11X5', N'16120853', N'', 1, CAST(0x0000A6D601008AF9 AS DateTime), CAST(0x0000A6D601213710 AS DateTime), 0, 0, 0, CAST(0x0000A6D60123F630 AS DateTime), 53)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (678, N'SD11X5', N'16120854', N'', 1, CAST(0x0000A6D601008AF9 AS DateTime), CAST(0x0000A6D60123F630 AS DateTime), 0, 0, 0, CAST(0x0000A6D60126B550 AS DateTime), 54)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (679, N'SD11X5', N'16120855', N'', 1, CAST(0x0000A6D601008AF9 AS DateTime), CAST(0x0000A6D60126B550 AS DateTime), 0, 0, 0, CAST(0x0000A6D601297470 AS DateTime), 55)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (680, N'SD11X5', N'16120856', N'', 0, CAST(0x0000A6D601008AFA AS DateTime), CAST(0x0000A6D601297470 AS DateTime), 0, 0, 0, CAST(0x0000A6D6012C3390 AS DateTime), 56)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (681, N'SD11X5', N'16120857', N'', 0, CAST(0x0000A6D601008AFA AS DateTime), CAST(0x0000A6D6012C3390 AS DateTime), 0, 0, 0, CAST(0x0000A6D6012EF2B0 AS DateTime), 57)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (682, N'SD11X5', N'16120858', N'', 0, CAST(0x0000A6D601008AFA AS DateTime), CAST(0x0000A6D6012EF2B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D60131B1D0 AS DateTime), 58)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (683, N'SD11X5', N'16120859', N'', 0, CAST(0x0000A6D601008AFA AS DateTime), CAST(0x0000A6D60131B1D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D6013470F0 AS DateTime), 59)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (684, N'SD11X5', N'16120860', N'', 0, CAST(0x0000A6D601008AFA AS DateTime), CAST(0x0000A6D6013470F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D601373010 AS DateTime), 60)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (685, N'SD11X5', N'16120861', N'', 0, CAST(0x0000A6D601008AFB AS DateTime), CAST(0x0000A6D601373010 AS DateTime), 0, 0, 0, CAST(0x0000A6D60139EF30 AS DateTime), 61)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (686, N'SD11X5', N'16120862', N'', 0, CAST(0x0000A6D601008AFB AS DateTime), CAST(0x0000A6D60139EF30 AS DateTime), 0, 0, 0, CAST(0x0000A6D6013CAE50 AS DateTime), 62)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (687, N'SD11X5', N'16120863', N'', 0, CAST(0x0000A6D601008AFB AS DateTime), CAST(0x0000A6D6013CAE50 AS DateTime), 0, 0, 0, CAST(0x0000A6D6013F6D70 AS DateTime), 63)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (688, N'SD11X5', N'16120864', N'', 0, CAST(0x0000A6D601008AFB AS DateTime), CAST(0x0000A6D6013F6D70 AS DateTime), 0, 0, 0, CAST(0x0000A6D601422C90 AS DateTime), 64)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (689, N'SD11X5', N'16120865', N'', 0, CAST(0x0000A6D601008AFB AS DateTime), CAST(0x0000A6D601422C90 AS DateTime), 0, 0, 0, CAST(0x0000A6D60144EBB0 AS DateTime), 65)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (690, N'SD11X5', N'16120866', N'', 0, CAST(0x0000A6D601008AFC AS DateTime), CAST(0x0000A6D60144EBB0 AS DateTime), 0, 0, 0, CAST(0x0000A6D60147AAD0 AS DateTime), 66)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (691, N'SD11X5', N'16120867', N'', 0, CAST(0x0000A6D601008AFC AS DateTime), CAST(0x0000A6D60147AAD0 AS DateTime), 0, 0, 0, CAST(0x0000A6D6014A69F0 AS DateTime), 67)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (692, N'SD11X5', N'16120868', N'', 0, CAST(0x0000A6D601008AFC AS DateTime), CAST(0x0000A6D6014A69F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D6014D2910 AS DateTime), 68)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (693, N'SD11X5', N'16120869', N'', 0, CAST(0x0000A6D601008AFC AS DateTime), CAST(0x0000A6D6014D2910 AS DateTime), 0, 0, 0, CAST(0x0000A6D6014FE830 AS DateTime), 69)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (694, N'SD11X5', N'16120870', N'', 0, CAST(0x0000A6D601008AFD AS DateTime), CAST(0x0000A6D6014FE830 AS DateTime), 0, 0, 0, CAST(0x0000A6D60152A750 AS DateTime), 70)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (695, N'SD11X5', N'16120871', N'', 0, CAST(0x0000A6D601008AFD AS DateTime), CAST(0x0000A6D60152A750 AS DateTime), 0, 0, 0, CAST(0x0000A6D601556670 AS DateTime), 71)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (696, N'SD11X5', N'16120872', N'', 0, CAST(0x0000A6D601008AFD AS DateTime), CAST(0x0000A6D601556670 AS DateTime), 0, 0, 0, CAST(0x0000A6D601582590 AS DateTime), 72)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (697, N'SD11X5', N'16120873', N'', 0, CAST(0x0000A6D601008AFD AS DateTime), CAST(0x0000A6D601582590 AS DateTime), 0, 0, 0, CAST(0x0000A6D6015AE4B0 AS DateTime), 73)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (698, N'SD11X5', N'16120874', N'', 0, CAST(0x0000A6D601008AFE AS DateTime), CAST(0x0000A6D6015AE4B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D6015DA3D0 AS DateTime), 74)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (699, N'SD11X5', N'16120875', N'', 0, CAST(0x0000A6D601008AFE AS DateTime), CAST(0x0000A6D6015DA3D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D6016062F0 AS DateTime), 75)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (700, N'SD11X5', N'16120876', N'', 0, CAST(0x0000A6D601008AFE AS DateTime), CAST(0x0000A6D6016062F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D601632210 AS DateTime), 76)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (701, N'SD11X5', N'16120877', N'', 0, CAST(0x0000A6D601008AFE AS DateTime), CAST(0x0000A6D601632210 AS DateTime), 0, 0, 0, CAST(0x0000A6D60165E130 AS DateTime), 77)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (702, N'SD11X5', N'16120878', N'', 0, CAST(0x0000A6D601008AFE AS DateTime), CAST(0x0000A6D60165E130 AS DateTime), 0, 0, 0, CAST(0x0000A6D60168A050 AS DateTime), 78)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (703, N'SD11X5', N'16120901', N'', 0, CAST(0x0000A6D700B0DD54 AS DateTime), CAST(0x0000A6D700926490 AS DateTime), 0, 0, 0, CAST(0x0000A6D7009523B0 AS DateTime), 1)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (704, N'SD11X5', N'16120902', N'', 0, CAST(0x0000A6D700B0DD54 AS DateTime), CAST(0x0000A6D7009523B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D70097E2D0 AS DateTime), 2)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (705, N'SD11X5', N'16120903', N'', 0, CAST(0x0000A6D700B0DD54 AS DateTime), CAST(0x0000A6D70097E2D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D7009AA1F0 AS DateTime), 3)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (706, N'SD11X5', N'16120904', N'', 0, CAST(0x0000A6D700B0DD55 AS DateTime), CAST(0x0000A6D7009AA1F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D7009D6110 AS DateTime), 4)
GO
print 'Processed 700 total records'
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (707, N'SD11X5', N'16120905', N'', 0, CAST(0x0000A6D700B0DD55 AS DateTime), CAST(0x0000A6D7009D6110 AS DateTime), 0, 0, 0, CAST(0x0000A6D700A02030 AS DateTime), 5)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (708, N'SD11X5', N'16120906', N'', 0, CAST(0x0000A6D700B0DD55 AS DateTime), CAST(0x0000A6D700A02030 AS DateTime), 0, 0, 0, CAST(0x0000A6D700A2DF50 AS DateTime), 6)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (709, N'SD11X5', N'16120907', N'', 0, CAST(0x0000A6D700B0DD56 AS DateTime), CAST(0x0000A6D700A2DF50 AS DateTime), 0, 0, 0, CAST(0x0000A6D700A59E70 AS DateTime), 7)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (710, N'SD11X5', N'16120908', N'', 0, CAST(0x0000A6D700B0DD56 AS DateTime), CAST(0x0000A6D700A59E70 AS DateTime), 0, 0, 0, CAST(0x0000A6D700A85D90 AS DateTime), 8)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (711, N'SD11X5', N'16120909', N'', 0, CAST(0x0000A6D700B0DD56 AS DateTime), CAST(0x0000A6D700A85D90 AS DateTime), 0, 0, 0, CAST(0x0000A6D700AB1CB0 AS DateTime), 9)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (712, N'SD11X5', N'16120910', N'', 0, CAST(0x0000A6D700B0DD56 AS DateTime), CAST(0x0000A6D700AB1CB0 AS DateTime), 0, 0, 0, CAST(0x0000A6D700ADDBD0 AS DateTime), 10)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (713, N'SD11X5', N'16120911', N'', 0, CAST(0x0000A6D700B0DD57 AS DateTime), CAST(0x0000A6D700ADDBD0 AS DateTime), 0, 0, 0, CAST(0x0000A6D700B09AF0 AS DateTime), 11)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (714, N'SD11X5', N'16120912', N'', 1, CAST(0x0000A6D700B0DD57 AS DateTime), CAST(0x0000A6D700B09AF0 AS DateTime), 0, 0, 0, CAST(0x0000A6D700B35A10 AS DateTime), 12)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (715, N'SD11X5', N'16120913', N'', 1, CAST(0x0000A6D700B0DD57 AS DateTime), CAST(0x0000A6D700B35A10 AS DateTime), 0, 0, 0, CAST(0x0000A6D700B61930 AS DateTime), 13)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (716, N'SD11X5', N'16120914', N'', 1, CAST(0x0000A6D700B0DD57 AS DateTime), CAST(0x0000A6D700B61930 AS DateTime), 0, 0, 0, CAST(0x0000A6D700B8D850 AS DateTime), 14)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (717, N'SD11X5', N'16120915', N'', 1, CAST(0x0000A6D700B0DD58 AS DateTime), CAST(0x0000A6D700B8D850 AS DateTime), 0, 0, 0, CAST(0x0000A6D700BB9770 AS DateTime), 15)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (718, N'SD11X5', N'16120916', N'', 1, CAST(0x0000A6D700B0DD58 AS DateTime), CAST(0x0000A6D700BB9770 AS DateTime), 0, 0, 0, CAST(0x0000A6D700BE5690 AS DateTime), 16)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (719, N'SD11X5', N'16120917', N'', 1, CAST(0x0000A6D700B0DD58 AS DateTime), CAST(0x0000A6D700BE5690 AS DateTime), 0, 0, 0, CAST(0x0000A6D700C115B0 AS DateTime), 17)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (720, N'SD11X5', N'16120918', N'', 1, CAST(0x0000A6D700B0DD58 AS DateTime), CAST(0x0000A6D700C115B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D700C3D4D0 AS DateTime), 18)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (721, N'SD11X5', N'16120919', N'', 1, CAST(0x0000A6D700B0DD59 AS DateTime), CAST(0x0000A6D700C3D4D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D700C693F0 AS DateTime), 19)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (722, N'SD11X5', N'16120920', N'', 1, CAST(0x0000A6D700B0DD59 AS DateTime), CAST(0x0000A6D700C693F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D700C95310 AS DateTime), 20)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (723, N'SD11X5', N'16120921', N'', 1, CAST(0x0000A6D700B0DD59 AS DateTime), CAST(0x0000A6D700C95310 AS DateTime), 0, 0, 0, CAST(0x0000A6D700CC1230 AS DateTime), 21)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (724, N'SD11X5', N'16120922', N'', 1, CAST(0x0000A6D700B0DD5A AS DateTime), CAST(0x0000A6D700CC1230 AS DateTime), 0, 0, 0, CAST(0x0000A6D700CED150 AS DateTime), 22)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (725, N'SD11X5', N'16120923', N'', 0, CAST(0x0000A6D700B0DD5A AS DateTime), CAST(0x0000A6D700CED150 AS DateTime), 0, 0, 0, CAST(0x0000A6D700D19070 AS DateTime), 23)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (726, N'SD11X5', N'16120924', N'', 0, CAST(0x0000A6D700B0DD5A AS DateTime), CAST(0x0000A6D700D19070 AS DateTime), 0, 0, 0, CAST(0x0000A6D700D44F90 AS DateTime), 24)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (727, N'SD11X5', N'16120925', N'', 0, CAST(0x0000A6D700B0DD5B AS DateTime), CAST(0x0000A6D700D44F90 AS DateTime), 0, 0, 0, CAST(0x0000A6D700D70EB0 AS DateTime), 25)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (728, N'SD11X5', N'16120926', N'', 0, CAST(0x0000A6D700B0DD5B AS DateTime), CAST(0x0000A6D700D70EB0 AS DateTime), 0, 0, 0, CAST(0x0000A6D700D9CDD0 AS DateTime), 26)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (729, N'SD11X5', N'16120927', N'', 0, CAST(0x0000A6D700B0DD5B AS DateTime), CAST(0x0000A6D700D9CDD0 AS DateTime), 0, 0, 0, CAST(0x0000A6D700DC8CF0 AS DateTime), 27)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (730, N'SD11X5', N'16120928', N'', 0, CAST(0x0000A6D700B0DD5C AS DateTime), CAST(0x0000A6D700DC8CF0 AS DateTime), 0, 0, 0, CAST(0x0000A6D700DF4C10 AS DateTime), 28)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (731, N'SD11X5', N'16120929', N'', 0, CAST(0x0000A6D700B0DD5C AS DateTime), CAST(0x0000A6D700DF4C10 AS DateTime), 0, 0, 0, CAST(0x0000A6D700E20B30 AS DateTime), 29)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (732, N'SD11X5', N'16120930', N'', 0, CAST(0x0000A6D700B0DD5C AS DateTime), CAST(0x0000A6D700E20B30 AS DateTime), 0, 0, 0, CAST(0x0000A6D700E4CA50 AS DateTime), 30)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (733, N'SD11X5', N'16120931', N'', 0, CAST(0x0000A6D700B0DD5C AS DateTime), CAST(0x0000A6D700E4CA50 AS DateTime), 0, 0, 0, CAST(0x0000A6D700E78970 AS DateTime), 31)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (734, N'SD11X5', N'16120932', N'', 0, CAST(0x0000A6D700B0DD5C AS DateTime), CAST(0x0000A6D700E78970 AS DateTime), 0, 0, 0, CAST(0x0000A6D700EA4890 AS DateTime), 32)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (735, N'SD11X5', N'16120933', N'', 1, CAST(0x0000A6D700B0DD5D AS DateTime), CAST(0x0000A6D700EA4890 AS DateTime), 0, 0, 0, CAST(0x0000A6D700ED07B0 AS DateTime), 33)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (736, N'SD11X5', N'16120934', N'', 1, CAST(0x0000A6D700B0DD5D AS DateTime), CAST(0x0000A6D700ED07B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D700EFC6D0 AS DateTime), 34)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (737, N'SD11X5', N'16120935', N'', 1, CAST(0x0000A6D700B0DD5D AS DateTime), CAST(0x0000A6D700EFC6D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D700F285F0 AS DateTime), 35)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (738, N'SD11X5', N'16120936', N'', 1, CAST(0x0000A6D700B0DD5D AS DateTime), CAST(0x0000A6D700F285F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D700F54510 AS DateTime), 36)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (739, N'SD11X5', N'16120937', N'', 1, CAST(0x0000A6D700B0DD5E AS DateTime), CAST(0x0000A6D700F54510 AS DateTime), 0, 0, 0, CAST(0x0000A6D700F80430 AS DateTime), 37)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (740, N'SD11X5', N'16120938', N'', 1, CAST(0x0000A6D700B0DD5E AS DateTime), CAST(0x0000A6D700F80430 AS DateTime), 0, 0, 0, CAST(0x0000A6D700FAC350 AS DateTime), 38)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (741, N'SD11X5', N'16120939', N'', 1, CAST(0x0000A6D700B0DD5F AS DateTime), CAST(0x0000A6D700FAC350 AS DateTime), 0, 0, 0, CAST(0x0000A6D700FD8270 AS DateTime), 39)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (742, N'SD11X5', N'16120940', N'', 1, CAST(0x0000A6D700B0DD5F AS DateTime), CAST(0x0000A6D700FD8270 AS DateTime), 0, 0, 0, CAST(0x0000A6D701004190 AS DateTime), 40)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (743, N'SD11X5', N'16120941', N'', 1, CAST(0x0000A6D700B0DD5F AS DateTime), CAST(0x0000A6D701004190 AS DateTime), 0, 0, 0, CAST(0x0000A6D7010300B0 AS DateTime), 41)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (744, N'SD11X5', N'16120942', N'', 1, CAST(0x0000A6D700B0DD5F AS DateTime), CAST(0x0000A6D7010300B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D70105BFD0 AS DateTime), 42)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (745, N'SD11X5', N'16120943', N'', 1, CAST(0x0000A6D700B0DD60 AS DateTime), CAST(0x0000A6D70105BFD0 AS DateTime), 0, 0, 0, CAST(0x0000A6D701087EF0 AS DateTime), 43)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (746, N'SD11X5', N'16120944', N'', 1, CAST(0x0000A6D700B0DD60 AS DateTime), CAST(0x0000A6D701087EF0 AS DateTime), 0, 0, 0, CAST(0x0000A6D7010B3E10 AS DateTime), 44)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (747, N'SD11X5', N'16120945', N'', 1, CAST(0x0000A6D700B0DD60 AS DateTime), CAST(0x0000A6D7010B3E10 AS DateTime), 0, 0, 0, CAST(0x0000A6D7010DFD30 AS DateTime), 45)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (748, N'SD11X5', N'16120946', N'', 1, CAST(0x0000A6D700B0DD61 AS DateTime), CAST(0x0000A6D7010DFD30 AS DateTime), 0, 0, 0, CAST(0x0000A6D70110BC50 AS DateTime), 46)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (749, N'SD11X5', N'16120947', N'', 1, CAST(0x0000A6D700B0DD61 AS DateTime), CAST(0x0000A6D70110BC50 AS DateTime), 0, 0, 0, CAST(0x0000A6D701137B70 AS DateTime), 47)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (750, N'SD11X5', N'16120948', N'', 1, CAST(0x0000A6D700B0DD62 AS DateTime), CAST(0x0000A6D701137B70 AS DateTime), 0, 0, 0, CAST(0x0000A6D701163A90 AS DateTime), 48)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (751, N'SD11X5', N'16120949', N'', 1, CAST(0x0000A6D700B0DD62 AS DateTime), CAST(0x0000A6D701163A90 AS DateTime), 0, 0, 0, CAST(0x0000A6D70118F9B0 AS DateTime), 49)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (752, N'SD11X5', N'16120950', N'', 1, CAST(0x0000A6D700B0DD62 AS DateTime), CAST(0x0000A6D70118F9B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D7011BB8D0 AS DateTime), 50)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (753, N'SD11X5', N'16120951', N'', 1, CAST(0x0000A6D700B0DD62 AS DateTime), CAST(0x0000A6D7011BB8D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D7011E77F0 AS DateTime), 51)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (754, N'SD11X5', N'16120952', N'', 1, CAST(0x0000A6D700B0DD63 AS DateTime), CAST(0x0000A6D7011E77F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D701213710 AS DateTime), 52)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (755, N'SD11X5', N'16120953', N'', 1, CAST(0x0000A6D700B0DD63 AS DateTime), CAST(0x0000A6D701213710 AS DateTime), 0, 0, 0, CAST(0x0000A6D70123F630 AS DateTime), 53)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (756, N'SD11X5', N'16120954', N'', 1, CAST(0x0000A6D700B0DD63 AS DateTime), CAST(0x0000A6D70123F630 AS DateTime), 0, 0, 0, CAST(0x0000A6D70126B550 AS DateTime), 54)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (757, N'SD11X5', N'16120955', N'', 1, CAST(0x0000A6D700B0DD64 AS DateTime), CAST(0x0000A6D70126B550 AS DateTime), 0, 0, 0, CAST(0x0000A6D701297470 AS DateTime), 55)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (758, N'SD11X5', N'16120956', N'', 1, CAST(0x0000A6D700B0DD64 AS DateTime), CAST(0x0000A6D701297470 AS DateTime), 0, 0, 0, CAST(0x0000A6D7012C3390 AS DateTime), 56)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (759, N'SD11X5', N'16120957', N'', 0, CAST(0x0000A6D700B0DD64 AS DateTime), CAST(0x0000A6D7012C3390 AS DateTime), 0, 0, 0, CAST(0x0000A6D7012EF2B0 AS DateTime), 57)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (760, N'SD11X5', N'16120958', N'', 0, CAST(0x0000A6D700B0DD65 AS DateTime), CAST(0x0000A6D7012EF2B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D70131B1D0 AS DateTime), 58)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (761, N'SD11X5', N'16120959', N'', 0, CAST(0x0000A6D700B0DD65 AS DateTime), CAST(0x0000A6D70131B1D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D7013470F0 AS DateTime), 59)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (762, N'SD11X5', N'16120960', N'', 0, CAST(0x0000A6D700B0DD65 AS DateTime), CAST(0x0000A6D7013470F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D701373010 AS DateTime), 60)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (763, N'SD11X5', N'16120961', N'', 0, CAST(0x0000A6D700B0DD65 AS DateTime), CAST(0x0000A6D701373010 AS DateTime), 0, 0, 0, CAST(0x0000A6D70139EF30 AS DateTime), 61)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (764, N'SD11X5', N'16120962', N'', 0, CAST(0x0000A6D700B0DD66 AS DateTime), CAST(0x0000A6D70139EF30 AS DateTime), 0, 0, 0, CAST(0x0000A6D7013CAE50 AS DateTime), 62)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (765, N'SD11X5', N'16120963', N'', 0, CAST(0x0000A6D700B0DD66 AS DateTime), CAST(0x0000A6D7013CAE50 AS DateTime), 0, 0, 0, CAST(0x0000A6D7013F6D70 AS DateTime), 63)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (766, N'SD11X5', N'16120964', N'', 0, CAST(0x0000A6D700B0DD66 AS DateTime), CAST(0x0000A6D7013F6D70 AS DateTime), 0, 0, 0, CAST(0x0000A6D701422C90 AS DateTime), 64)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (767, N'SD11X5', N'16120965', N'', 0, CAST(0x0000A6D700B0DD67 AS DateTime), CAST(0x0000A6D701422C90 AS DateTime), 0, 0, 0, CAST(0x0000A6D70144EBB0 AS DateTime), 65)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (768, N'SD11X5', N'16120966', N'', 0, CAST(0x0000A6D700B0DD67 AS DateTime), CAST(0x0000A6D70144EBB0 AS DateTime), 0, 0, 0, CAST(0x0000A6D70147AAD0 AS DateTime), 66)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (769, N'SD11X5', N'16120967', N'', 0, CAST(0x0000A6D700B0DD68 AS DateTime), CAST(0x0000A6D70147AAD0 AS DateTime), 0, 0, 0, CAST(0x0000A6D7014A69F0 AS DateTime), 67)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (770, N'SD11X5', N'16120968', N'', 0, CAST(0x0000A6D700B0DD68 AS DateTime), CAST(0x0000A6D7014A69F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D7014D2910 AS DateTime), 68)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (771, N'SD11X5', N'16120969', N'', 0, CAST(0x0000A6D700B0DD69 AS DateTime), CAST(0x0000A6D7014D2910 AS DateTime), 0, 0, 0, CAST(0x0000A6D7014FE830 AS DateTime), 69)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (772, N'SD11X5', N'16120970', N'', 0, CAST(0x0000A6D700B0DD6A AS DateTime), CAST(0x0000A6D7014FE830 AS DateTime), 0, 0, 0, CAST(0x0000A6D70152A750 AS DateTime), 70)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (773, N'SD11X5', N'16120971', N'', 0, CAST(0x0000A6D700B0DD6B AS DateTime), CAST(0x0000A6D70152A750 AS DateTime), 0, 0, 0, CAST(0x0000A6D701556670 AS DateTime), 71)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (774, N'SD11X5', N'16120972', N'', 0, CAST(0x0000A6D700B0DD6C AS DateTime), CAST(0x0000A6D701556670 AS DateTime), 0, 0, 0, CAST(0x0000A6D701582590 AS DateTime), 72)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (775, N'SD11X5', N'16120973', N'', 0, CAST(0x0000A6D700B0DD6D AS DateTime), CAST(0x0000A6D701582590 AS DateTime), 0, 0, 0, CAST(0x0000A6D7015AE4B0 AS DateTime), 73)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (776, N'SD11X5', N'16120974', N'', 0, CAST(0x0000A6D700B0DD6D AS DateTime), CAST(0x0000A6D7015AE4B0 AS DateTime), 0, 0, 0, CAST(0x0000A6D7015DA3D0 AS DateTime), 74)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (777, N'SD11X5', N'16120975', N'', 0, CAST(0x0000A6D700B0DD6D AS DateTime), CAST(0x0000A6D7015DA3D0 AS DateTime), 0, 0, 0, CAST(0x0000A6D7016062F0 AS DateTime), 75)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (778, N'SD11X5', N'16120976', N'', 0, CAST(0x0000A6D700B0DD6D AS DateTime), CAST(0x0000A6D7016062F0 AS DateTime), 0, 0, 0, CAST(0x0000A6D701632210 AS DateTime), 76)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (779, N'SD11X5', N'16120977', N'', 0, CAST(0x0000A6D700B0DD6E AS DateTime), CAST(0x0000A6D701632210 AS DateTime), 0, 0, 0, CAST(0x0000A6D70165E130 AS DateTime), 77)
INSERT [dbo].[LotteryResult] ([AutoID], [CPCode], [IssueNum], [ResultNum], [Status], [UpdateTime], [CreateTime], [PizeNum], [UserNum], [SumNum], [OpenTime], [Num]) VALUES (780, N'SD11X5', N'16120978', N'', 0, CAST(0x0000A6D700B0DD6E AS DateTime), CAST(0x0000A6D70165E130 AS DateTime), 0, 0, 0, CAST(0x0000A6D70168A050 AS DateTime), 78)
SET IDENTITY_INSERT [dbo].[LotteryResult] OFF
/****** Object:  Table [dbo].[LotteryPlays]    Script Date: 12/09/2016 18:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LotteryPlays](
	[AutoID] [int] IDENTITY(1,1) NOT NULL,
	[CPCode] [nvarchar](50) NOT NULL,
	[PID] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreateUserID] [nvarchar](50) NOT NULL,
	[PIDS] [nvarchar](300) NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[LotteryPlays] ON
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (149, N'SD11X5', N'1SANX', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1SANX')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (150, N'SD11X5', N'2QS', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1SANX_2QS')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (151, N'SD11X5', N'3ZHIXFS', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1SANX_2QS_3ZHIXFS')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (152, N'SD11X5', N'3ZHIXDS', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1SANX_2QS_3ZHIXDS')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (153, N'SD11X5', N'3ZUXFS', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1SANX_2QS_3ZUXFS')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (154, N'SD11X5', N'3ZUXDS', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1SANX_2QS_3ZUXDS')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (155, N'SD11X5', N'1ERX', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1ERX')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (156, N'SD11X5', N'2QE', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1ERX_2QE')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (157, N'SD11X5', N'3ZHIXFS', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1ERX_2QE_3ZHIXFS')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (158, N'SD11X5', N'3ZHIXDS', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1ERX_2QE_3ZHIXDS')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (159, N'SD11X5', N'3ZUXFS', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1ERX_2QE_3ZUXFS')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (160, N'SD11X5', N'3ZUXDS', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1ERX_2QE_3ZUXDS')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (161, N'SD11X5', N'1DWEID', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1DWEID')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (162, N'SD11X5', N'1BUDW', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1BUDW')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (163, N'SD11X5', N'1RENX', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1RENX')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (164, N'SD11X5', N'2FUS', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1RENX_2FUS')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (165, N'SD11X5', N'3YIZYI', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1RENX_2FUS_3YIZYI')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (166, N'SD11X5', N'3ERZER', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1RENX_2FUS_3ERZER')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (167, N'SD11X5', N'3SANZSAN', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1RENX_2FUS_3SANZSAN')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (168, N'SD11X5', N'3SIZSI', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1RENX_2FUS_3SIZSI')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (169, N'SD11X5', N'3WUZWU', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1RENX_2FUS_3WUZWU')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (170, N'SD11X5', N'3LIUZWU', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1RENX_2FUS_3LIUZWU')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (171, N'SD11X5', N'3QIZWU', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1RENX_2FUS_3QIZWU')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (172, N'SD11X5', N'3BAZWU', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1RENX_2FUS_3BAZWU')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (173, N'SD11X5', N'2DANS', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1RENX_2DANS')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (174, N'SD11X5', N'3YIZYI', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1RENX_2DANS_3YIZYI')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (175, N'SD11X5', N'3ERZER', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1RENX_2DANS_3ERZER')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (176, N'SD11X5', N'3SANZSAN', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1RENX_2DANS_3SANZSAN')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (177, N'SD11X5', N'3SIZSI', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1RENX_2DANS_3SIZSI')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (178, N'SD11X5', N'3WUZWU', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1RENX_2DANS_3WUZWU')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (179, N'SD11X5', N'3LIUZWU', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1RENX_2DANS_3LIUZWU')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (180, N'SD11X5', N'3QIZWU', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1RENX_2DANS_3QIZWU')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (181, N'SD11X5', N'3BAZWU', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1RENX_2DANS_3BAZWU')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (182, N'SD11X5', N'1QUWEIX', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1QUWEIX')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (183, N'SD11X5', N'2WUW', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1QUWEIX_2WUW')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (184, N'SD11X5', N'3DINGDS', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1QUWEIX_2WUW_3DINGDS')
INSERT [dbo].[LotteryPlays] ([AutoID], [CPCode], [PID], [CreateTime], [CreateUserID], [PIDS]) VALUES (185, N'SD11X5', N'3CAIZW', CAST(0x0000A6CC0112B123 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'1QUWEIX_2WUW_3CAIZW')
SET IDENTITY_INSERT [dbo].[LotteryPlays] OFF
/****** Object:  Table [dbo].[LotteryOrder]    Script Date: 12/09/2016 18:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LotteryOrder](
	[AutoID] [int] IDENTITY(1,1) NOT NULL,
	[LCode] [nvarchar](50) NOT NULL,
	[LID] [nvarchar](50) NOT NULL,
	[IssueNum] [nvarchar](64) NOT NULL,
	[Content] [nvarchar](300) NOT NULL,
	[Type] [nvarchar](300) NOT NULL,
	[CPCode] [nvarchar](50) NOT NULL,
	[CPName] [nvarchar](50) NOT NULL,
	[TypeName] [nvarchar](50) NOT NULL,
	[Num] [int] NOT NULL,
	[PMuch] [int] NOT NULL,
	[WinFee] [decimal](18, 2) NOT NULL,
	[PayFee] [decimal](18, 2) NOT NULL,
	[RPoint] [decimal](18, 2) NOT NULL,
	[UserID] [nvarchar](64) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
	[IP] [nvarchar](50) NULL,
	[MType] [int] NOT NULL,
	[WinType] [int] NOT NULL
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 元 1 角  2 分' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'LotteryOrder', @level2type=N'COLUMN',@level2name=N'MType'
GO
SET IDENTITY_INSERT [dbo].[LotteryOrder] ON
INSERT [dbo].[LotteryOrder] ([AutoID], [LCode], [LID], [IssueNum], [Content], [Type], [CPCode], [CPName], [TypeName], [Num], [PMuch], [WinFee], [PayFee], [RPoint], [UserID], [CreateTime], [Status], [IP], [MType], [WinType]) VALUES (1, N'201612041112351513', N'13a0535c-627c-43c2-a961-b5d824b6a89e', N'2016120478', N'[11,10,09]', N'1SANX_2QS_3ZHIXFS', N'SD11X5', N'十一运夺金', N'三星前三_直选复式', 1, 1, CAST(0.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), CAST(0.04 AS Decimal(18, 2)), N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6D200B7E845 AS DateTime), 0, N'::1', 0, 1)
SET IDENTITY_INSERT [dbo].[LotteryOrder] OFF
/****** Object:  Table [dbo].[LotteryBettAuto]    Script Date: 12/09/2016 18:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LotteryBettAuto](
	[AutoID] [int] IDENTITY(1,1) NOT NULL,
	[BCode] [nvarchar](64) NOT NULL,
	[CPCode] [nvarchar](50) NOT NULL,
	[CPName] [nvarchar](50) NOT NULL,
	[TypeName] [nvarchar](50) NOT NULL,
	[Type] [nvarchar](50) NOT NULL,
	[StartNum] [nvarchar](50) NOT NULL,
	[BettNum] [int] NOT NULL,
	[ComNum] [int] NOT NULL,
	[Content] [nvarchar](300) NOT NULL,
	[BMuch] [int] NOT NULL,
	[PMuch] [int] NOT NULL,
	[PayFee] [decimal](18, 2) NOT NULL,
	[TotalFee] [decimal](18, 2) NOT NULL,
	[WinFee] [decimal](18, 2) NOT NULL,
	[RPoint] [decimal](18, 2) NOT NULL,
	[UserID] [nvarchar](64) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[UpdateTime] [datetime] NOT NULL,
	[IP] [nvarchar](50) NULL,
	[MType] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[IsStart] [int] NOT NULL,
	[Num] [int] NOT NULL,
	[Profits] [decimal](18, 2) NOT NULL,
	[JsonContent] [nvarchar](3000) NULL,
	[Remark] [nvarchar](1000) NULL,
	[ComFee] [decimal](18, 2) NOT NULL,
	[BettType] [int] NOT NULL,
 CONSTRAINT [PK_LotteryBettAuto] PRIMARY KEY CLUSTERED 
(
	[AutoID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Lottery]    Script Date: 12/09/2016 18:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Lottery](
	[AutoID] [int] IDENTITY(1,1) NOT NULL,
	[CPName] [nvarchar](100) NOT NULL,
	[CPCode] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
	[CreateUserID] [nvarchar](64) NOT NULL,
	[Sort] [int] NOT NULL,
	[IconType] [int] NOT NULL,
	[ResultUrl] [nvarchar](300) NULL,
	[OpenTimes] [int] NULL,
	[OnSaleTime] [nvarchar](50) NULL,
	[CloseTime] [nvarchar](50) NULL,
	[SealTimes] [int] NULL,
	[Appkey] [nvarchar](50) NULL,
	[AppSecret] [nvarchar](50) NULL,
	[PeriodsNum] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Lottery] ON
INSERT [dbo].[Lottery] ([AutoID], [CPName], [CPCode], [CreateTime], [Status], [CreateUserID], [Sort], [IconType], [ResultUrl], [OpenTimes], [OnSaleTime], [CloseTime], [SealTimes], [Appkey], [AppSecret], [PeriodsNum]) VALUES (1, N'十一运夺金', N'SD11X5', CAST(0x0000A6C80125B8C2 AS DateTime), 1, N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', 1, 2, N'http://baidu.lecai.com/lottery/draw/view/20?agentId=5555', 7200, N'2016-11-08 08:53:00', N'2016-11-28 21:55:00', 6000, NULL, NULL, 78)
SET IDENTITY_INSERT [dbo].[Lottery] OFF
/****** Object:  StoredProcedure [dbo].[P_GetPagerDataColumn]    Script Date: 12/09/2016 18:18:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/***********************************************************
过程名称： P_GetPagerDataColumn
功能描述： 数据分页
参数说明： @tableName nvarchar(4000),     //表明
		   @columns nvarchar(4000),       //查询字段
		   @condition nvarchar(4000),     //条件
		   @key nvarchar(100),            //主键（排序）
		   @orderColumn nvarchar(4000),   //排序字段
		   @pageSize int,                 //分页数量
		   @pageIndex int,                //页码
		   @totalCount int output ,       //记录总数
		   @pageCount int output,         //总页码
		   @isAsc int                     //是否升序 1升序 0 倒序	 

调试记录： exec P_GetPagerDataColumn 
************************************************************/
Create PROCEDURE [dbo].[P_GetPagerDataColumn]
	@tableName nvarchar(4000),
	@columns nvarchar(4000),
	@condition nvarchar(4000),
	@key nvarchar(100),
	@orderColumn nvarchar(4000),
	@pageSize int,
	@pageIndex int,
	@totalCount int output ,
	@pageCount int output,
	@isAsc int
AS
declare @orderby nvarchar(20)
if(@isAsc=0)
begin
	set @orderby='desc'
end
else
begin
	set @orderby='asc'
end
declare @CommandSQL nvarchar(4000)
set @CommandSQL= 'select @totalCount=count(0) from '+@tableName+' where '+@condition
exec sp_executesql @CommandSQL,N'@totalCount int output',@totalCount output
set @pageCount=CEILING(@totalCount * 1.0/@pageSize)

if(@pageIndex=0 or @pageIndex=1)
begin 
	if @orderColumn!=''
	begin
		set	@orderColumn=@orderColumn+','
	end
	set @CommandSQL='select top '+str(@pageSize)+' '+@columns+' from '+@tableName+' where '+@condition+' order by '+@orderColumn+@key+' '+@orderby
end
else
begin
	if(@pageIndex>@pageCount)
	begin
		set @pageIndex=@pageCount
	end
	if @orderColumn!=''
	begin
		set	@orderColumn=@orderColumn+','
	end
	set @CommandSQL='select '+@columns+' from (select row_number() over( order by '+@orderColumn+@key+' '+@orderby+') as rowid , '+@columns+' from '+@tableName+' where '+@condition+'  ) as dt where rowid between '+str((@pageIndex-1) * @pageSize + 1)+' and '+str(@pageIndex* @pageSize)
end
exec (@CommandSQL)
GO
/****** Object:  StoredProcedure [dbo].[P_GetPagerData]    Script Date: 12/09/2016 18:18:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/***********************************************************
过程名称： P_GetPagerData
功能描述： 数据分页
参数说明： @tableName nvarchar(4000),     //表明
		   @columns nvarchar(4000),       //查询字段
		   @condition nvarchar(4000),     //条件
		   @key nvarchar(100),            //主键（排序）
		   @orderColumn nvarchar(4000),   //排序字段
		   @pageSize int,                 //分页数量
		   @pageIndex int,                //页码
		   @totalCount int output ,       //记录总数
		   @pageCount int output,         //总页码
		   @isAsc int                     //是否升序 1升序 0 倒序	 
调试记录： exec P_GetPagerData 
************************************************************/
Create PROCEDURE [dbo].[P_GetPagerData]
	@tableName nvarchar(4000),
	@columns nvarchar(4000),
	@condition nvarchar(4000),
	@key nvarchar(100),
	@orderColumn nvarchar(4000),
	@pageSize int,
	@pageIndex int,
	@totalCount int output ,
	@pageCount int output,
	@isAsc int
AS
declare @orderby nvarchar(20)
if(@isAsc=0)
begin
	set @orderby='desc'
end
else
begin
	set @orderby='asc'
end
declare @CommandSQL nvarchar(4000)
set @CommandSQL= 'select @totalCount=count(0) from '+@tableName+' where '+@condition


exec sp_executesql @CommandSQL,N'@totalCount int output',@totalCount output
set @pageCount=CEILING(@totalCount * 1.0/@pageSize)

if(@pageIndex=0 or @pageIndex=1)
begin 
	if @orderColumn!=''
	begin
		set	@orderColumn=@orderColumn+','
	end
	set @CommandSQL='select top '+str(@pageSize)+'  ''0'' as rowid, '+@columns+' from '+@tableName+' where '+@condition+' order by '+@orderColumn+@key+' '+@orderby
end
else
begin
	if(@pageIndex>@pageCount)
	begin
		set @pageIndex=@pageCount
	end
	if @orderColumn!=''
	begin
		set	@orderColumn=@orderColumn+','
	end
	set @CommandSQL='select * from (select row_number() over( order by '+@orderColumn+@key+' '+@orderby+') as rowid , '+@columns+' from '+@tableName+' where '+@condition+'  ) as dt where rowid between '+str((@pageIndex-1) * @pageSize + 1)+' and '+str(@pageIndex* @pageSize)
end 

exec (@CommandSQL)
GO
/****** Object:  Table [dbo].[Menu]    Script Date: 12/09/2016 18:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Menu](
	[AutoID] [int] IDENTITY(1,1) NOT NULL,
	[MenuCode] [varchar](50) NULL,
	[Name] [varchar](50) NULL,
	[Area] [varchar](50) NULL,
	[Controller] [varchar](50) NULL,
	[View] [varchar](50) NULL,
	[IcoPath] [varchar](200) NULL,
	[Type] [int] NULL,
	[IsHide] [int] NULL,
	[PCode] [varchar](50) NULL,
	[Sort] [int] NULL,
	[Layer] [int] NULL,
	[IsMenu] [int] NULL,
	[IsLimit] [int] NULL,
 CONSTRAINT [PK_Menu] PRIMARY KEY CLUSTERED 
(
	[AutoID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[Menu] ON
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (1, N'101000000', N'首页', N'', N'Home', N'Index', N'', 1, 1, N'100000000', 1, 1, 1, 1)
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (2, N'102000000', N'活动', N'', N'Active', N'Index', N'', 1, 1, N'100000000', 2, 1, 1, 1)
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (3, N'103000000', N'用户管理', N'', N'User', N'UserList', N'', 1, 0, N'100000000', 3, 1, 1, 0)
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (4, N'104000000', N'报表管理', N'', N'Report', N'ReportList', N'', 1, 0, N'100000000', 4, 1, 1, 0)
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (5, N'105000000', N'账户管理', N'', N'Account', N'AccountSafe', N'', 1, 0, N'100000000', 5, 1, 1, 0)
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (6, N'106000000', N'帮助中心', N'', N'Help', N'Security', N'', 1, 0, N'100000000', 6, 1, 1, 0)
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (7, N'103010000', N'用户列表', N'', N'User', N'UserList', N'', 1, 0, N'103000000', 1, 2, 1, 0)
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (8, N'103020000', N'增加用户', N'', N'User', N'UserAdd', N'', 1, 0, N'103000000', 2, 2, 1, 0)
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (9, N'103030000', N'修改昵称', N'', N'User', N'UserEdit', N'', 1, 0, N'103000000', 3, 2, 1, 0)
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (10, N'103040000', N'消息中心', N'', N'User', N'UserMsg', N'', 1, 0, N'103000000', 4, 2, 1, 0)
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (11, N'103050000', N'奖金详情', N'', N'User', N'UserReward', N'', 1, 0, N'103000000', 5, 2, 1, 0)
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (12, N'103060000', N'推广链接', N'', N'User', N'UserSpread', N'', 1, 0, N'103000000', 6, 2, 1, 0)
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (13, N'104010000', N'帐变列表', N'', N'Report', N'ReportList', N'', 1, 0, N'104000000', 1, 2, 1, 0)
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (14, N'104020000', N'报表查询', N'', N'Report', N'ReportSee', N'', 1, 0, N'104000000', 2, 2, 1, 0)
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (15, N'104030000', N'今日报表', N'', N'Report', N'ReportToday', N'', 1, 0, N'104000000', 3, 2, 1, 0)
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (16, N'104050000', N'盈亏报表', N'', N'Report', N'ReportProfit', N'', 1, 0, N'104000000', 5, 2, 1, 0)
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (17, N'105010000', N'账户安全', N'', N'Account', N'AccountSafe', N'', 1, 0, N'105000000', 1, 2, 1, 0)
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (18, N'105020000', N'我的银行卡', N'', N'Account', N'MyCard', N'', 1, 0, N'105000000', 2, 2, 1, 0)
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (19, N'106010000', N'信息中心', N'', N'Help', N'Security', N'', 1, 0, N'106000000', 1, 2, 1, 0)
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (20, N'106020000', N'功能介绍', N'', N'Help', N'FuncInfo', N'', 1, 0, N'106000000', 2, 2, 1, 0)
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (21, N'106030000', N'玩法介绍', N'', N'Help', N'PlayInfo', N'', 1, 0, N'106000000', 3, 2, 1, 0)
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (22, N'106040000', N'常见问题', N'', N'Help', N'General', N'', 1, 0, N'106000000', 4, 2, 1, 0)
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (23, N'107000000', N'系统设置', N'', N'SysSet', N'Users', N'', 1, 0, N'100000000', 7, 1, 1, 0)
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (24, N'107010000', N'用户管理', N'', N'SysSet', N'Users', N'', 1, 0, N'107000000', 1, 2, 1, 0)
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (25, N'107020000', N'角色管理', N'', N'SysSet', N'Role', N'', 1, 0, N'107000000', 2, 2, 1, 0)
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (26, N'107030000', N'信息管理', N'', N'SysSet', N'Active', N'', 1, 0, N'107000000', 3, 2, 1, 0)
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (27, N'107040000', N'订单管理', N'', N'SysSet', N'Orders', N'', 1, 0, N'107000000', 4, 2, 1, 0)
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (28, N'107050000', N'反馈管理', N'', N'SysSet', N'FeedBack', N'', 1, 0, N'107000000', 5, 2, 1, 0)
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (29, N'107060000', N'彩种管理', N'', N'SysSet', N'Lottery', N'', 1, 0, N'107000000', 6, 2, 1, 0)
SET IDENTITY_INSERT [dbo].[Menu] OFF
/****** Object:  Table [dbo].[M_Users]    Script Date: 12/09/2016 18:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Users](
	[AutoID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](50) NOT NULL,
	[LoginName] [nvarchar](200) NOT NULL,
	[LoginPwd] [nvarchar](200) NOT NULL,
	[UserName] [varchar](50) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreateUserID] [nvarchar](50) NULL,
	[Type] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Email] [nvarchar](50) NULL,
	[MobilePhone] [nvarchar](50) NULL,
	[SourceType] [int] NOT NULL,
	[AccountPwd] [nvarchar](50) NULL,
	[Avatar] [nvarchar](300) NULL,
	[UpdateTime] [datetime] NULL,
	[LastLoginIP] [nvarchar](50) NULL,
	[PrevLoginIP] [nvarchar](50) NULL,
	[SafeLevel] [int] NOT NULL,
	[IsAdmin] [int] NOT NULL,
	[RoleID] [varchar](50) NULL,
	[Rebate] [decimal](18, 2) NOT NULL,
	[UsableRebate] [decimal](18, 2) NOT NULL,
	[ChildCount] [int] NOT NULL,
	[Layers] [int] NOT NULL,
	[Description] [nvarchar](3000) NULL,
 CONSTRAINT [PK_M_Users] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0-会员 1 代理' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'M_Users', @level2type=N'COLUMN',@level2name=N'Type'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0--手动新增 1 自动注册' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'M_Users', @level2type=N'COLUMN',@level2name=N'SourceType'
GO
SET IDENTITY_INSERT [dbo].[M_Users] ON
INSERT [dbo].[M_Users] ([AutoID], [UserID], [LoginName], [LoginPwd], [UserName], [CreateTime], [CreateUserID], [Type], [Status], [Email], [MobilePhone], [SourceType], [AccountPwd], [Avatar], [UpdateTime], [LastLoginIP], [PrevLoginIP], [SafeLevel], [IsAdmin], [RoleID], [Rebate], [UsableRebate], [ChildCount], [Layers], [Description]) VALUES (14, N'0f14e392-15a9-4722-9433-2f217d30daf4', N'hd001', N'F25945456DFE4C365640F01F56A93A03', N'华东区总代理', CAST(0x0000A6C001276A43 AS DateTime), NULL, 1, 0, N'', NULL, 1, N'', N'', CAST(0x0000A6C001276A43 AS DateTime), N'', NULL, 10, 0, N'dd87ca0a-b425-4e1e-b7ec-7a1e02dad0f8', CAST(100.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 0, 1, N'测试用户')
INSERT [dbo].[M_Users] ([AutoID], [UserID], [LoginName], [LoginPwd], [UserName], [CreateTime], [CreateUserID], [Type], [Status], [Email], [MobilePhone], [SourceType], [AccountPwd], [Avatar], [UpdateTime], [LastLoginIP], [PrevLoginIP], [SafeLevel], [IsAdmin], [RoleID], [Rebate], [UsableRebate], [ChildCount], [Layers], [Description]) VALUES (12, N'1c7a640d-dcb5-4e2b-8b82-1eae4b2ae17e', N'xiaoqiao', N'F25945456DFE4C365640F01F56A93A03', N'小乔', CAST(0x0000A6C000E8070A AS DateTime), NULL, 0, 0, N'', NULL, 0, N'', N'', CAST(0x0000A6C000E8070A AS DateTime), N'', NULL, 1, 0, N'48eb0491-d92c-4664-ab27-37320ac7de38', CAST(10.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), 0, 2, NULL)
INSERT [dbo].[M_Users] ([AutoID], [UserID], [LoginName], [LoginPwd], [UserName], [CreateTime], [CreateUserID], [Type], [Status], [Email], [MobilePhone], [SourceType], [AccountPwd], [Avatar], [UpdateTime], [LastLoginIP], [PrevLoginIP], [SafeLevel], [IsAdmin], [RoleID], [Rebate], [UsableRebate], [ChildCount], [Layers], [Description]) VALUES (15, N'4859c0df-c5d7-4980-ae78-415c684605b4', N'zhouyu', N'F25945456DFE4C365640F01F56A93A03', N'周瑜', CAST(0x0000A6C500FBB786 AS DateTime), NULL, 0, 0, N'', NULL, 0, N'', N'', CAST(0x0000A6C500FBB786 AS DateTime), N'', NULL, 1, 0, N'48eb0491-d92c-4664-ab27-37320ac7de38', CAST(10.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), 0, 2, N'用户新增')
INSERT [dbo].[M_Users] ([AutoID], [UserID], [LoginName], [LoginPwd], [UserName], [CreateTime], [CreateUserID], [Type], [Status], [Email], [MobilePhone], [SourceType], [AccountPwd], [Avatar], [UpdateTime], [LastLoginIP], [PrevLoginIP], [SafeLevel], [IsAdmin], [RoleID], [Rebate], [UsableRebate], [ChildCount], [Layers], [Description]) VALUES (13, N'7a59b22e-d128-4666-b0bc-66523b634020', N'hn001', N'F25945456DFE4C365640F01F56A93A03', N'华南区总代理', CAST(0x0000A6C001272C69 AS DateTime), NULL, 1, 0, N'', NULL, 1, N'', N'', CAST(0x0000A6C001272C69 AS DateTime), N'', NULL, 10, 0, N'dd87ca0a-b425-4e1e-b7ec-7a1e02dad0f8', CAST(100.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 0, 1, N'测试用户')
INSERT [dbo].[M_Users] ([AutoID], [UserID], [LoginName], [LoginPwd], [UserName], [CreateTime], [CreateUserID], [Type], [Status], [Email], [MobilePhone], [SourceType], [AccountPwd], [Avatar], [UpdateTime], [LastLoginIP], [PrevLoginIP], [SafeLevel], [IsAdmin], [RoleID], [Rebate], [UsableRebate], [ChildCount], [Layers], [Description]) VALUES (11, N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'caocao', N'F25945456DFE4C365640F01F56A93A03', N'曹操', CAST(0x0000A6BF016C34CA AS DateTime), NULL, 1, 0, N'', NULL, 0, N'', N'', CAST(0x0000A6BF016C34CA AS DateTime), N'', NULL, 55, 0, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', CAST(10.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), 0, 2, N'22')
INSERT [dbo].[M_Users] ([AutoID], [UserID], [LoginName], [LoginPwd], [UserName], [CreateTime], [CreateUserID], [Type], [Status], [Email], [MobilePhone], [SourceType], [AccountPwd], [Avatar], [UpdateTime], [LastLoginIP], [PrevLoginIP], [SafeLevel], [IsAdmin], [RoleID], [Rebate], [UsableRebate], [ChildCount], [Layers], [Description]) VALUES (3, N'CF31A86D-281D-4F42-991F-5BB760B4B506', N'Michaux', N'F25945456DFE4C365640F01F56A93A03', N'Michaux', CAST(0x0000A6BE00B56D01 AS DateTime), NULL, 1, 1, N'', N'18217624362', 0, N'75694D579E39FD9A689125072FCCA351', N'Michauxquan', CAST(0x0000A6C500FBB786 AS DateTime), N'::1', N'::1', 85, 1, NULL, CAST(100.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), 3, 1, NULL)
SET IDENTITY_INSERT [dbo].[M_Users] OFF
/****** Object:  Table [dbo].[M_UserRole]    Script Date: 12/09/2016 18:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_UserRole](
	[AutoID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](50) NULL,
	[RoleID] [nvarchar](50) NULL,
	[IsDefault] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreateUserID] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserRole] PRIMARY KEY CLUSTERED 
(
	[AutoID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[M_RolePermission]    Script Date: 12/09/2016 18:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_RolePermission](
	[AutoID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [nvarchar](50) NOT NULL,
	[MenuCode] [nvarchar](50) NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreateUserID] [nvarchar](50) NULL,
 CONSTRAINT [PK_M_RolePermission] PRIMARY KEY CLUSTERED 
(
	[AutoID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[M_RolePermission] ON
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (27, N'dd87ca0a-b425-4e1e-b7ec-7a1e02dad0f8', N'103000000', CAST(0x0000A6C0010DE2AE AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (28, N'dd87ca0a-b425-4e1e-b7ec-7a1e02dad0f8', N'104000000', CAST(0x0000A6C0010DE2AE AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (29, N'dd87ca0a-b425-4e1e-b7ec-7a1e02dad0f8', N'105000000', CAST(0x0000A6C0010DE2AE AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (30, N'dd87ca0a-b425-4e1e-b7ec-7a1e02dad0f8', N'106000000', CAST(0x0000A6C0010DE2AE AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (31, N'dd87ca0a-b425-4e1e-b7ec-7a1e02dad0f8', N'103010000', CAST(0x0000A6C0010DE2AE AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (32, N'dd87ca0a-b425-4e1e-b7ec-7a1e02dad0f8', N'103020000', CAST(0x0000A6C0010DE2AE AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (33, N'dd87ca0a-b425-4e1e-b7ec-7a1e02dad0f8', N'103030000', CAST(0x0000A6C0010DE2AE AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (34, N'dd87ca0a-b425-4e1e-b7ec-7a1e02dad0f8', N'103040000', CAST(0x0000A6C0010DE2AE AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (35, N'dd87ca0a-b425-4e1e-b7ec-7a1e02dad0f8', N'103050000', CAST(0x0000A6C0010DE2AE AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (36, N'dd87ca0a-b425-4e1e-b7ec-7a1e02dad0f8', N'103060000', CAST(0x0000A6C0010DE2AE AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (37, N'dd87ca0a-b425-4e1e-b7ec-7a1e02dad0f8', N'104010000', CAST(0x0000A6C0010DE2AE AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (38, N'dd87ca0a-b425-4e1e-b7ec-7a1e02dad0f8', N'104020000', CAST(0x0000A6C0010DE2AE AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (39, N'dd87ca0a-b425-4e1e-b7ec-7a1e02dad0f8', N'104030000', CAST(0x0000A6C0010DE2AE AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (40, N'dd87ca0a-b425-4e1e-b7ec-7a1e02dad0f8', N'104050000', CAST(0x0000A6C0010DE2AE AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (41, N'dd87ca0a-b425-4e1e-b7ec-7a1e02dad0f8', N'105010000', CAST(0x0000A6C0010DE2AE AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (42, N'dd87ca0a-b425-4e1e-b7ec-7a1e02dad0f8', N'105020000', CAST(0x0000A6C0010DE2AE AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (43, N'dd87ca0a-b425-4e1e-b7ec-7a1e02dad0f8', N'106010000', CAST(0x0000A6C0010DE2AE AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (44, N'dd87ca0a-b425-4e1e-b7ec-7a1e02dad0f8', N'106020000', CAST(0x0000A6C0010DE2AE AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (45, N'dd87ca0a-b425-4e1e-b7ec-7a1e02dad0f8', N'106030000', CAST(0x0000A6C0010DE2AE AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (46, N'dd87ca0a-b425-4e1e-b7ec-7a1e02dad0f8', N'106040000', CAST(0x0000A6C0010DE2AE AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (47, N'48eb0491-d92c-4664-ab27-37320ac7de38', N'103000000', CAST(0x0000A6C0010E4E7E AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (48, N'48eb0491-d92c-4664-ab27-37320ac7de38', N'104000000', CAST(0x0000A6C0010E4E7E AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (49, N'48eb0491-d92c-4664-ab27-37320ac7de38', N'105000000', CAST(0x0000A6C0010E4E7E AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (50, N'48eb0491-d92c-4664-ab27-37320ac7de38', N'106000000', CAST(0x0000A6C0010E4E7E AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (51, N'48eb0491-d92c-4664-ab27-37320ac7de38', N'103030000', CAST(0x0000A6C0010E4E7E AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (52, N'48eb0491-d92c-4664-ab27-37320ac7de38', N'103040000', CAST(0x0000A6C0010E4E7E AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (53, N'48eb0491-d92c-4664-ab27-37320ac7de38', N'103050000', CAST(0x0000A6C0010E4E7E AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (54, N'48eb0491-d92c-4664-ab27-37320ac7de38', N'104010000', CAST(0x0000A6C0010E4E7E AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (55, N'48eb0491-d92c-4664-ab27-37320ac7de38', N'104030000', CAST(0x0000A6C0010E4E7E AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (56, N'48eb0491-d92c-4664-ab27-37320ac7de38', N'105010000', CAST(0x0000A6C0010E4E7E AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (57, N'48eb0491-d92c-4664-ab27-37320ac7de38', N'105020000', CAST(0x0000A6C0010E4E7E AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (58, N'48eb0491-d92c-4664-ab27-37320ac7de38', N'106010000', CAST(0x0000A6C0010E4E7E AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (59, N'48eb0491-d92c-4664-ab27-37320ac7de38', N'106020000', CAST(0x0000A6C0010E4E7E AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (60, N'48eb0491-d92c-4664-ab27-37320ac7de38', N'106030000', CAST(0x0000A6C0010E4E7E AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (61, N'48eb0491-d92c-4664-ab27-37320ac7de38', N'106040000', CAST(0x0000A6C0010E4E7E AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (62, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'103000000', CAST(0x0000A6C800E9A601 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (63, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'104000000', CAST(0x0000A6C800E9A601 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (64, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'105000000', CAST(0x0000A6C800E9A601 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (65, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'106000000', CAST(0x0000A6C800E9A601 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (66, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'103010000', CAST(0x0000A6C800E9A601 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (67, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'103020000', CAST(0x0000A6C800E9A601 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (68, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'103030000', CAST(0x0000A6C800E9A601 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (69, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'103040000', CAST(0x0000A6C800E9A601 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (70, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'103050000', CAST(0x0000A6C800E9A601 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (71, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'103060000', CAST(0x0000A6C800E9A601 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (72, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'104010000', CAST(0x0000A6C800E9A601 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (73, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'104020000', CAST(0x0000A6C800E9A601 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (74, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'104030000', CAST(0x0000A6C800E9A601 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (75, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'104050000', CAST(0x0000A6C800E9A601 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (76, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'105010000', CAST(0x0000A6C800E9A601 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (77, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'105020000', CAST(0x0000A6C800E9A601 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (78, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'106010000', CAST(0x0000A6C800E9A601 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (79, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'106020000', CAST(0x0000A6C800E9A601 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (80, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'106030000', CAST(0x0000A6C800E9A601 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (81, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'106040000', CAST(0x0000A6C800E9A601 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (82, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'107000000', CAST(0x0000A6C800E9A601 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (83, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'107010000', CAST(0x0000A6C800E9A601 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (84, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'107020000', CAST(0x0000A6C800E9A601 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (85, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'107030000', CAST(0x0000A6C800E9A601 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (86, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'107040000', CAST(0x0000A6C800E9A601 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (87, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'107050000', CAST(0x0000A6C800E9A601 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (88, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'107060000', CAST(0x0000A6C800E9A601 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f')
SET IDENTITY_INSERT [dbo].[M_RolePermission] OFF
/****** Object:  Table [dbo].[M_Role]    Script Date: 12/09/2016 18:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[M_Role](
	[AutoID] [int] IDENTITY(1,1) NOT NULL,
	[RoleID] [nvarchar](50) NULL,
	[Name] [nvarchar](50) NULL,
	[Status] [int] NOT NULL,
	[IsDefault] [int] NOT NULL,
	[Description] [nvarchar](4000) NULL,
	[CreateTime] [datetime] NULL,
	[CreateUserID] [nvarchar](50) NULL,
 CONSTRAINT [PK_M_Role] PRIMARY KEY CLUSTERED 
(
	[AutoID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[M_Role] ON
INSERT [dbo].[M_Role] ([AutoID], [RoleID], [Name], [Status], [IsDefault], [Description], [CreateTime], [CreateUserID]) VALUES (1, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'管理员', 1, 0, N'所有权限', CAST(0x0000A6C0010602CC AS DateTime), N'')
INSERT [dbo].[M_Role] ([AutoID], [RoleID], [Name], [Status], [IsDefault], [Description], [CreateTime], [CreateUserID]) VALUES (2, N'dd87ca0a-b425-4e1e-b7ec-7a1e02dad0f8', N'代理用户', 1, 0, N'代理用户-菜单显示', CAST(0x0000A6C001067F44 AS DateTime), N'')
INSERT [dbo].[M_Role] ([AutoID], [RoleID], [Name], [Status], [IsDefault], [Description], [CreateTime], [CreateUserID]) VALUES (3, N'48eb0491-d92c-4664-ab27-37320ac7de38', N'会员用户', 1, 0, N'不包含 新增用户 部分报表 等功能', CAST(0x0000A6C00106B1FC AS DateTime), N'')
SET IDENTITY_INSERT [dbo].[M_Role] OFF
/****** Object:  Table [dbo].[FeedBack]    Script Date: 12/09/2016 18:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FeedBack](
	[AutoID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](150) NOT NULL,
	[TipedID] [nvarchar](64) NULL,
	[TipedName] [nvarchar](64) NULL,
	[Type] [int] NOT NULL,
	[Status] [int] NOT NULL,
	[Remark] [nvarchar](4000) NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreateUserID] [nvarchar](64) NOT NULL,
	[Content] [nvarchar](1000) NULL,
 CONSTRAINT [PK_FeedBack] PRIMARY KEY CLUSTERED 
(
	[AutoID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Active]    Script Date: 12/09/2016 18:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Active](
	[AutoID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](300) NOT NULL,
	[Tips] [nvarchar](200) NULL,
	[Content] [text] NULL,
	[Img] [nvarchar](200) NULL,
	[BTime] [datetime] NOT NULL,
	[ETime] [datetime] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreateUserID] [nvarchar](50) NOT NULL,
	[UpdTime] [datetime] NOT NULL,
	[UpdUserID] [nvarchar](50) NULL,
	[Status] [int] NOT NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_Active] PRIMARY KEY CLUSTERED 
(
	[AutoID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Active] ON
INSERT [dbo].[Active] ([AutoID], [Title], [Tips], [Content], [Img], [BTime], [ETime], [CreateTime], [CreateUserID], [UpdTime], [UpdUserID], [Status], [Type]) VALUES (1, N'宿舍的风格', N'双方各', N'%3Cp%20style=%22text-align:%20center;%22%3E%E7%88%B1%E7%9A%84%E5%8F%B8%E6%B3%95%E6%96%AF%E8%92%82%E8%8A%AC%E7%88%B1%E7%96%AF%E9%98%BF%E6%96%AF%E8%92%82%E8%8A%AC%E6%92%92%E5%8F%91%E7%9A%84%E5%8F%91%E6%92%92%E7%9A%84%E9%A3%9E%3Cimg%20src=%22http://localhost:6323/modules/plug/umeditor/net/upload/image/20161117/6361498831948672463772789.jpg%22%20title=%228bd59af0936763f5e5fcbbf55b1f13c9.jpg%22%20alt=%228bd59af0936763f5e5fcbbf55b1f13c9.jpg%22/%3E%E6%92%92%E7%9A%84%E5%8F%91%E6%92%92%E7%9A%84%E5%8F%91%E6%92%92%E7%9A%84%E5%8F%91%E7%94%9F%E5%A4%A7%E5%B9%85%E5%9B%9B%E8%B0%9B%E6%B3%95%E9%98%BF%E6%96%AF%E8%92%82%E8%8A%AC%E6%9A%97%E7%A4%BA%3C/p%3E%3Cp%3E%E9%98%BF%E6%96%AF%E9%A1%BF%E5%8F%91%E7%94%9F%E5%9C%B0%E6%96%B9%E6%92%92fd%E6%89%93%E5%8F%91%E5%A3%AB%E5%A4%A7%E5%A4%AB%3C/p%3E', N'/Content/tempfile/20161117140503537515.jpg', CAST(0x0000A6B100000000 AS DateTime), CAST(0x0000A6CE00000000 AS DateTime), CAST(0x0000A6C100E8BB72 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C100F33D98 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506', 0, 0)
INSERT [dbo].[Active] ([AutoID], [Title], [Tips], [Content], [Img], [BTime], [ETime], [CreateTime], [CreateUserID], [UpdTime], [UpdUserID], [Status], [Type]) VALUES (2, N'系统发布', N'系统全新上线 亮瞎你的狗眼', N'%3Cp%3E&nbsp;%20%3Cspan%20style=%22font-size:%2016px;%20color:%20rgb(255,%200,%200);%22%3E%E7%B3%BB%E7%BB%9F%E5%85%AC%E5%91%8A:%3C/span%3E%3C/p%3E%3Cp%3E%3Cspan%20style=%22font-size:%2016px;%20color:%20rgb(255,%200,%200);%22%3E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;%3Cspan%20style=%22font-size:%2016px;%20color:%20rgb(127,%20127,%20127);%22%3E&nbsp;%3Cspan%20style=%22font-size:%2014px;%22%3E%E4%BA%B2%E7%88%B1%E7%9A%84%E7%94%A8%E6%88%B7%E4%BB%AC%20%E4%BD%A0%E5%A5%BD!%3C/span%3E%3C/span%3E%3Cbr/%3E%3C/span%3E%3C/p%3E%3Cp%3E%3Cspan%20style=%22font-size:%2016px;%20color:%20rgb(255,%200,%200);%22%3E%3Cspan%20style=%22font-size:%2016px;%20color:%20rgb(127,%20127,%20127);%22%3E%3Cspan%20style=%22font-size:%2014px;%22%3E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;%E7%B3%BB%E7%BB%9F%E4%B8%8E%3Cspan%20style=%22font-size:%2014px;%20color:%20rgb(255,%200,%200);%22%3E2016-11-17%20%3C/span%3E%E9%87%8D%E7%A3%85%E4%B8%8A%E7%BA%BF%20!%20%E5%90%84%E7%B1%BB%E5%BD%A9%E7%A7%8D%E5%BC%BA%E5%8A%BF%E6%8F%92%E5%85%A5!%E6%AC%A2%E8%BF%8E%E4%BD%A0%E5%8F%82%E4%B8%8E%E5%85%B6%E4%B8%AD&nbsp;%3Cbr/%3E%3C/span%3E%3C/span%3E%3C/span%3E%3C/p%3E%3Cp%20style=%22text-align:%20right;%22%3E%3Cspan%20style=%22font-size:%2016px;%20color:%20rgb(255,%200,%200);%22%3E%3Cspan%20style=%22font-size:%2016px;%20color:%20rgb(127,%20127,%20127);%22%3E%3Cspan%20style=%22font-size:%2014px;%22%3E&nbsp;%3Cspan%20style=%22font-size:%2014px;%20color:%20rgb(0,%200,%200);%22%3E%20&nbsp;%3Cspan%20style=%22font-size:%2014px;%20color:%20rgb(89,%2089,%2089);%22%3E%202016-11-16%2018:00:00%3C/span%3E%3C/span%3E%3Cbr/%3E%3C/span%3E%3C/span%3E%3C/span%3E%3C/p%3E', N'/Content/UploadFiles/Active/201611/2016111717351935197041.jpg', CAST(0x0000A6C100000000 AS DateTime), CAST(0x0000A6C100000000 AS DateTime), CAST(0x0000A6C10121DC8D AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C10121DC8D AS DateTime), NULL, 0, 1)
INSERT [dbo].[Active] ([AutoID], [Title], [Tips], [Content], [Img], [BTime], [ETime], [CreateTime], [CreateUserID], [UpdTime], [UpdUserID], [Status], [Type]) VALUES (3, N'停机升级', N'今晚8整 服务器停机升级', N'%3Ch2%20style=%22margin-top:%200px;%20margin-bottom:%200px;%20padding:%200px;%20border:%20none;%20color:%20rgb(48,%2048,%2048);%20font-family:%20Arial,%20Tahoma,%20Helvetica,%20%E5%BE%AE%E8%BD%AF%E9%9B%85%E9%BB%91,%20%E5%AE%8B%E4%BD%93,%20sans-serif;%20font-size:%2014px;%20white-space:%20normal;%22%3E%3Cspan%20style=%22color:%20rgb(255,%200,%200);%22%3E%E9%87%8D%E8%A6%81%E9%80%9A%E7%9F%A5%EF%BC%9A%3C/span%3E%3C/h2%3E%3Cp%20style=%22margin-top:%200px;%20margin-bottom:%200px;%20padding:%200px;%20border:%20none;%20color:%20rgb(48,%2048,%2048);%20font-family:%20Arial,%20Tahoma,%20Helvetica,%20%E5%BE%AE%E8%BD%AF%E9%9B%85%E9%BB%91,%20%E5%AE%8B%E4%BD%93,%20sans-serif;%20font-size:%2014px;%20white-space:%20normal;%22%3E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;%3Cspan%20style=%22color:%20rgb(89,%2089,%2089);%22%3E%E7%94%B5%E5%AD%90%E5%95%86%E5%8A%A1%E5%B9%B3%E5%8F%B0%E5%B0%86%E4%BA%8E2016%E5%B9%B410%E6%9C%8821%E6%97%A5%EF%BC%88%E4%BB%8A%E5%A4%A9%EF%BC%89%E4%B8%8B%E5%8D%8818:00---20:00%E8%BF%9B%E8%A1%8C%E5%81%9C%E6%9C%BA%E7%BB%B4%E6%8A%A4%E3%80%82%E5%B1%8A%E6%97%B6%E7%94%B5%E5%AD%90%E5%95%86%E5%8A%A1%E5%B9%B3%E5%8F%B0%EF%BC%88%E7%94%B5%E5%AD%90%E5%95%86%E5%9F%8E%E3%80%81%E9%9B%86%E9%87%87%E5%B9%B3%E5%8F%B0%E3%80%81%E7%94%B5%E5%AD%90%E8%B6%85%E5%B8%82%EF%BC%89%E5%B0%86%E5%81%9C%E6%AD%A2%E6%9C%8D%E5%8A%A1%EF%BC%8C%E8%AF%B7%E5%A4%A7%E5%AE%B6%E5%90%88%E7%90%86%E5%AE%89%E6%8E%92%E5%B7%A5%E4%BD%9C%E6%97%B6%E9%97%B4%EF%BC%8C%E5%8F%8A%E6%97%B6%E5%A4%84%E7%90%86%E4%B8%9A%E5%8A%A1%E6%95%B0%E6%8D%AE%E3%80%82%E6%9C%9F%E9%97%B4%E7%BB%99%E6%82%A8%E5%B8%A6%E6%9D%A5%E7%9A%84%E4%B8%8D%E4%BE%BF%E6%95%AC%E8%AF%B7%E8%B0%85%E8%A7%A3%EF%BC%81%3C/span%3E%3C/p%3E%3Ch3%20style=%22margin-top:%200px;%20margin-bottom:%200px;%20padding:%200px;%20border:%20none;%20color:%20rgb(48,%2048,%2048);%20font-family:%20Arial,%20Tahoma,%20Helvetica,%20%E5%BE%AE%E8%BD%AF%E9%9B%85%E9%BB%91,%20%E5%AE%8B%E4%BD%93,%20sans-serif;%20font-size:%2014px;%20white-space:%20normal;%22%3E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;%3Cspan%20style=%22color:%20rgb(89,%2089,%2089);%22%3E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Michaux%E6%8A%80%E6%9C%AF%E6%94%AF%E6%8C%81%3C/span%3E%3C/h3%3E%3Ch3%20style=%22margin-top:%200px;%20margin-bottom:%200px;%20padding:%200px;%20border:%20none;%20color:%20rgb(48,%2048,%2048);%20font-family:%20Arial,%20Tahoma,%20Helvetica,%20%E5%BE%AE%E8%BD%AF%E9%9B%85%E9%BB%91,%20%E5%AE%8B%E4%BD%93,%20sans-serif;%20font-size:%2014px;%20white-space:%20normal;%22%3E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;%3Cspan%20style=%22color:%20rgb(89,%2089,%2089);%22%3E&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2016-11-17%3C/span%3E%3C/h3%3E%3Cp%3E%3Cbr/%3E%3C/p%3E', N'/modules/images/default.png', CAST(0x0000A6C100000000 AS DateTime), CAST(0x0000A6C100000000 AS DateTime), CAST(0x0000A6C101252A9C AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C101252A9C AS DateTime), NULL, 0, 1)
SET IDENTITY_INSERT [dbo].[Active] OFF
/****** Object:  Table [dbo].[AccountOperateRecord]    Script Date: 12/09/2016 18:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountOperateRecord](
	[AutoID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](64) NOT NULL,
	[AccountChange] [decimal](18, 2) NOT NULL,
	[Account] [decimal](18, 2) NOT NULL,
	[AccountType] [int] NOT NULL,
	[PlayType] [int] NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Remark] [nvarchar](300) NULL,
	[CreateUserID] [nvarchar](50) NULL,
	[IP] [nvarchar](50) NULL,
	[InAccount] [decimal](18, 2) NULL,
	[OutAccount] [decimal](18, 2) NULL,
	[Type] [int] NULL,
 CONSTRAINT [PK_AccountOperateRecord] PRIMARY KEY CLUSTERED 
(
	[AutoID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'0 增加 1扣减' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'AccountOperateRecord', @level2type=N'COLUMN',@level2name=N'Type'
GO
SET IDENTITY_INSERT [dbo].[AccountOperateRecord] ON
INSERT [dbo].[AccountOperateRecord] ([AutoID], [UserID], [AccountChange], [Account], [AccountType], [PlayType], [CreateTime], [Remark], [CreateUserID], [IP], [InAccount], [OutAccount], [Type]) VALUES (3, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(100.00 AS Decimal(18, 2)), CAST(200.00 AS Decimal(18, 2)), 0, 1, CAST(0x0000A6C70103A1EF AS DateTime), N'用户充值', N'CF31A86D-281D-4F42-991F-5BB760B4B506', NULL, CAST(200.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL)
INSERT [dbo].[AccountOperateRecord] ([AutoID], [UserID], [AccountChange], [Account], [AccountType], [PlayType], [CreateTime], [Remark], [CreateUserID], [IP], [InAccount], [OutAccount], [Type]) VALUES (4, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), 2, 3, CAST(0x0000A6D200B2E763 AS DateTime), N'投注扣除余额', N'CF31A86D-281D-4F42-991F-5BB760B4B506', N'::1', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[AccountOperateRecord] ([AutoID], [UserID], [AccountChange], [Account], [AccountType], [PlayType], [CreateTime], [Remark], [CreateUserID], [IP], [InAccount], [OutAccount], [Type]) VALUES (5, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), 2, 3, CAST(0x0000A6D200B2E767 AS DateTime), N'投注扣除余额', N'CF31A86D-281D-4F42-991F-5BB760B4B506', N'::1', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[AccountOperateRecord] ([AutoID], [UserID], [AccountChange], [Account], [AccountType], [PlayType], [CreateTime], [Remark], [CreateUserID], [IP], [InAccount], [OutAccount], [Type]) VALUES (6, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(2.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), 2, 3, CAST(0x0000A6D200B68308 AS DateTime), N'投注扣除余额', N'CF31A86D-281D-4F42-991F-5BB760B4B506', N'::1', CAST(0.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[AccountOperateRecord] ([AutoID], [UserID], [AccountChange], [Account], [AccountType], [PlayType], [CreateTime], [Remark], [CreateUserID], [IP], [InAccount], [OutAccount], [Type]) VALUES (7, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(2.00 AS Decimal(18, 2)), CAST(298.00 AS Decimal(18, 2)), 2, 3, CAST(0x0000A6D200B7E845 AS DateTime), N'投注扣除余额', N'CF31A86D-281D-4F42-991F-5BB760B4B506', N'::1', CAST(0.00 AS Decimal(18, 2)), CAST(2.00 AS Decimal(18, 2)), 1)
SET IDENTITY_INSERT [dbo].[AccountOperateRecord] OFF
/****** Object:  Table [dbo].[Plays]    Script Date: 12/09/2016 18:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Plays](
	[AutoID] [int] IDENTITY(1,1) NOT NULL,
	[PID] [nvarchar](50) NOT NULL,
	[PCode] [nvarchar](50) NOT NULL,
	[PName] [nvarchar](50) NOT NULL,
	[PLen] [int] NULL,
	[CreateTime] [datetime] NOT NULL,
	[Status] [int] NOT NULL,
	[Layer] [int] NOT NULL,
UNIQUE NONCLUSTERED 
(
	[PCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Plays] ON
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (1, N'72FBA814-AE55-4A29-B6D2-85423E0F8F1C', N'1WUX', N'五星', 5, CAST(0x0000A6C900C50AF6 AS DateTime), 0, 1)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (2, N'33217F92-5879-42AC-86A7-9856CC9F91EE', N'1SIX', N'四星', 4, CAST(0x0000A6C900C516BD AS DateTime), 0, 1)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (3, N'14956AAF-C2A0-4160-A340-D1463A805E7A', N'1SANX', N'三星', 3, CAST(0x0000A6C900C53844 AS DateTime), 0, 1)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (4, N'B8BA772E-00D6-4F75-9EB4-3B4ADDB30D8E', N'1ERX', N'二星', 2, CAST(0x0000A6C900C53EEF AS DateTime), 0, 1)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (5, N'C4C3409C-91EC-4FBA-8016-A7823F7B2D4C', N'1QIANS', N'前三', 3, CAST(0x0000A6C900C54EC0 AS DateTime), 0, 1)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (6, N'4159770A-30F3-4D03-9F97-CF7C5A9F89B9', N'1ZHONGS', N'中三', 3, CAST(0x0000A6C900C5585A AS DateTime), 0, 1)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (7, N'A7326927-2F99-4191-A86D-01E44F1D4D5C', N'1HS', N'后三', 3, CAST(0x0000A6C900C55F9A AS DateTime), 0, 1)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (8, N'959A8C86-5724-4AB1-96B6-53406C712EE8', N'1DWEID', N'定位胆', 0, CAST(0x0000A6C900C58A86 AS DateTime), 0, 1)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (9, N'CCBC55AA-EF7A-49DF-A276-5318417FE186', N'1BUDW', N'不定位', 0, CAST(0x0000A6C900C598EF AS DateTime), 0, 1)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (10, N'0CED4851-71F4-45C5-8ED3-91C1E770BD71', N'1RENX', N'任选', 0, CAST(0x0000A6C900C5A89A AS DateTime), 0, 1)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (11, N'4ABF03B2-4ED6-4DE0-87C2-3C6913D7C885', N'1QUWEIX', N'趣味型', 0, CAST(0x0000A6C900C5BB25 AS DateTime), 0, 1)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (12, N'32ADE9FE-45F5-4507-A817-51CF5E17D872', N'2ZHIX', N'直选', 0, CAST(0x0000A6C900C68B79 AS DateTime), 0, 2)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (13, N'47FB200C-2AE3-4721-AFBB-D243D1D18D6E', N'2ZUX', N'组选', 0, CAST(0x0000A6C900C69444 AS DateTime), 0, 2)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (14, N'74F8F192-8B30-41D6-973B-7FF135E0C41C', N'2HE', N'后二', 0, CAST(0x0000A6C900C6B704 AS DateTime), 0, 2)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (15, N'E06AF562-6644-4F47-B073-408A1EBDB69E', N'2QE', N'前二', 0, CAST(0x0000A6C900C6BFDD AS DateTime), 0, 2)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (16, N'69FA09C2-5946-4B44-8926-878817E2CCFD', N'2YM', N'一码', 0, CAST(0x0000A6C900C6DD92 AS DateTime), 0, 2)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (17, N'0E62B4C8-2292-415A-AB45-BFD9E4C0B9B2', N'2ERMA', N'二码', 0, CAST(0x0000A6C900C6E9AB AS DateTime), 0, 2)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (18, N'C6077028-5DEB-4DD6-A72D-D1F59AC7E367', N'2DXDS', N'大小单双', 0, CAST(0x0000A6C900C6F1AE AS DateTime), 0, 2)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (19, N'F43F5AC6-3B75-43A8-A365-DF3F1D3DF7DD', N'2PSZHIX', N'排三直选', 0, CAST(0x0000A6C900C72343 AS DateTime), 0, 2)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (20, N'E0AE0635-EC5D-45B6-BF08-C20E8B61D4E1', N'2PSZUX', N'排三组选', 0, CAST(0x0000A6C900C72BD0 AS DateTime), 0, 2)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (21, N'5EB6C925-8151-45F7-AC4E-9C468414D436', N'2PAIS', N'排三', 0, CAST(0x0000A6C900C7481D AS DateTime), 0, 2)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (22, N'582F8CCC-BE11-4E74-A6EF-BE31C752FACF', N'2FUS', N'复式', 0, CAST(0x0000A6C900C766C4 AS DateTime), 0, 2)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (23, N'C7D041DE-1D07-48E7-BA97-8F49E2A80693', N'2DANS', N'单式', 0, CAST(0x0000A6C900C76F6D AS DateTime), 0, 2)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (24, N'48E47F1A-DF56-459C-8927-0CDA4F83250D', N'2WUW', N'五位', 0, CAST(0x0000A6C900C77A4B AS DateTime), 0, 2)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (25, N'8DD9F538-06C4-49A6-89EB-EBF8327263D3', N'2RENE', N'任二', 0, CAST(0x0000A6C900EA9F51 AS DateTime), 0, 2)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (26, N'8C6C98E1-9E79-47A8-9065-BAC99C8F287B', N'2RSAN', N'任三', 0, CAST(0x0000A6C900EAA5A8 AS DateTime), 0, 2)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (27, N'FAC2D288-9E9E-48CB-9F4F-F9526084FE97', N'2RSI', N'任四', 0, CAST(0x0000A6C900EAABCA AS DateTime), 0, 2)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (28, N'5DFEBC90-FDE9-487B-A5F1-DA7C7BA75468', N'3ZHIXFS', N'直选复式', 0, CAST(0x0000A6C900EF69A5 AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (29, N'404FEB76-C8D7-4008-9708-5757085472FD', N'3ZHIXDS', N'直选单式', 0, CAST(0x0000A6C900EF6DB0 AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (30, N'10EBB766-6EEA-491B-B2DE-701EC8399512', N'3ZUXFS', N'组选复式', 0, CAST(0x0000A6C900EF7569 AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (31, N'D790160F-33D5-4414-9A24-D1C2330B82D5', N'3ZUXDS', N'组选单式', 0, CAST(0x0000A6C900EF7B8B AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (32, N'1AE73DC4-1534-4808-BA1E-C21CE091D0CA', N'3WUXZH', N'五星组合', 0, CAST(0x0000A6C900EF97EA AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (33, N'C651D94E-C5F7-4810-A6F6-6C0CE64F69DE', N'3SIXZH', N'四星组合', 0, CAST(0x0000A6C900EFA27B AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (34, N'71D3B41F-B33B-4680-8813-BE58C9D89DC9', N'3ZHIXHZ', N'直选和值', 0, CAST(0x0000A6C900F009DF AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (35, N'D1F0F545-00A3-4D5B-881C-5AA112274FDE', N'3ZUXHZ', N'组选和值', 0, CAST(0x0000A6C900F01923 AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (36, N'C60FC70C-0AA7-4855-A612-842E8D7207B3', N'3HHZUX', N'混合组选', 0, CAST(0x0000A6C900F030D2 AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (37, N'F4239730-EA1A-4B0D-B255-D5AEDEA3D4F9', N'3ZUS', N'组三', 0, CAST(0x0000A6C900F0466E AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (38, N'3ADB442C-F9DE-4215-B97C-16FA10B17DF4', N'3ZUL', N'组六', 0, CAST(0x0000A6C900F04D1D AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (39, N'2D351B38-E572-444D-B7CB-FE1BF9E012E8', N'3HSYMBDW', N'后三一码不定位', 0, CAST(0x0000A6C900F0C7C6 AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (40, N'5BD602CF-6D63-4312-AD1F-127622C07794', N'3ZSYMBDW', N'中三一码不定位', 0, CAST(0x0000A6C900F0CD2B AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (41, N'FA9C490F-F51F-43F3-85A9-09DD5A15F296', N'3QSYMBDW', N'前三一码不定位', 0, CAST(0x0000A6C900F0DD05 AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (42, N'B5642525-3F63-4654-8B8F-9CB092E281BC', N'3HSEMBDW', N'后三二码不定位', 0, CAST(0x0000A6C900F0EFAF AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (43, N'14E34938-0595-403B-98E2-29F99566532D', N'3ZSEMBDW', N'中三二码不定位', 0, CAST(0x0000A6C900F0FB22 AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (44, N'3CE2FF5C-FF37-420A-8380-E4969EBABDE3', N'3QSEMBDW', N'前三二码不定位', 0, CAST(0x0000A6C900F108D6 AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (45, N'480A86D5-73A9-408B-A370-8D35B5FFD11A', N'3ZUSFS', N'组三复式', 0, CAST(0x0000A6C900F12AFB AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (46, N'37A8229C-A4DD-4BE4-AE63-8ACE9CC3E643', N'3ZUSDS', N'组三单式', 0, CAST(0x0000A6C900F1365A AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (47, N'D9F034A9-2728-419A-89BA-4F3CE93726B6', N'3ZULFS', N'组六复式', 0, CAST(0x0000A6C900F141A7 AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (48, N'F75ADD85-78D9-464E-B2BC-8A851D05A3E3', N'3ZULDS', N'组六单式', 0, CAST(0x0000A6C900F14E54 AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (49, N'C566A016-9B08-4189-99F8-0598C0A658B2', N'3QEDXDS', N'前二大小单双', 0, CAST(0x0000A6C900F15FD5 AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (50, N'EC0D8F94-5FF8-430D-8EBE-EFA08C302F60', N'3HEDXDS', N'后二大小单双', 0, CAST(0x0000A6C900F16CB9 AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (51, N'A77CD41A-7EA6-415C-A877-9767EBFB0A27', N'3DINGDS', N'定单双', 0, CAST(0x0000A6C900FD51C5 AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (52, N'AB4BA4C5-9224-4A98-8B2F-91EA3897C4FB', N'3CAIZW', N'猜中位', 0, CAST(0x0000A6C900FD5B8D AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (53, N'59A9B90F-B665-4A6E-955A-1E11ECF9845F', N'3YIZYI', N'一中一', 0, CAST(0x0000A6C900FDBCE1 AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (54, N'7FE90700-B761-4784-94E3-76F88FA9C76C', N'3ERZER', N'二中二', 0, CAST(0x0000A6C900FDC6F4 AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (55, N'F3D0D995-6703-4E36-81B7-468498987BCA', N'3SANZSAN', N'三中三', 0, CAST(0x0000A6C900FDD0F7 AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (56, N'9489D7FE-D4A0-46EC-98E8-080CBB0D97F7', N'3SIZSI', N'四中四', 0, CAST(0x0000A6C900FDE4DD AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (57, N'9226B1A7-B5B5-4D68-A785-91877B82A6ED', N'3WUZWU', N'五中五', 0, CAST(0x0000A6C900FDEE87 AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (58, N'7B85105B-ECFB-4E13-998C-E7F99F9BCCEA', N'3LIUZWU', N'六中五', 0, CAST(0x0000A6C900FDFB90 AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (59, N'1D11B561-6F60-4425-B569-FD376A3C70AC', N'3QIZWU', N'七中五', 0, CAST(0x0000A6C900FE031C AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (60, N'A13406F8-191A-4614-B311-414CA86983A3', N'3BAZWU', N'八中五', 0, CAST(0x0000A6C900FE0AAF AS DateTime), 0, 3)
INSERT [dbo].[Plays] ([AutoID], [PID], [PCode], [PName], [PLen], [CreateTime], [Status], [Layer]) VALUES (61, N'7ADADA32-86B3-4D80-9C8B-D62B7938627A', N'2QS', N'前三', 0, CAST(0x0000A6CC00FCD510 AS DateTime), 0, 2)
SET IDENTITY_INSERT [dbo].[Plays] OFF
/****** Object:  Table [dbo].[UsersLog]    Script Date: 12/09/2016 18:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UsersLog](
	[AutoID] [int] NULL,
	[UserID] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Remark] [varchar](500) NULL,
	[Type] [int] NOT NULL,
	[IP] [nvarchar](50) NOT NULL,
	[Sheng] [nvarchar](50) NULL,
	[Shi] [nvarchar](50) NULL,
	[Qu] [nvarchar](50) NULL,
	[IpName] [nvarchar](50) NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6BF017B19D8 AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6BF0181A2AA AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C0009068C8 AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C000ED1C87 AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C000ED7CA7 AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C000F2F7EA AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C000F2524E AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C000F26036 AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C001619F86 AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C1008E9240 AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C20097487E AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C200ECBD58 AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C2012826A4 AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C4009D657A AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C400ED756C AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C40158D447 AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C50092AC4D AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C500EB3C71 AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C5015972AD AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C5015A8349 AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C5016421E5 AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C6009013B9 AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C60097F934 AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C600B028AB AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6CA00EDD39B AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6D200AF9236 AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6D200B3CA94 AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6D200B40B2C AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6D200ED72E1 AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C600B06895 AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6D201244970 AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6D20147E326 AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6D30092A4F1 AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6D301105E7D AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6D4008E7963 AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6D400F7230B AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6D50092BE70 AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6D500E8FACE AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6D600FFAC5A AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6D700B0BA97 AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6D700F6C702 AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
INSERT [dbo].[UsersLog] ([AutoID], [UserID], [CreateTime], [Remark], [Type], [IP], [Sheng], [Shi], [Qu], [IpName]) VALUES (NULL, N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6D700F6C7EB AS DateTime), NULL, 0, N'::1', NULL, NULL, NULL, NULL)
/****** Object:  Table [dbo].[UserReply]    Script Date: 12/09/2016 18:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserReply](
	[AutoID] [int] IDENTITY(1,1) NOT NULL,
	[ReplyID] [nvarchar](64) NOT NULL,
	[GUID] [nvarchar](64) NOT NULL,
	[Title] [nvarchar](1000) NOT NULL,
	[Content] [nvarchar](3000) NOT NULL,
	[Status] [int] NOT NULL,
	[FromReplyID] [nvarchar](64) NULL,
	[FromReplyUserID] [nvarchar](64) NULL,
	[CreateTime] [datetime] NOT NULL,
	[CreateUserID] [nvarchar](64) NOT NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_Reply] PRIMARY KEY CLUSTERED 
(
	[ReplyID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserReply] ON
INSERT [dbo].[UserReply] ([AutoID], [ReplyID], [GUID], [Title], [Content], [Status], [FromReplyID], [FromReplyUserID], [CreateTime], [CreateUserID], [Type]) VALUES (13, N'02E06B3C-0056-4F06-9272-21BE864EFC85', N'4859c0df-c5d7-4980-ae78-415c684605b4', N'今天中午聚会', N'份子钱上交', 0, N'', N'', CAST(0x0000A6C600AF8C33 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506', 0)
INSERT [dbo].[UserReply] ([AutoID], [ReplyID], [GUID], [Title], [Content], [Status], [FromReplyID], [FromReplyUserID], [CreateTime], [CreateUserID], [Type]) VALUES (4, N'0E3BA56A-140D-42B5-8008-B5C34BED216E', N'1c7a640d-dcb5-4e2b-8b82-1eae4b2ae17e', N'asd ', N'', 0, N'', N'', CAST(0x0000A6C600083610 AS DateTime), N'1c7a640d-dcb5-4e2b-8b82-1eae4b2ae17e', 0)
INSERT [dbo].[UserReply] ([AutoID], [ReplyID], [GUID], [Title], [Content], [Status], [FromReplyID], [FromReplyUserID], [CreateTime], [CreateUserID], [Type]) VALUES (9, N'47D67A7F-FBC2-4991-8885-83547FBE2E0F', N'1c7a640d-dcb5-4e2b-8b82-1eae4b2ae17e', N'fasdf', N'asdfasdfsadf', 0, N'', N'', CAST(0x0000A6C600122149 AS DateTime), N'1c7a640d-dcb5-4e2b-8b82-1eae4b2ae17e', 0)
INSERT [dbo].[UserReply] ([AutoID], [ReplyID], [GUID], [Title], [Content], [Status], [FromReplyID], [FromReplyUserID], [CreateTime], [CreateUserID], [Type]) VALUES (2, N'76A6FD77-0718-4EE7-820B-8F7982A9E019', N'1c7a640d-dcb5-4e2b-8b82-1eae4b2ae17e', N'测试版', N'', 1, N'', N'', CAST(0x0000A6C50161A398 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506', 0)
INSERT [dbo].[UserReply] ([AutoID], [ReplyID], [GUID], [Title], [Content], [Status], [FromReplyID], [FromReplyUserID], [CreateTime], [CreateUserID], [Type]) VALUES (14, N'7A700E85-E0B4-4B31-8EF8-FB457BE652F1', N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'今天中午聚会', N'份子钱上交', 1, N'', N'', CAST(0x0000A6C600AF8C33 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506', 0)
INSERT [dbo].[UserReply] ([AutoID], [ReplyID], [GUID], [Title], [Content], [Status], [FromReplyID], [FromReplyUserID], [CreateTime], [CreateUserID], [Type]) VALUES (8, N'83987377-2E38-44D3-BE99-37C69F69FE42', N'1c7a640d-dcb5-4e2b-8b82-1eae4b2ae17e', N'Re:Re:asdf', N'%3Cfont%20%20color=''#FF3300''%3E2016-11-22%2001:00:25%E5%86%99%EF%BC%9A%3C/font%3Efasdfasdf%3Cbr%3E', 9, N'9199F638-F6BE-49A2-A60D-24419EE45110', N'', CAST(0x0000A6C6001098CE AS DateTime), N'1c7a640d-dcb5-4e2b-8b82-1eae4b2ae17e', 0)
INSERT [dbo].[UserReply] ([AutoID], [ReplyID], [GUID], [Title], [Content], [Status], [FromReplyID], [FromReplyUserID], [CreateTime], [CreateUserID], [Type]) VALUES (16, N'8728DAA0-4DAF-445A-9BB7-CF2244DAC3E4', N'1c7a640d-dcb5-4e2b-8b82-1eae4b2ae17e', N'测试A', N'阿斯顿发送到', 0, N'', N'', CAST(0x0000A6C600AFC6E9 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506', 0)
INSERT [dbo].[UserReply] ([AutoID], [ReplyID], [GUID], [Title], [Content], [Status], [FromReplyID], [FromReplyUserID], [CreateTime], [CreateUserID], [Type]) VALUES (19, N'8EFBF73E-2C72-4D5C-A20D-9ACF61034980', N'CF31A86D-281D-4F42-991F-5BB760B4B506', N'Re:今天中午聚会', N'%3Cfont%20%20color=''#FF3300''%3E2016-11-22%2010:42:03%E5%86%99%EF%BC%9A%3C/font%3E%E7%9F%A5%E9%81%93%E4%BA%86%3Cbr%3E', 0, N'7A700E85-E0B4-4B31-8EF8-FB457BE652F1', N'', CAST(0x0000A6C600B05943 AS DateTime), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', 0)
INSERT [dbo].[UserReply] ([AutoID], [ReplyID], [GUID], [Title], [Content], [Status], [FromReplyID], [FromReplyUserID], [CreateTime], [CreateUserID], [Type]) VALUES (7, N'9199F638-F6BE-49A2-A60D-24419EE45110', N'1c7a640d-dcb5-4e2b-8b82-1eae4b2ae17e', N'Re:asdf', N'%3Cfont%20%20color=''#FF3300''%3E2016-11-22%2000:57:01%E5%86%99%EF%BC%9A%3C/font%3Easdfsdf%3Cbr%3E', 0, N'A2692479-6EDD-4E2E-AF98-0353757BBA13', N'', CAST(0x0000A6C6000FA97E AS DateTime), N'1c7a640d-dcb5-4e2b-8b82-1eae4b2ae17e', 0)
INSERT [dbo].[UserReply] ([AutoID], [ReplyID], [GUID], [Title], [Content], [Status], [FromReplyID], [FromReplyUserID], [CreateTime], [CreateUserID], [Type]) VALUES (3, N'9909C2D7-6634-4FFC-ADE4-E5DFCCD106C9', N'1c7a640d-dcb5-4e2b-8b82-1eae4b2ae17e', N'恢复测试', N'', 0, N'', N'', CAST(0x0000A6C5017D4CD8 AS DateTime), N'1c7a640d-dcb5-4e2b-8b82-1eae4b2ae17e', 0)
INSERT [dbo].[UserReply] ([AutoID], [ReplyID], [GUID], [Title], [Content], [Status], [FromReplyID], [FromReplyUserID], [CreateTime], [CreateUserID], [Type]) VALUES (5, N'A2692479-6EDD-4E2E-AF98-0353757BBA13', N'1c7a640d-dcb5-4e2b-8b82-1eae4b2ae17e', N'asdf', N'asdfdsa', 0, N'', N'', CAST(0x0000A6C6000AB2B5 AS DateTime), N'1c7a640d-dcb5-4e2b-8b82-1eae4b2ae17e', 0)
INSERT [dbo].[UserReply] ([AutoID], [ReplyID], [GUID], [Title], [Content], [Status], [FromReplyID], [FromReplyUserID], [CreateTime], [CreateUserID], [Type]) VALUES (12, N'A4CE692B-BCF1-4B00-8B0B-7AF6E49C426C', N'1c7a640d-dcb5-4e2b-8b82-1eae4b2ae17e', N'今天中午聚会', N'份子钱上交', 0, N'', N'', CAST(0x0000A6C600AF8C33 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506', 0)
INSERT [dbo].[UserReply] ([AutoID], [ReplyID], [GUID], [Title], [Content], [Status], [FromReplyID], [FromReplyUserID], [CreateTime], [CreateUserID], [Type]) VALUES (17, N'B5B5055C-754B-4782-9EB6-412B8AE524F6', N'4859c0df-c5d7-4980-ae78-415c684605b4', N'测试A', N'阿斯顿发送到', 0, N'', N'', CAST(0x0000A6C600AFC6E9 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506', 0)
INSERT [dbo].[UserReply] ([AutoID], [ReplyID], [GUID], [Title], [Content], [Status], [FromReplyID], [FromReplyUserID], [CreateTime], [CreateUserID], [Type]) VALUES (15, N'D32A3B63-82F7-4CAC-AF63-A654235150D2', N'', N'测试A', N'阿斯顿发送到', 0, N'', N'', CAST(0x0000A6C600AFC6E9 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506', 0)
INSERT [dbo].[UserReply] ([AutoID], [ReplyID], [GUID], [Title], [Content], [Status], [FromReplyID], [FromReplyUserID], [CreateTime], [CreateUserID], [Type]) VALUES (18, N'E1D3E453-8FEB-4270-8492-B58AEF4F764E', N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'测试A', N'阿斯顿发送到', 0, N'', N'', CAST(0x0000A6C600AFC6E9 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506', 0)
INSERT [dbo].[UserReply] ([AutoID], [ReplyID], [GUID], [Title], [Content], [Status], [FromReplyID], [FromReplyUserID], [CreateTime], [CreateUserID], [Type]) VALUES (11, N'E744E4BA-2420-4E00-B602-1EAE528A7D12', N'', N'今天中午聚会', N'份子钱上交', 0, N'', N'', CAST(0x0000A6C600AF8C33 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506', 0)
INSERT [dbo].[UserReply] ([AutoID], [ReplyID], [GUID], [Title], [Content], [Status], [FromReplyID], [FromReplyUserID], [CreateTime], [CreateUserID], [Type]) VALUES (6, N'F2A5929B-A817-41FE-B8D1-22B20977D2C3', N'1c7a640d-dcb5-4e2b-8b82-1eae4b2ae17e', N'Re:asdf', N'%3Cfont%3E2016-11-22%20HH:55:40%E5%86%99%EF%BC%9A%3C/font%3E%3Cbr%3E', 9, N'A2692479-6EDD-4E2E-AF98-0353757BBA13', N'', CAST(0x0000A6C6000F4A17 AS DateTime), N'1c7a640d-dcb5-4e2b-8b82-1eae4b2ae17e', 0)
SET IDENTITY_INSERT [dbo].[UserReply] OFF
/****** Object:  Table [dbo].[UserRelation]    Script Date: 12/09/2016 18:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserRelation](
	[AutoID] [int] IDENTITY(1,1) NOT NULL,
	[UserID] [nvarchar](50) NOT NULL,
	[ParentID] [nvarchar](50) NOT NULL,
	[Parents] [nvarchar](4000) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Layers] [int] NOT NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserRelation] ON
INSERT [dbo].[UserRelation] ([AutoID], [UserID], [ParentID], [Parents], [CreateTime], [Layers]) VALUES (8, N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'CF31A86D-281D-4F42-991F-5BB760B4B506', N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6BF016C34CA AS DateTime), 2)
INSERT [dbo].[UserRelation] ([AutoID], [UserID], [ParentID], [Parents], [CreateTime], [Layers]) VALUES (9, N'1c7a640d-dcb5-4e2b-8b82-1eae4b2ae17e', N'CF31A86D-281D-4F42-991F-5BB760B4B506', N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C000E8070A AS DateTime), 2)
INSERT [dbo].[UserRelation] ([AutoID], [UserID], [ParentID], [Parents], [CreateTime], [Layers]) VALUES (10, N'4859c0df-c5d7-4980-ae78-415c684605b4', N'CF31A86D-281D-4F42-991F-5BB760B4B506', N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C500FBB786 AS DateTime), 2)
SET IDENTITY_INSERT [dbo].[UserRelation] OFF
/****** Object:  Table [dbo].[UserOrders]    Script Date: 12/09/2016 18:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserOrders](
	[AutoID] [int] IDENTITY(1,1) NOT NULL,
	[OrderCode] [nvarchar](100) NOT NULL,
	[SPName] [nvarchar](300) NULL,
	[BankName] [nvarchar](300) NULL,
	[Sku] [nvarchar](300) NULL,
	[Content] [nvarchar](1500) NULL,
	[CreateTime] [datetime] NULL,
	[Status] [int] NULL,
	[UserID] [nvarchar](64) NOT NULL,
	[PayType] [int] NOT NULL,
	[PayFee] [decimal](18, 4) NOT NULL,
	[TotalFee] [decimal](18, 2) NOT NULL,
	[OtherCode] [nvarchar](100) NULL,
	[Type] [int] NOT NULL,
	[Num] [decimal](18, 4) NOT NULL,
	[CreateUserID] [nvarchar](64) NOT NULL,
	[UpdUserID] [nvarchar](64) NULL,
	[UpdTime] [datetime] NOT NULL,
	[IP] [nvarchar](64) NULL,
 CONSTRAINT [UserOrders_OrderCode_unique1] UNIQUE NONCLUSTERED 
(
	[OrderCode] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserOrders] ON
INSERT [dbo].[UserOrders] ([AutoID], [OrderCode], [SPName], [BankName], [Sku], [Content], [CreateTime], [Status], [UserID], [PayType], [PayFee], [TotalFee], [OtherCode], [Type], [Num], [CreateUserID], [UpdUserID], [UpdTime], [IP]) VALUES (1, N'2016112311051411', N'', N'michaux 蚂蚁金服 [支付宝]', N'79365450@qq.com', N'撒地方', CAST(0x0000A6C700B6B728 AS DateTime), 0, N'CF31A86D-281D-4F42-991F-5BB760B4B506', 0, CAST(98.0000 AS Decimal(18, 4)), CAST(100.00 AS Decimal(18, 2)), N'', 100, CAST(1.0000 AS Decimal(18, 4)), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', NULL, CAST(0x0000A6C700B6B728 AS DateTime), NULL)
INSERT [dbo].[UserOrders] ([AutoID], [OrderCode], [SPName], [BankName], [Sku], [Content], [CreateTime], [Status], [UserID], [PayType], [PayFee], [TotalFee], [OtherCode], [Type], [Num], [CreateUserID], [UpdUserID], [UpdTime], [IP]) VALUES (2, N'2016112311101111', N'', N'michaux 招商银行 [上海漕溪路支行]', N'622513236541554112', N'阿斯蒂芬', CAST(0x0000A6C700B81265 AS DateTime), 1, N'CF31A86D-281D-4F42-991F-5BB760B4B506', 1, CAST(100.0000 AS Decimal(18, 4)), CAST(100.00 AS Decimal(18, 2)), N'', 100, CAST(1.0000 AS Decimal(18, 4)), N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', NULL, CAST(0x0000A6C700B81265 AS DateTime), NULL)
SET IDENTITY_INSERT [dbo].[UserOrders] OFF
/****** Object:  Table [dbo].[UserBanks]    Script Date: 12/09/2016 18:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserBanks](
	[AutoID] [int] IDENTITY(1,1) NOT NULL,
	[TrueName] [nvarchar](50) NOT NULL,
	[BankName] [nvarchar](50) NOT NULL,
	[BankChild] [nvarchar](50) NOT NULL,
	[CardCode] [nvarchar](50) NOT NULL,
	[Status] [int] NOT NULL,
	[BankPre] [nvarchar](50) NOT NULL,
	[BankCity] [nvarchar](50) NOT NULL,
	[UserID] [nvarchar](50) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[Type] [int] NOT NULL,
 CONSTRAINT [PK_UserBanks] PRIMARY KEY CLUSTERED 
(
	[AutoID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[UserBanks] ON
INSERT [dbo].[UserBanks] ([AutoID], [TrueName], [BankName], [BankChild], [CardCode], [Status], [BankPre], [BankCity], [UserID], [CreateTime], [Type]) VALUES (1, N'巴巴多斯', N'中国建设银行', N'啊三季度', N'6225143652145895621', 9, N'江苏省', N'南京市', N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C4017E827A AS DateTime), 3)
INSERT [dbo].[UserBanks] ([AutoID], [TrueName], [BankName], [BankChild], [CardCode], [Status], [BankPre], [BankCity], [UserID], [CreateTime], [Type]) VALUES (2, N'阿斯蒂芬', N'中国工商银行', N'阿斯蒂芬', N'6225123231231231231', 9, N'天津市', N'市辖县', N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C40180A972 AS DateTime), 1)
INSERT [dbo].[UserBanks] ([AutoID], [TrueName], [BankName], [BankChild], [CardCode], [Status], [BankPre], [BankCity], [UserID], [CreateTime], [Type]) VALUES (3, N'阿斯蒂芬', N'中国工商银行', N'阿斯蒂芬', N'6225123231231231232', 9, N'辽宁省', N'沈阳市', N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(0x0000A6C4018137D5 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[UserBanks] OFF
/****** Object:  Table [dbo].[UserAccount]    Script Date: 12/09/2016 18:18:04 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[UserAccount](
	[UserID] [nvarchar](50) NOT NULL,
	[AccountFee] [decimal](18, 2) NOT NULL,
	[InAccount] [decimal](18, 2) NOT NULL,
	[OutAccount] [decimal](18, 2) NOT NULL,
	[CreateTime] [datetime] NOT NULL,
	[UpdTime] [datetime] NULL,
	[InteFee] [decimal](18, 2) NOT NULL,
	[DiscountFee] [decimal](18, 2) NOT NULL,
	[InInteFee] [decimal](18, 2) NOT NULL,
	[OutInteFee] [decimal](18, 2) NOT NULL,
	[UpdUserID] [nvarchar](50) NULL,
 CONSTRAINT [PK_UserAccount] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[UserAccount] ([UserID], [AccountFee], [InAccount], [OutAccount], [CreateTime], [UpdTime], [InteFee], [DiscountFee], [InInteFee], [OutInteFee], [UpdUserID]) VALUES (N'0f14e392-15a9-4722-9433-2f217d30daf4', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A6C001276A43 AS DateTime), CAST(0x0000A6C001276A43 AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'')
INSERT [dbo].[UserAccount] ([UserID], [AccountFee], [InAccount], [OutAccount], [CreateTime], [UpdTime], [InteFee], [DiscountFee], [InInteFee], [OutInteFee], [UpdUserID]) VALUES (N'1c7a640d-dcb5-4e2b-8b82-1eae4b2ae17e', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A6C000E8070A AS DateTime), CAST(0x0000A6C000E8070A AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'')
INSERT [dbo].[UserAccount] ([UserID], [AccountFee], [InAccount], [OutAccount], [CreateTime], [UpdTime], [InteFee], [DiscountFee], [InInteFee], [OutInteFee], [UpdUserID]) VALUES (N'4859c0df-c5d7-4980-ae78-415c684605b4', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A6C500FBB786 AS DateTime), CAST(0x0000A6C500FBB786 AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'')
INSERT [dbo].[UserAccount] ([UserID], [AccountFee], [InAccount], [OutAccount], [CreateTime], [UpdTime], [InteFee], [DiscountFee], [InInteFee], [OutInteFee], [UpdUserID]) VALUES (N'7a59b22e-d128-4666-b0bc-66523b634020', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A6C001272C6A AS DateTime), CAST(0x0000A6C001272C6A AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'')
INSERT [dbo].[UserAccount] ([UserID], [AccountFee], [InAccount], [OutAccount], [CreateTime], [UpdTime], [InteFee], [DiscountFee], [InInteFee], [OutInteFee], [UpdUserID]) VALUES (N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A6BF016C34CA AS DateTime), CAST(0x0000A6BF016C34CA AS DateTime), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), N'')
INSERT [dbo].[UserAccount] ([UserID], [AccountFee], [InAccount], [OutAccount], [CreateTime], [UpdTime], [InteFee], [DiscountFee], [InInteFee], [OutInteFee], [UpdUserID]) VALUES (N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(296.00 AS Decimal(18, 2)), CAST(300.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A6BF00B221BF AS DateTime), CAST(0x0000A6BF00B221BF AS DateTime), CAST(2000.00 AS Decimal(18, 2)), CAST(180.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL)
/****** Object:  StoredProcedure [dbo].[UpdateSD11X5Result]    Script Date: 12/09/2016 18:18:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[UpdateSD11X5Result]
@Content nvarchar(50),
@IssueName nvarchar(50),
@CPCode nvarchar(50)
as

begin
declare @err int ,@LID nvarchar(50),@UserID nvarchar(50)
set @err=0
begin try
begin tran
	--修改奖励
	update  lotteryResult set status=1,ResultNum=@Content where  IssueNum=@IssueName and CPCode=@CPCode
	set @err+=@@ERROR
	--修改订单状态
	update LotteryOrder set [Status]=1  where  IssueNum=@IssueName and CPCode=@CPCode
	--计算奖金
	select top 1 @LID=isnull(LID,''),@UserID=UserID from LotteryOrder where IssueNum=@IssueName and CPCode=@CPCode and Status=0
	while @LID<>''
	begin
		update LotteryOrder set Status=1 where LID=@LID
		
		
		
		select top 1 @LID=isnull(LID,''),@UserID=UserID from LotteryOrder where IssueNum=@IssueName and CPCode=@CPCode and Status=0
	end
	
commit tran
end try
begin catch
if(@err>0)
begin
	rollback tran
end 
end catch

end
GO
/****** Object:  StoredProcedure [dbo].[UpdateLotteryStatus]    Script Date: 12/09/2016 18:18:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  proc [dbo].[UpdateLotteryStatus]
@Status int,
@CPCode nvarchar(50)

as
begin
declare @AutoID int,@tempStatus int
select top 1 @AutoID =AutoID,@tempStatus=Status from LotteryResult where  CPCode=@CPCode  
and OpenTime>=DATEADD(MI,-2,GETDATE())  and  CreateTime<=CONVERT(varchar(100), GETDATE(), 111)+' 23:59:59'  and  OpenTime<=CONVERT(varchar(100), GETDATE(), 111)+' 23:59:59'
if(@AutoID>0 and @tempStatus=0)
begin
	Update LotteryResult set Status=@Status  where  CPCode=@CPCode  and AutoID=@AutoID
end
end
GO
/****** Object:  StoredProcedure [dbo].[UpdateBettAutoByCode]    Script Date: 12/09/2016 18:18:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[UpdateBettAutoByCode]
@BCode nvarchar(64),
@ComNum int ,
@ComFee decimal(18,2),
@Remark nvarchar(500)
as
begin

declare @s int
select  @s=BettNum from LotteryBettAuto where BCode=@BCode
if(@s=@ComNum)
begin
	Update LotteryBettAuto set ComNum=@ComNum,ComFee=ComFee+@ComFee,Status=3 where BCode=@BCode
end
else
begin
	Update LotteryBettAuto set ComNum=@ComNum,ComFee=ComFee+@ComFee where BCode=@BCode
end
end
GO
/****** Object:  StoredProcedure [dbo].[P_InsertUserReplay]    Script Date: 12/09/2016 18:18:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[P_InsertUserReplay]
@ReplyID nvarchar(64),
@Guid nvarchar(3000),
@Title nvarchar(200),
@Content nvarchar(3000),
@FromReplyID nvarchar(64),
@CreateUserID nvarchar(64),
@Type int,
@FromReplyUserID nvarchar(64),
@HasChilds int,
@Result int  output ,
@ErrorMsg nvarchar(200) output
as
begin
select @Result=-1,@ErrorMsg='收件人不能为空!' 
if( @Guid!='' or @HasChilds>-1)
begin 
	Create table #tpusers(userid nvarchar(64))
	declare @sql nvarchar(3000) 
	if(@HasChilds>-1)
	begin
		insert into #tpusers select a.UserID  from UserRelation a join M_Users b on a.UserID=b.UserID where parentID=@CreateUserID and b.Status<>9
	end
	set @sql = 'insert into #tpusers select '''+Replace(@Guid,',',''' union insert into #tpusers select')+''''
	print @sql
	exec(@sql)
	insert into UserReply (ReplyID,GUID,[Content],Title,FromReplyID,FromReplyUserID,CreateUserID,Type) 
	select newid(),c.userid,@Content,@Title,@FromReplyID,@FromReplyUserID,@CreateUserID,@Type from (select  distinct userid from #tpusers) c
	select @Result=1,@ErrorMsg='发送成功!'
	drop table #tpusers
end 



end
GO
/****** Object:  StoredProcedure [dbo].[P_InsertUserBanks]    Script Date: 12/09/2016 18:18:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[P_InsertUserBanks]
@UserID nvarchar(50),
@Cardcode nvarchar(50),
@TrueName nvarchar(50),
@BankChild nvarchar(50),
@BankPre nvarchar(50),
@BankCity nvarchar(50),
@BankName nvarchar(50),
@Type int,
@Result int out ,
@ErrorMsg nvarchar(300) out
as

begin
select @ErrorMsg='',@Result=-1
if( (select count(1) from userBanks where  UserID=UserID )>4 ) 
begin
	select @ErrorMsg='每个游戏账户最多绑定 5 张银行卡',@Result=-1
	return
end
if(exists( select cardcode from userBanks where  Cardcode=@Cardcode ) ) 
begin
	select @ErrorMsg='银行卡号已被使用',@Result=-1
	return
end
else
begin
	insert into UserBanks(UserID,Cardcode,BankName,[Status],CreateTime,TrueName,BankChild,BankPre,BankCity,[Type]) 
             values(@UserID,@Cardcode,@BankName,0,getdate(),@TrueName,@BankChild,@BankPre,@BankCity,@Type) 
    select @ErrorMsg='新增成功',@Result=1
end
end
GO
/****** Object:  StoredProcedure [dbo].[P_InsertLottery]    Script Date: 12/09/2016 18:18:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  proc [dbo].[P_InsertLottery]
@CPName varchar(300),
@CPCode varchar(300),
@UserID varchar(300),
@ReturnUrl varchar(300),
@IconType int,
@OpenTimes int,
@CloseTime nvarchar(50),
@OnSaleTime nvarchar(50),
@SealTimes int ,
@PeriodsNum int,
@Result int output,
@ErrMsg nvarchar(100) output
as 
begin

if(@CPName='' or @CPCode='')
begin
select @Result=0,@ErrMsg='彩票名称或彩票编码不能为空'
end
else
begin
	if EXISTS( select CPName from Lottery where CPName=@CPName or CPCode=@CPCode)
	begin
		select @Result=0,@ErrMsg='彩票名称或彩票编码已存在!'
	end
	else
	begin
		declare @origin int
		select @origin=ISNULL(MAX(Sort),0) from Lottery where [status]<>9
		set @origin=@origin+1
		select *  from Lottery
		insert into Lottery(CPName,CPCode,CreateTime,Status,CreateUserID,Sort,IconType,ResultUrl,OpenTimes,OnSaleTime,CloseTime,SealTimes,PeriodsNum) 
		values(@CPName,@CPCode,getdate(),0,@UserID,@origin,@IconType,@Result,@OpenTimes,@OnSaleTime,@CloseTime,@SealTimes,@PeriodsNum)
		select @Result=AutoID,@ErrMsg='!' from Lottery where  CPCode=@CPCode 
	end
end

end
GO
/****** Object:  StoredProcedure [dbo].[M_OrderAuditting]    Script Date: 12/09/2016 18:18:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[M_OrderAuditting]
@OrderCode nvarchar(100),
@OtherCode nvarchar(100),
@PayFee decimal(18,4)
as
begin 

begin tran

declare @Err int ,@Day int,@Type int ,@Num int,@Account decimal(18,4),
	@IP nvarchar(64),@UserID nvarchar(64) 
set @Err=0
--客户订单已支付
if(@OrderCode<>'' and exists(select AutoID from UserOrders where OrderCode=@OrderCode and status=1) )
begin
	rollback tran
	return
end

--变量赋值
select  @UserID=UserID,@Num=TotalFee,@IP=IP from UserOrders where OrderCode=@OrderCode

--更新后台订单状态为支付
update UserOrders set status=1,PayFee=@PayFee where OrderCode=@OrderCode
set @Err+=@@error  
--充值
 select  @Account=AccountFee  from  UserAccount where  USerID=@UserID
update UserAccount set AccountFee=AccountFee+@Num,InAccount= InAccount+@Num where  USerID=@UserID
set @Err+=@@error
--新增金币变动日志
Insert into [AccountOperateRecord]([UserID],[AccountChange],[Account],InAccount,[AccountType],[PlayType],[CreateTime],[CreateUserID],[Remark],IP)
 VALUES (@UserID,@Num,@Account,@Account,0,1,GETDATE(),@UserID ,'用户充值',@IP)
 set @Err+=@@error

if(@Err>0)
begin
	rollback tran
end 
else
begin
	commit tran
end
end
GO
/****** Object:  StoredProcedure [dbo].[M_InsertUser]    Script Date: 12/09/2016 18:18:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  Proc  [dbo].[M_InsertUser]
@UserID nvarchar(50),
@UserName nvarchar(50),
@LoginName nvarchar(50),
@LoginPwd  nvarchar(50),
@Type int=0,
@RoleID nvarchar(50)='',
@SourceType int  =0,
@Rebate decimal(18,2)=0.00,
@ParentID nvarchar(50)='',
@Description nvarchar(3000)='',
@ErrorMsg nvarchar(300) output,
@Result int  output 
as

select @ErrorMsg='',@Result=0
begin try
begin tran

if(@UserName='' or @LoginName='' or @LoginPwd='')
begin
	select @ErrorMsg='用户昵称 密码 登陆账号不能为空.',@Result=-4
end
else
begin
	if((select count(1) from M_Users where LoginName=@LoginName)>0)
	begin
		select @ErrorMsg='登陆账号已存在.',@Result=-4
	end
	else
	begin
		if(@ParentID<>'')
		begin
			if(select UsableRebate-@Rebate from M_Users where UserID=@ParentID)>0
			begin
				declare @parents varchar(4000),@layers int set @parents='' set @layers=0
				update M_Users set UsableRebate=UsableRebate-@Rebate,ChildCount=ChildCount+1,UpdateTime=GETDATE() where UserID=@ParentID
				
				select @layers=Layers+1 from M_Users where UserID=@ParentID
				--@Rebate/10
				insert into M_Users(UserID,UserName,LoginName,LoginPwd,SourceType,[type],Rebate,UsableRebate,RoleID,SafeLevel,Layers,[Description])
				values(@UserID,@UserName,@LoginName,@LoginPwd,@SourceType,@Type,@Rebate,@Rebate,@RoleID,55,@layers,@Description)
 
				select @parents=ISNULL(Parents,'') from  UserRelation where UserID=@ParentID
  
				if(len(@parents)>0)
					set @parents=@parents+',' 
				set @parents=@parents+@ParentID
	 
				insert into UserRelation(UserID,ParentID,Parents,CreateTime,Layers) values(@UserID,@ParentID,@parents,GETDATE(),@layers)		
 
				insert into UserAccount(UserID,AccountFee,InAccount,OutAccount,InteFee,DisCountFee,InInteFee,OutInteFee) values(
				@UserID,0,0,0,0,0,0,0
				) 
				select @ErrorMsg='',@Result=1
			end
			else
				select @ErrorMsg='后台返点已变更,输入返点过大.',@Result=-1
		end
		else
		begin 	
		--@Rebate/10		
			insert into M_Users(UserID,UserName,LoginName,LoginPwd,SourceType,[type],Rebate,UsableRebate,RoleID,SafeLevel,Layers,[Description])
				values(@UserID,@UserName,@LoginName,@LoginPwd,@SourceType,@Type,@Rebate,@Rebate,@RoleID,55,1,@Description)
			
			insert into UserAccount(UserID,AccountFee,InAccount,OutAccount,InteFee,DisCountFee,InInteFee,OutInteFee) values(
			@UserID,0,0,0,0,0,0,0
			) 	
			select @ErrorMsg='',@Result=1
		end
	end 
end
commit tran
end try
begin catch
if @@error>0 
begin 
	rollback
	select @ErrorMsg='内部信息错误,请联系管理员',@Result=-2
 end
end catch
GO
/****** Object:  StoredProcedure [dbo].[M_GetM_UserToLogin]    Script Date: 12/09/2016 18:18:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/***********************************************************
过程名称： M_GetM_UserToLogin
功能描述： 验证云销系统登录并返回信息
参数说明：	 
编写日期： 2016/4/20
程序作者： Michaux
调试记录： exec M_GetM_UserToLogin 'admin','F7D931C986841F4301D971C59F804409',0
************************************************************/
CREATE PROCEDURE [dbo].[M_GetM_UserToLogin]
@LoginName nvarchar(200),
@LoginPWD nvarchar(64),
@SourceType int =0,
@Result int output  --1:查询正常；2：用户名不存在；3：用户密码有误
AS

declare @UserID nvarchar(64),@RoleID nvarchar(64),@isAdmin int

IF  EXISTS(select UserID from M_Users where LoginName=@LoginName  and Status<>9)
begin
	select @UserID = UserID,@RoleID=RoleID,@isAdmin=IsAdmin from M_Users 
	where LoginName=@LoginName and LoginPWD=@LoginPWD  and Status<>9 --and SourceType=@SourceType
	
	if(@UserID is not null)
	begin
		set @Result=1
		--会员信息
		select * from M_Users where UserID=@UserID
		--权限信息
		if(@isAdmin=1)
		begin
			select * from Menu where IsLimit=0 
		end
		else
		begin
		if(@SourceType=0)
		begin
			select m.* from Menu m left join M_RolePermission r on r.MenuCode=m.MenuCode 
			where    RoleID=isnull(@RoleID,'') and IsLimit=0 
		end
		else begin
		select m.* from Menu m left join M_RolePermission r on r.MenuCode=m.MenuCode 
			where   (RoleID=isnull(@RoleID,'') and IsLimit=0 )
		end  
		end
	end
	else
		set @Result=3
end
else
set @Result=2
GO
/****** Object:  StoredProcedure [dbo].[M_DeleteRole]    Script Date: 12/09/2016 18:18:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/***********************************************************
过程名称： M_DeleteRole
功能描述： 删除角色
参数说明：	 
程序作者： Michaux
调试记录： exec M_DeleteRole 
************************************************************/
Create PROCEDURE [dbo].[M_DeleteRole]
@RoleID nvarchar(64),
@Result int output --0：失败，1：成功，10002 角色存在员工
AS

begin tran

set @Result=0

declare @Err int=0

--角色存在员工
if exists(select AutoID from M_UserRole where RoleID=@RoleID and Status=1)
begin
	set @Result=10002
	rollback tran
	return
end

set @Err+=@@error

Update M_Role set Status=9 where RoleID=@RoleID  and IsDefault = 0

delete from M_RolePermission where RoleID=@RoleID

if(@Err>0)
begin
	set @Result=0
	rollback tran
end 
else
begin
	set @Result=1
	commit tran
end
GO
/****** Object:  StoredProcedure [dbo].[M_BindOtherAccount]    Script Date: 12/09/2016 18:18:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Proc [dbo].[M_BindOtherAccount]
@UserID varchar(50),
@AccountCode varchar(50),
@Type int,--1Emial 2 MobilePhone
@ErrorMsg   nvarchar(300) output,
@Result  int  output 
as
begin
select @Result=-1 ,@ErrorMsg=''
declare @count int,@acct int 
if(@Type=1 )
begin
	select  @count=COUNT(1) from M_Users where Status<>9 and Email=@AccountCode and UserID!=@UserID
	select  @acct= case isnull(Email,'') when '' then SafeLevel+15 else SafeLevel end from M_Users where  UserID=@UserID
end
else
begin
	select  @count=COUNT(1) from M_Users where Status<>9 and MobilePhone=@AccountCode and UserID!=@UserID
	select  @acct= case isnull(MobilePhone,'') when '' then SafeLevel+15 else SafeLevel end from M_Users where  UserID=@UserID
end
if(@count=0)
begin
	if(@Type=1 )
		update M_Users set Email=@AccountCode ,UpdateTime=getdate(),SafeLevel=@acct where UserID=@UserID
	else
		update M_Users set MobilePhone=@AccountCode ,UpdateTime=getdate(),SafeLevel=@acct where UserID=@UserID
		
	select @Result=1 ,@ErrorMsg='绑定成功'
end
else
begin
select @Result=-1 ,@ErrorMsg=@AccountCode+'已被使用,不能重复绑定'
end

end
GO
/****** Object:  StoredProcedure [dbo].[M_UpdateUserRole]    Script Date: 12/09/2016 18:18:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/***********************************************************
过程名称： M_UpdateUserRole
功能描述： 编辑员工角色
参数说明：	 
编写日期： 2015/10/21 
调试记录： exec M_UpdateUserRole 
************************************************************/
Create PROCEDURE [dbo].[M_UpdateUserRole]
@UserID nvarchar(64),
@RoleID nvarchar(64),
@OpreateID nvarchar(64)
AS

begin tran
declare @Err int =0 ,@OldRoleID nvarchar(64)

select @OldRoleID=RoleID from M_Users where UserID=@UserID 
--默认管理员角色至少保留一人
if(@OldRoleID is not null and @OldRoleID<>'' and exists(select AutoID from M_Role where RoleID=@OldRoleID and IsDefault=1))
begin
	if not exists(select AutoID from M_UserRole where RoleID=@OldRoleID and Status=1 and UserID<>@UserID)
	begin
		rollback tran
		return
	end
end

Update M_Users set RoleID=@RoleID where UserID=@UserID
set @Err+=@@error

--角色记录
Update M_UserRole set Status=9 where UserID=@UserID and Status=1

insert into M_UserRole(UserID,RoleID,Status,CreateUserID) values(@UserID,@RoleID,1,@OpreateID)

set @Err+=@@error

if(@Err>0)
begin
	rollback tran
end 
else
begin
	commit tran
end
GO
/****** Object:  StoredProcedure [dbo].[M_UpdateRolePermission]    Script Date: 12/09/2016 18:18:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/***********************************************************
过程名称： M_UpdateRolePermission
功能描述： 编辑角色权限
参数说明：	  
程序作者： Michaux
调试记录： exec M_UpdateRolePermission 
************************************************************/
Create PROCEDURE [dbo].[M_UpdateRolePermission]
@RoleID nvarchar(64),
@Permissions nvarchar(4000)='',
@UserID nvarchar(64)
AS

begin tran

set @Permissions='''' + REPLACE(@Permissions,',',''',''') + ''''

declare @Err int=0

delete from M_RolePermission where RoleID=@RoleID

exec('insert into M_RolePermission(RoleID,MenuCode,CreateUserID) select '''+@RoleID+''',MenuCode,'''+@UserID+''' from Menu where MenuCode in('+@Permissions+')')
set @Err+=@@error

if(@Err>0)
begin
	rollback tran
end 
else
begin
	commit tran
end
GO
/****** Object:  StoredProcedure [dbo].[M_UpdateLotteryPlays]    Script Date: 12/09/2016 18:18:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/***********************************************************
过程名称： M_UpdateLotteryPlays
功能描述： 编辑彩票玩法
参数说明：	  
程序作者： Michaux
调试记录： exec M_UpdateLotteryPlays 
************************************************************/
CREATE PROCEDURE [dbo].[M_UpdateLotteryPlays]
@CPCode nvarchar(64),
@Permissions nvarchar(4000)='',
@UserID nvarchar(64)
AS

begin tran

--set @Permissions='''' + REPLACE(@Permissions,',',''',''') + ''''

declare @plays varchar(4000) ,@i int,@play nvarchar(300)

declare @templay table(pcode varchar(100),pids varchar(300))
select @plays=@Permissions,@i=CHARINDEX(',',@Permissions)
while @i>0
begin
declare @pids nvarchar(300),@code nvarchar(100)
	set @play=SUBSTRING(@plays,0,@i)
	select @pids=@play,@code=@play
	if(CHARINDEX('_',@play)>0)
	begin
	set @code=reverse(SUBSTRING(reverse(@play) ,0,CHARINDEX('_',reverse(@play))))
	end  
	insert into @templay values(@code,@pids)	
	set @plays=SUBSTRING(@plays,@i+1,len(@plays))
	set @i=CHARINDEX(',',@plays,0)
end

 
declare @Err int=0

delete from LotteryPlays where CPCode=@CPCode

insert into LotteryPlays(CPCode,PID,CreateUserID,PIDS) 
select @CPCode,pcode,@UserID,pids from @templay 
 
set @Err+=@@error

if(@Err>0)
begin
	rollback tran
end 
else
begin
	commit tran
end
GO
/****** Object:  StoredProcedure [dbo].[InsertLotteryResultAll]    Script Date: 12/09/2016 18:18:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[InsertLotteryResultAll]
as
begin
declare @i int,@issue nvarchar(64),@da datetime
select @i=0,@issue=CONVERT(varchar(100), GETDATE(), 12),@da=CONVERT(varchar(100), GETDATE(), 23)+' 08:53:00'
while @i<78
begin
	set @i=@i+1
	declare @issuenum nvarchar(50) ,@opentime datetime
	set @issuenum=@issue+right('00'+cast(@i as nvarchar),2)
	set @opentime=DATEADD(MI,10,@da) 
	if(not exists(select issueNum  from LotteryResult where CPCode='SD11X5' and IssueNum=@issuenum))
	begin
		insert into LotteryResult values('SD11X5',@issuenum,'',0,GETDATE(),@da,0,0,0,@opentime,@i)
	end
	set @da= @opentime

end

end

select  CONVERT(varchar(100),GETDATE(),12)
GO
/****** Object:  StoredProcedure [dbo].[InsertLotteryOrder]    Script Date: 12/09/2016 18:18:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[InsertLotteryOrder]
@OrderCode nvarchar(64),
@OrderID nvarchar(64),
@IssueNum nvarchar(50),
@IP nvarchar(20),
@UserID nvarchar(64), 
@CPCode nvarchar(50), 
@CPName nvarchar(50), 
@PayFee decimal(18,2), 
@Content nvarchar(500), 
@TypeName nvarchar(100),
@PMuch int,
@RPoint decimal(18,2),
@Type nvarchar(300),
@Num int,
@UsedisFee int,
@ErrorMsg nvarchar(500) output,
@Result int output
as
begin
select  @ErrorMsg='',@Result=0
declare @AccountFee decimal(18,2),@discount decimal(18,2),@WinType int

if(exists(select *  from LotteryResult where IssueNum=@IssueNum and OpenTime>GETDATE()))
begin
declare @ss decimal(18,2)
	select  @AccountFee=AccountFee,@discount=DiscountFee ,@WinType=0 from UserAccount where UserID=@UserID
	set @ss=@AccountFee
	if(@UsedisFee>0)
	begin
		set @ss=@discount
		set @WinType=1
	end 		
	if(@ss>@PayFee)
	begin
		INSERT INTO [LotteryOrder]([LCode],[LID],[IssueNum],[IP],[CreateTime],[Status],[UserID],[CPCode],[CPName],[PayFee],[Content],[TypeName],[PMuch],RPoint,Type,Num,WinType)
		VALUES (@OrderCode,@OrderID,@IssueNum,@IP,getdate(), 0,@UserID, @CPCode, @CPName, @PayFee, @Content, @TypeName,@PMuch,@RPoint,@Type,@Num,@WinType)
		if(@UsedisFee>0)
		begin
			update UserAccount set DiscountFee=DiscountFee-@PayFee  where  UserID=@UserID
			Insert into [AccountOperateRecord]([UserID],[AccountChange],[Account],OutAccount,[Type],[AccountType],[PlayType],[CreateTime],[CreateUserID],[Remark],IP)
			VALUES (@UserID,@PayFee,@ss,@PayFee,1,2,3,GETDATE(),@UserID ,'投注扣除优惠券',@IP)
		end
		else
		begin
			update UserAccount set AccountFee=AccountFee-@PayFee where  UserID=@UserID
			Insert into [AccountOperateRecord]([UserID],[AccountChange],[Account],OutAccount,[Type],[AccountType],[PlayType],[CreateTime],[CreateUserID],[Remark],IP)
					VALUES (@UserID,@PayFee,@ss,@PayFee,1,2,3,GETDATE(),@UserID ,'投注扣除余额',@IP)
		end
		select @Result=1,@ErrorMsg=''
	end
	else
	begin
		select @Result=-1,@ErrorMsg='余额不足'
	end
end
else 
begin
	select @Result=-1,@ErrorMsg=@IssueNum+'期已封盘'	
end
end
GO
/****** Object:  StoredProcedure [dbo].[InsertLotteryBett]    Script Date: 12/09/2016 18:18:05 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[InsertLotteryBett]
@OrderCode nvarchar(64), 
@IssueNum nvarchar(50),
@IP nvarchar(20),
@UserID nvarchar(64), 
@CPCode nvarchar(50), 
@CPName nvarchar(50), 
@PayFee decimal(18,2), 
@Content nvarchar(500), 
@TypeName nvarchar(100),
@PMuch int,
@BettNum int,
@RPoint decimal(18,2),
@Type nvarchar(300),
@Num int,
@BettType int=0,
@BMuch int =1,
@WinFee decimal(18,2),
@Profits decimal(18,2),
@IsStart int,
@TotalFee decimal(18,2),
@JsonContent nvarchar(4000), 
@ErrorMsg nvarchar(500) output,
@Result int output
as
begin
select  @ErrorMsg='',@Result=1
 insert into LotteryBettAuto (BCode,CPCode,CPName,TypeName,[Type],StartNum,BettNum,ComNum,Content,BMuch,PMuch,PayFee,TotalFee,
 WinFee,RPoint,UserID,CreateTime,UpdateTime,IP,MType,[Status],IsStart,Num,Profits,JsonContent,BettType )
 values(
 @OrderCode,@CPCode,@CPName,@TypeName,@Type,@IssueNum,@BettNum,0,@Content,@BMuch,@PMuch,@PayFee,@TotalFee,@WinFee,@RPoint,@UserID,
 GETDATE(),GETDATE(),@IP,'0',0,@IsStart,@Num,@Profits ,@JsonContent,@BettType)
end
GO
/****** Object:  Default [DF_Table_1_InAccount]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[AccountOperateRecord] ADD  CONSTRAINT [DF_Table_1_InAccount]  DEFAULT ((0.00)) FOR [AccountChange]
GO
/****** Object:  Default [DF_AccountOperateRecord_Account]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[AccountOperateRecord] ADD  CONSTRAINT [DF_AccountOperateRecord_Account]  DEFAULT ((0.00)) FOR [Account]
GO
/****** Object:  Default [DF_Table_1_type]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[AccountOperateRecord] ADD  CONSTRAINT [DF_Table_1_type]  DEFAULT ((0)) FOR [AccountType]
GO
/****** Object:  Default [DF_AccountOperateRecord_PlayType]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[AccountOperateRecord] ADD  CONSTRAINT [DF_AccountOperateRecord_PlayType]  DEFAULT ((0)) FOR [PlayType]
GO
/****** Object:  Default [DF_AccountOperateRecord_CreateTime]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[AccountOperateRecord] ADD  CONSTRAINT [DF_AccountOperateRecord_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_AccountOperateRecord_Remark]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[AccountOperateRecord] ADD  CONSTRAINT [DF_AccountOperateRecord_Remark]  DEFAULT ('') FOR [Remark]
GO
/****** Object:  Default [DF_AccountOperateRecord_CreateUserID]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[AccountOperateRecord] ADD  CONSTRAINT [DF_AccountOperateRecord_CreateUserID]  DEFAULT (N'sysAdmin') FOR [CreateUserID]
GO
/****** Object:  Default [DF_AccountOperateRecord_InAccount]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[AccountOperateRecord] ADD  CONSTRAINT [DF_AccountOperateRecord_InAccount]  DEFAULT ((0.00)) FOR [InAccount]
GO
/****** Object:  Default [DF_AccountOperateRecord_OutAccount]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[AccountOperateRecord] ADD  CONSTRAINT [DF_AccountOperateRecord_OutAccount]  DEFAULT ((0.00)) FOR [OutAccount]
GO
/****** Object:  Default [DF_Active_BTIme]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[Active] ADD  CONSTRAINT [DF_Active_BTIme]  DEFAULT (getdate()) FOR [BTime]
GO
/****** Object:  Default [DF_Active_CreateTime]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[Active] ADD  CONSTRAINT [DF_Active_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_Active_UpdTime]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[Active] ADD  CONSTRAINT [DF_Active_UpdTime]  DEFAULT (getdate()) FOR [UpdTime]
GO
/****** Object:  Default [DF_Active_Status]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[Active] ADD  CONSTRAINT [DF_Active_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_Active_Type]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[Active] ADD  CONSTRAINT [DF_Active_Type]  DEFAULT ((0)) FOR [Type]
GO
/****** Object:  Default [DF_FeedBack_Type]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[FeedBack] ADD  CONSTRAINT [DF_FeedBack_Type]  DEFAULT ((0)) FOR [Type]
GO
/****** Object:  Default [DF_FeedBack_Status]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[FeedBack] ADD  CONSTRAINT [DF_FeedBack_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_FeedBack_CreateTime]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[FeedBack] ADD  CONSTRAINT [DF_FeedBack_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_FeedBack_Content]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[FeedBack] ADD  CONSTRAINT [DF_FeedBack_Content]  DEFAULT ('') FOR [Content]
GO
/****** Object:  Default [DF_Lottery_CreateTime]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[Lottery] ADD  CONSTRAINT [DF_Lottery_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_Lottery_Status]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[Lottery] ADD  CONSTRAINT [DF_Lottery_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_Lottery_Sort]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[Lottery] ADD  CONSTRAINT [DF_Lottery_Sort]  DEFAULT ((0)) FOR [Sort]
GO
/****** Object:  Default [DF_Lottery_IcoType]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[Lottery] ADD  CONSTRAINT [DF_Lottery_IcoType]  DEFAULT ((0)) FOR [IconType]
GO
/****** Object:  Default [DF_Lottery_ResultUrl]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[Lottery] ADD  CONSTRAINT [DF_Lottery_ResultUrl]  DEFAULT ('') FOR [ResultUrl]
GO
/****** Object:  Default [DF_Lottery_Opennum]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[Lottery] ADD  CONSTRAINT [DF_Lottery_Opennum]  DEFAULT ((12)) FOR [OpenTimes]
GO
/****** Object:  Default [DF_Lottery_SealTimes]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[Lottery] ADD  CONSTRAINT [DF_Lottery_SealTimes]  DEFAULT ((10)) FOR [SealTimes]
GO
/****** Object:  Default [DF_Lottery_PeriodsNum]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[Lottery] ADD  CONSTRAINT [DF_Lottery_PeriodsNum]  DEFAULT ((1)) FOR [PeriodsNum]
GO
/****** Object:  Default [DF_LotteryBettAuto_BMuch]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryBettAuto] ADD  CONSTRAINT [DF_LotteryBettAuto_BMuch]  DEFAULT ((1)) FOR [BMuch]
GO
/****** Object:  Default [DF_LotteryBettAuto_PMuch]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryBettAuto] ADD  CONSTRAINT [DF_LotteryBettAuto_PMuch]  DEFAULT ((1)) FOR [PMuch]
GO
/****** Object:  Default [DF_LotteryBettAuto_PayFee]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryBettAuto] ADD  CONSTRAINT [DF_LotteryBettAuto_PayFee]  DEFAULT ((0.00)) FOR [PayFee]
GO
/****** Object:  Default [DF_LotteryBettAuto_TotalFee]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryBettAuto] ADD  CONSTRAINT [DF_LotteryBettAuto_TotalFee]  DEFAULT ((0.00)) FOR [TotalFee]
GO
/****** Object:  Default [DF_LotteryBettAuto_CreateTime]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryBettAuto] ADD  CONSTRAINT [DF_LotteryBettAuto_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_LotteryBettAuto_MType]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryBettAuto] ADD  CONSTRAINT [DF_LotteryBettAuto_MType]  DEFAULT ((0)) FOR [MType]
GO
/****** Object:  Default [DF_LotteryBettAuto_Status]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryBettAuto] ADD  CONSTRAINT [DF_LotteryBettAuto_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_LotteryBettAuto_IsStart]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryBettAuto] ADD  CONSTRAINT [DF_LotteryBettAuto_IsStart]  DEFAULT ((0)) FOR [IsStart]
GO
/****** Object:  Default [DF_LotteryBettAuto_Num]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryBettAuto] ADD  CONSTRAINT [DF_LotteryBettAuto_Num]  DEFAULT ((1)) FOR [Num]
GO
/****** Object:  Default [DF_LotteryBettAuto_Profits]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryBettAuto] ADD  CONSTRAINT [DF_LotteryBettAuto_Profits]  DEFAULT ((0.00)) FOR [Profits]
GO
/****** Object:  Default [DF_LotteryBettAuto_JsonContent]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryBettAuto] ADD  CONSTRAINT [DF_LotteryBettAuto_JsonContent]  DEFAULT ('') FOR [JsonContent]
GO
/****** Object:  Default [DF_LotteryBettAuto_Remark]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryBettAuto] ADD  CONSTRAINT [DF_LotteryBettAuto_Remark]  DEFAULT ('') FOR [Remark]
GO
/****** Object:  Default [DF_LotteryBettAuto_ComFee]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryBettAuto] ADD  CONSTRAINT [DF_LotteryBettAuto_ComFee]  DEFAULT ((0.00)) FOR [ComFee]
GO
/****** Object:  Default [DF_LotteryBettAuto_BettType]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryBettAuto] ADD  CONSTRAINT [DF_LotteryBettAuto_BettType]  DEFAULT ((0)) FOR [BettType]
GO
/****** Object:  Default [DF_LotteryOrder_PMuch]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryOrder] ADD  CONSTRAINT [DF_LotteryOrder_PMuch]  DEFAULT ((1)) FOR [PMuch]
GO
/****** Object:  Default [DF_LotteryOrder_WinFee]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryOrder] ADD  CONSTRAINT [DF_LotteryOrder_WinFee]  DEFAULT ((0.00)) FOR [WinFee]
GO
/****** Object:  Default [DF_LotteryOrder_PayFee]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryOrder] ADD  CONSTRAINT [DF_LotteryOrder_PayFee]  DEFAULT ((0.00)) FOR [PayFee]
GO
/****** Object:  Default [DF_LotteryOrder_RPotion]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryOrder] ADD  CONSTRAINT [DF_LotteryOrder_RPotion]  DEFAULT ((0.00)) FOR [RPoint]
GO
/****** Object:  Default [DF_LotteryOrder_CreateTime]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryOrder] ADD  CONSTRAINT [DF_LotteryOrder_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_LotteryOrder_Status]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryOrder] ADD  CONSTRAINT [DF_LotteryOrder_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_LotteryOrder_IP]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryOrder] ADD  CONSTRAINT [DF_LotteryOrder_IP]  DEFAULT ('') FOR [IP]
GO
/****** Object:  Default [DF_LotteryOrder_MType]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryOrder] ADD  CONSTRAINT [DF_LotteryOrder_MType]  DEFAULT ((0)) FOR [MType]
GO
/****** Object:  Default [DF_LotteryOrder_WinType]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryOrder] ADD  CONSTRAINT [DF_LotteryOrder_WinType]  DEFAULT ((1)) FOR [WinType]
GO
/****** Object:  Default [DF_LotteryPlays_CreateTime]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryPlays] ADD  CONSTRAINT [DF_LotteryPlays_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_LottertResult_ResultNum]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryResult] ADD  CONSTRAINT [DF_LottertResult_ResultNum]  DEFAULT ('') FOR [ResultNum]
GO
/****** Object:  Default [DF_LottertResult_Status]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryResult] ADD  CONSTRAINT [DF_LottertResult_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_LottertResult_UpdateTime]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryResult] ADD  CONSTRAINT [DF_LottertResult_UpdateTime]  DEFAULT (getdate()) FOR [UpdateTime]
GO
/****** Object:  Default [DF_LottertResult_CreateTime]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryResult] ADD  CONSTRAINT [DF_LottertResult_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_LottertResult_UserNum]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryResult] ADD  CONSTRAINT [DF_LottertResult_UserNum]  DEFAULT ((0)) FOR [UserNum]
GO
/****** Object:  Default [DF_Table_1_Sum]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryResult] ADD  CONSTRAINT [DF_Table_1_Sum]  DEFAULT ((0)) FOR [SumNum]
GO
/****** Object:  Default [DF_LotteryResult_OpenTime]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryResult] ADD  CONSTRAINT [DF_LotteryResult_OpenTime]  DEFAULT (getdate()) FOR [OpenTime]
GO
/****** Object:  Default [DF_LotteryResult_Intindx]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[LotteryResult] ADD  CONSTRAINT [DF_LotteryResult_Intindx]  DEFAULT ((0)) FOR [Num]
GO
/****** Object:  Default [DF_M_Role_Status]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[M_Role] ADD  CONSTRAINT [DF_M_Role_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_M_Role_IsDefault]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[M_Role] ADD  CONSTRAINT [DF_M_Role_IsDefault]  DEFAULT ((0)) FOR [IsDefault]
GO
/****** Object:  Default [DF_M_Role_CreateTime]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[M_Role] ADD  CONSTRAINT [DF_M_Role_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_M_RolePermission_CreateTime]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[M_RolePermission] ADD  CONSTRAINT [DF_M_RolePermission_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_UserRole_IsDefault]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[M_UserRole] ADD  CONSTRAINT [DF_UserRole_IsDefault]  DEFAULT ((0)) FOR [IsDefault]
GO
/****** Object:  Default [DF_UserRole_Status]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[M_UserRole] ADD  CONSTRAINT [DF_UserRole_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_UserRole_CreateTime]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[M_UserRole] ADD  CONSTRAINT [DF_UserRole_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_M_Users_CreateTime]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_M_Users_Type]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_Type]  DEFAULT ((0)) FOR [Type]
GO
/****** Object:  Default [DF_M_Users_Status]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_M_Users_Email]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_Email]  DEFAULT ('') FOR [Email]
GO
/****** Object:  Default [DF_M_Users_SourceType]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_SourceType]  DEFAULT ((0)) FOR [SourceType]
GO
/****** Object:  Default [DF_M_Users_AccountPwd]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_AccountPwd]  DEFAULT ('') FOR [AccountPwd]
GO
/****** Object:  Default [DF_M_Users_Avatar]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_Avatar]  DEFAULT ('') FOR [Avatar]
GO
/****** Object:  Default [DF_M_Users_UpdateTime]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_UpdateTime]  DEFAULT (getdate()) FOR [UpdateTime]
GO
/****** Object:  Default [DF_M_Users_LastLoginIP]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_LastLoginIP]  DEFAULT ('') FOR [LastLoginIP]
GO
/****** Object:  Default [DF_M_Users_SafeLevel]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_SafeLevel]  DEFAULT ((55)) FOR [SafeLevel]
GO
/****** Object:  Default [DF_M_Users_IsAdmin]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_IsAdmin]  DEFAULT ((0)) FOR [IsAdmin]
GO
/****** Object:  Default [DF_M_Users_Rebate]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_Rebate]  DEFAULT ((0.00)) FOR [Rebate]
GO
/****** Object:  Default [DF_M_Users_ChildCount]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_ChildCount]  DEFAULT ((0)) FOR [ChildCount]
GO
/****** Object:  Default [DF_M_Users_Layers]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_Layers]  DEFAULT ((1)) FOR [Layers]
GO
/****** Object:  Default [DF_M_Users_Description]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_Description]  DEFAULT ('') FOR [Description]
GO
/****** Object:  Default [DF_Menu_Type]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_Type]  DEFAULT ((1)) FOR [Type]
GO
/****** Object:  Default [DF_Menu_IsHide]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_IsHide]  DEFAULT ((0)) FOR [IsHide]
GO
/****** Object:  Default [DF_Menu_Sort]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_Sort]  DEFAULT ((0)) FOR [Sort]
GO
/****** Object:  Default [DF_Menu_Layer]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_Layer]  DEFAULT ((0)) FOR [Layer]
GO
/****** Object:  Default [DF_Menu_IsMenu]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_IsMenu]  DEFAULT ((1)) FOR [IsMenu]
GO
/****** Object:  Default [DF_Menu_IsLimit]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_IsLimit]  DEFAULT ((0)) FOR [IsLimit]
GO
/****** Object:  Default [DF_LotteryPlay_CreateTime]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[Plays] ADD  CONSTRAINT [DF_LotteryPlay_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_LotteryPlay_Status]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[Plays] ADD  CONSTRAINT [DF_LotteryPlay_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_LotteryPlay_Layer]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[Plays] ADD  CONSTRAINT [DF_LotteryPlay_Layer]  DEFAULT ((1)) FOR [Layer]
GO
/****** Object:  Default [DF_UserAccount_AccountFee]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [DF_UserAccount_AccountFee]  DEFAULT ((0.00)) FOR [AccountFee]
GO
/****** Object:  Default [DF_UserAccount_InAccount]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [DF_UserAccount_InAccount]  DEFAULT ((0.00)) FOR [InAccount]
GO
/****** Object:  Default [DF_UserAccount_OutAccount]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [DF_UserAccount_OutAccount]  DEFAULT ((0.00)) FOR [OutAccount]
GO
/****** Object:  Default [DF_UserAccount_CreateTime]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [DF_UserAccount_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_UserAccount_UpdTime]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [DF_UserAccount_UpdTime]  DEFAULT (getdate()) FOR [UpdTime]
GO
/****** Object:  Default [DF_UserAccount_InteFee]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [DF_UserAccount_InteFee]  DEFAULT ((0.00)) FOR [InteFee]
GO
/****** Object:  Default [DF_UserAccount_DiscountFee]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [DF_UserAccount_DiscountFee]  DEFAULT ((0.00)) FOR [DiscountFee]
GO
/****** Object:  Default [DF_UserAccount_InInteFee]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [DF_UserAccount_InInteFee]  DEFAULT ((0.00)) FOR [InInteFee]
GO
/****** Object:  Default [DF_UserAccount_OutInteFee]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [DF_UserAccount_OutInteFee]  DEFAULT ((0.00)) FOR [OutInteFee]
GO
/****** Object:  Default [DF_UserAccount_UpdUserID]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [DF_UserAccount_UpdUserID]  DEFAULT ('') FOR [UpdUserID]
GO
/****** Object:  Default [DF_UserBanks_Status]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[UserBanks] ADD  CONSTRAINT [DF_UserBanks_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_UserBanks_CreateTime]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[UserBanks] ADD  CONSTRAINT [DF_UserBanks_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_UserBanks_Type]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[UserBanks] ADD  CONSTRAINT [DF_UserBanks_Type]  DEFAULT ((1)) FOR [Type]
GO
/****** Object:  Default [DF_UserOrders_PayType]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[UserOrders] ADD  CONSTRAINT [DF_UserOrders_PayType]  DEFAULT ((0)) FOR [PayType]
GO
/****** Object:  Default [DF_UserOrders_PayFee]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[UserOrders] ADD  CONSTRAINT [DF_UserOrders_PayFee]  DEFAULT ((0.00)) FOR [PayFee]
GO
/****** Object:  Default [DF_UserOrders_TotalFee]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[UserOrders] ADD  CONSTRAINT [DF_UserOrders_TotalFee]  DEFAULT ((0.00)) FOR [TotalFee]
GO
/****** Object:  Default [DF_UserOrders_Type]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[UserOrders] ADD  CONSTRAINT [DF_UserOrders_Type]  DEFAULT ((0)) FOR [Type]
GO
/****** Object:  Default [DF_UserOrders_Num]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[UserOrders] ADD  CONSTRAINT [DF_UserOrders_Num]  DEFAULT ((0)) FOR [Num]
GO
/****** Object:  Default [DF_UserOrders_UpdTime]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[UserOrders] ADD  CONSTRAINT [DF_UserOrders_UpdTime]  DEFAULT (getdate()) FOR [UpdTime]
GO
/****** Object:  Default [DF_UserOrders_IP]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[UserOrders] ADD  CONSTRAINT [DF_UserOrders_IP]  DEFAULT ('') FOR [IP]
GO
/****** Object:  Default [DF_UserRelation_CreateTime]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[UserRelation] ADD  CONSTRAINT [DF_UserRelation_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_UserRelation_Layers]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[UserRelation] ADD  CONSTRAINT [DF_UserRelation_Layers]  DEFAULT ((1)) FOR [Layers]
GO
/****** Object:  Default [DF_Reply_Status]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[UserReply] ADD  CONSTRAINT [DF_Reply_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_Reply_CreateTime]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[UserReply] ADD  CONSTRAINT [DF_Reply_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_UserReply_Type]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[UserReply] ADD  CONSTRAINT [DF_UserReply_Type]  DEFAULT ((0)) FOR [Type]
GO
/****** Object:  Default [DF_UserLog_Type]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[UsersLog] ADD  CONSTRAINT [DF_UserLog_Type]  DEFAULT ((0)) FOR [Type]
GO
/****** Object:  Default [DF_UserLog_IP]    Script Date: 12/09/2016 18:18:04 ******/
ALTER TABLE [dbo].[UsersLog] ADD  CONSTRAINT [DF_UserLog_IP]  DEFAULT ('') FOR [IP]
GO
