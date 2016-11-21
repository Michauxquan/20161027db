USE [cplottery]
GO
/****** Object:  Table [dbo].[M_RolePermission]    Script Date: 11/21/2016 18:04:49 ******/
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
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (1, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'103000000', CAST(0x0000A6C0010DCA30 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (2, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'104000000', CAST(0x0000A6C0010DCA30 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (3, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'105000000', CAST(0x0000A6C0010DCA30 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (4, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'106000000', CAST(0x0000A6C0010DCA30 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (5, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'103010000', CAST(0x0000A6C0010DCA30 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (6, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'103020000', CAST(0x0000A6C0010DCA30 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (7, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'103030000', CAST(0x0000A6C0010DCA30 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (8, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'103040000', CAST(0x0000A6C0010DCA30 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (9, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'103050000', CAST(0x0000A6C0010DCA30 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (10, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'103060000', CAST(0x0000A6C0010DCA30 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (11, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'104010000', CAST(0x0000A6C0010DCA30 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (12, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'104020000', CAST(0x0000A6C0010DCA30 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (13, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'104030000', CAST(0x0000A6C0010DCA30 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (14, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'104050000', CAST(0x0000A6C0010DCA30 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (15, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'105010000', CAST(0x0000A6C0010DCA30 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (16, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'105020000', CAST(0x0000A6C0010DCA30 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (17, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'106010000', CAST(0x0000A6C0010DCA30 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (18, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'106020000', CAST(0x0000A6C0010DCA30 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (19, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'106030000', CAST(0x0000A6C0010DCA30 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (20, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'106040000', CAST(0x0000A6C0010DCA30 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (21, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'107000000', CAST(0x0000A6C0010DCA30 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (22, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'107010000', CAST(0x0000A6C0010DCA30 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (23, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'107020000', CAST(0x0000A6C0010DCA30 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (24, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'107030000', CAST(0x0000A6C0010DCA30 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (25, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'107040000', CAST(0x0000A6C0010DCA30 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
INSERT [dbo].[M_RolePermission] ([AutoID], [RoleID], [MenuCode], [CreateTime], [CreateUserID]) VALUES (26, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', N'107050000', CAST(0x0000A6C0010DCA30 AS DateTime), N'CF31A86D-281D-4F42-991F-5BB760B4B506')
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
SET IDENTITY_INSERT [dbo].[M_RolePermission] OFF
/****** Object:  Table [dbo].[M_Role]    Script Date: 11/21/2016 18:04:49 ******/
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
/****** Object:  StoredProcedure [dbo].[P_GetPagerDataColumn]    Script Date: 11/21/2016 18:04:50 ******/
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
/****** Object:  StoredProcedure [dbo].[P_GetPagerData]    Script Date: 11/21/2016 18:04:50 ******/
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
/****** Object:  Table [dbo].[Menu]    Script Date: 11/21/2016 18:04:49 ******/
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
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (27, N'107040000', N'公告管理', N'', N'SysSet', N'Inform', N'', 1, 0, N'107000000', 4, 2, 1, 0)
INSERT [dbo].[Menu] ([AutoID], [MenuCode], [Name], [Area], [Controller], [View], [IcoPath], [Type], [IsHide], [PCode], [Sort], [Layer], [IsMenu], [IsLimit]) VALUES (28, N'107050000', N'反馈管理', N'', N'SysSet', N'FeedBack', N'', 1, 0, N'107000000', 5, 2, 1, 0)
SET IDENTITY_INSERT [dbo].[Menu] OFF
/****** Object:  Table [dbo].[M_Users]    Script Date: 11/21/2016 18:04:49 ******/
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
INSERT [dbo].[M_Users] ([AutoID], [UserID], [LoginName], [LoginPwd], [UserName], [CreateTime], [CreateUserID], [Type], [Status], [Email], [MobilePhone], [SourceType], [AccountPwd], [Avatar], [UpdateTime], [LastLoginIP], [PrevLoginIP], [SafeLevel], [IsAdmin], [RoleID], [Rebate], [UsableRebate], [ChildCount], [Layers], [Description]) VALUES (12, N'1c7a640d-dcb5-4e2b-8b82-1eae4b2ae17e', N'xiaoqiao', N'F25945456DFE4C365640F01F56A93A03', N'小乔', CAST(0x0000A6C000E8070A AS DateTime), NULL, 0, 0, N'', NULL, 0, N'', N'', CAST(0x0000A6C000E8070A AS DateTime), N'', NULL, 1, 0, N'', CAST(10.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), 0, 2, NULL)
INSERT [dbo].[M_Users] ([AutoID], [UserID], [LoginName], [LoginPwd], [UserName], [CreateTime], [CreateUserID], [Type], [Status], [Email], [MobilePhone], [SourceType], [AccountPwd], [Avatar], [UpdateTime], [LastLoginIP], [PrevLoginIP], [SafeLevel], [IsAdmin], [RoleID], [Rebate], [UsableRebate], [ChildCount], [Layers], [Description]) VALUES (15, N'4859c0df-c5d7-4980-ae78-415c684605b4', N'zhouyu', N'F25945456DFE4C365640F01F56A93A03', N'周瑜', CAST(0x0000A6C500FBB786 AS DateTime), NULL, 0, 0, N'', NULL, 0, N'', N'', CAST(0x0000A6C500FBB786 AS DateTime), N'', NULL, 1, 0, N'48eb0491-d92c-4664-ab27-37320ac7de38', CAST(10.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), 0, 2, N'用户新增')
INSERT [dbo].[M_Users] ([AutoID], [UserID], [LoginName], [LoginPwd], [UserName], [CreateTime], [CreateUserID], [Type], [Status], [Email], [MobilePhone], [SourceType], [AccountPwd], [Avatar], [UpdateTime], [LastLoginIP], [PrevLoginIP], [SafeLevel], [IsAdmin], [RoleID], [Rebate], [UsableRebate], [ChildCount], [Layers], [Description]) VALUES (13, N'7a59b22e-d128-4666-b0bc-66523b634020', N'hn001', N'F25945456DFE4C365640F01F56A93A03', N'华南区总代理', CAST(0x0000A6C001272C69 AS DateTime), NULL, 1, 0, N'', NULL, 1, N'', N'', CAST(0x0000A6C001272C69 AS DateTime), N'', NULL, 10, 0, N'dd87ca0a-b425-4e1e-b7ec-7a1e02dad0f8', CAST(100.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), 0, 1, N'测试用户')
INSERT [dbo].[M_Users] ([AutoID], [UserID], [LoginName], [LoginPwd], [UserName], [CreateTime], [CreateUserID], [Type], [Status], [Email], [MobilePhone], [SourceType], [AccountPwd], [Avatar], [UpdateTime], [LastLoginIP], [PrevLoginIP], [SafeLevel], [IsAdmin], [RoleID], [Rebate], [UsableRebate], [ChildCount], [Layers], [Description]) VALUES (11, N'a3572f14-4bf9-48b8-bca1-d9df2d58089f', N'caocao', N'F25945456DFE4C365640F01F56A93A03', N'曹操', CAST(0x0000A6BF016C34CA AS DateTime), NULL, 1, 0, N'', NULL, 0, N'', N'', CAST(0x0000A6BF016C34CA AS DateTime), N'', NULL, 55, 0, N'c8c65f85-491c-4e89-8522-6ef1c6c6d14c', CAST(10.00 AS Decimal(18, 2)), CAST(10.00 AS Decimal(18, 2)), 0, 2, N'22')
INSERT [dbo].[M_Users] ([AutoID], [UserID], [LoginName], [LoginPwd], [UserName], [CreateTime], [CreateUserID], [Type], [Status], [Email], [MobilePhone], [SourceType], [AccountPwd], [Avatar], [UpdateTime], [LastLoginIP], [PrevLoginIP], [SafeLevel], [IsAdmin], [RoleID], [Rebate], [UsableRebate], [ChildCount], [Layers], [Description]) VALUES (3, N'CF31A86D-281D-4F42-991F-5BB760B4B506', N'Michaux', N'F25945456DFE4C365640F01F56A93A03', N'Michaux', CAST(0x0000A6BE00B56D01 AS DateTime), NULL, 1, 1, N'', N'18217624362', 0, N'75694D579E39FD9A689125072FCCA351', N'Michauxquan', CAST(0x0000A6C500FBB786 AS DateTime), N'::1', N'::1', 85, 1, NULL, CAST(100.00 AS Decimal(18, 2)), CAST(70.00 AS Decimal(18, 2)), 3, 1, NULL)
SET IDENTITY_INSERT [dbo].[M_Users] OFF
/****** Object:  Table [dbo].[M_UserRole]    Script Date: 11/21/2016 18:04:49 ******/
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
/****** Object:  Table [dbo].[Active]    Script Date: 11/21/2016 18:04:49 ******/
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
/****** Object:  Table [dbo].[UsersLog]    Script Date: 11/21/2016 18:04:49 ******/
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
/****** Object:  Table [dbo].[UserReply]    Script Date: 11/21/2016 18:04:49 ******/
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
/****** Object:  Table [dbo].[UserRelation]    Script Date: 11/21/2016 18:04:49 ******/
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
/****** Object:  Table [dbo].[UserBanks]    Script Date: 11/21/2016 18:04:49 ******/
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
/****** Object:  Table [dbo].[UserAccount]    Script Date: 11/21/2016 18:04:49 ******/
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
INSERT [dbo].[UserAccount] ([UserID], [AccountFee], [InAccount], [OutAccount], [CreateTime], [UpdTime], [InteFee], [DiscountFee], [InInteFee], [OutInteFee], [UpdUserID]) VALUES (N'CF31A86D-281D-4F42-991F-5BB760B4B506', CAST(100.00 AS Decimal(18, 2)), CAST(100.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0x0000A6BF00B221BF AS DateTime), CAST(0x0000A6BF00B221BF AS DateTime), CAST(2000.00 AS Decimal(18, 2)), CAST(180.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), CAST(0.00 AS Decimal(18, 2)), NULL)
/****** Object:  StoredProcedure [dbo].[P_InsertUserReplay]    Script Date: 11/21/2016 18:04:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[P_InsertUserReplay]
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
if( @Guid!='')
begin 
	declare @users table(userid nvarchar(64))
	declare @sql nvarchar(3000) 
	if(@HasChilds>0)
	begin
		insert into @users select a.UserID  from UserRelation a join M_Users b on a.UserID=b.UserID where parentID=@CreateUserID and b.Status<>9
	end
	set @sql = 'select '+Replace(@Guid,',',' insert into @users;')+' insert into @users;'
	exec(@sql)
	insert into UserReply (ReplyID,GUID,[Content],FromReplyID,FromReplyUserID,CreateUserID,Type) 
	select newid(),c.userid,@Content,@FromReplyID,@FromReplyUserID,@CreateUserID,@Type from (select  distinct userid from @users) c
	select @Result=1,@ErrorMsg='发送成功!'
end 



end
GO
/****** Object:  StoredProcedure [dbo].[P_InsertUserBanks]    Script Date: 11/21/2016 18:04:50 ******/
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
/****** Object:  StoredProcedure [dbo].[M_UpdateUserRole]    Script Date: 11/21/2016 18:04:50 ******/
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
/****** Object:  StoredProcedure [dbo].[M_UpdateRolePermission]    Script Date: 11/21/2016 18:04:50 ******/
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
/****** Object:  StoredProcedure [dbo].[M_InsertUser]    Script Date: 11/21/2016 18:04:50 ******/
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
				
				insert into M_Users(UserID,UserName,LoginName,LoginPwd,SourceType,[type],Rebate,UsableRebate,RoleID,SafeLevel,Layers,[Description])
				values(@UserID,@UserName,@LoginName,@LoginPwd,@SourceType,@Type,@Rebate,@Rebate,@RoleID,@Rebate/10,@layers,@Description)
 
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
			insert into M_Users(UserID,UserName,LoginName,LoginPwd,SourceType,[type],Rebate,UsableRebate,RoleID,SafeLevel,Layers,[Description])
				values(@UserID,@UserName,@LoginName,@LoginPwd,@SourceType,@Type,@Rebate,@Rebate,@RoleID,@Rebate/10,1,@Description)
			
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
/****** Object:  StoredProcedure [dbo].[M_GetM_UserToLogin]    Script Date: 11/21/2016 18:04:50 ******/
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
Create PROCEDURE [dbo].[M_GetM_UserToLogin]
@LoginName nvarchar(200),
@LoginPWD nvarchar(64),
@SourceType int =0,
@Result int output  --1:查询正常；2：用户名不存在；3：用户密码有误
AS

declare @UserID nvarchar(64),@RoleID nvarchar(64),@isAdmin int

IF  EXISTS(select UserID from M_Users where LoginName=@LoginName  and Status<>9)
begin
	select @UserID = UserID,@RoleID=RoleID,@isAdmin=IsAdmin from M_Users 
	where LoginName=@LoginName and LoginPWD=@LoginPWD and SourceType=@SourceType and Status<>9
	
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
/****** Object:  StoredProcedure [dbo].[M_DeleteRole]    Script Date: 11/21/2016 18:04:50 ******/
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
/****** Object:  StoredProcedure [dbo].[M_BindOtherAccount]    Script Date: 11/21/2016 18:04:50 ******/
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
/****** Object:  Default [DF_Active_BTIme]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[Active] ADD  CONSTRAINT [DF_Active_BTIme]  DEFAULT (getdate()) FOR [BTime]
GO
/****** Object:  Default [DF_Active_CreateTime]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[Active] ADD  CONSTRAINT [DF_Active_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_Active_UpdTime]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[Active] ADD  CONSTRAINT [DF_Active_UpdTime]  DEFAULT (getdate()) FOR [UpdTime]
GO
/****** Object:  Default [DF_Active_Status]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[Active] ADD  CONSTRAINT [DF_Active_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_Active_Type]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[Active] ADD  CONSTRAINT [DF_Active_Type]  DEFAULT ((0)) FOR [Type]
GO
/****** Object:  Default [DF_M_Role_Status]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[M_Role] ADD  CONSTRAINT [DF_M_Role_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_M_Role_IsDefault]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[M_Role] ADD  CONSTRAINT [DF_M_Role_IsDefault]  DEFAULT ((0)) FOR [IsDefault]
GO
/****** Object:  Default [DF_M_Role_CreateTime]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[M_Role] ADD  CONSTRAINT [DF_M_Role_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_M_RolePermission_CreateTime]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[M_RolePermission] ADD  CONSTRAINT [DF_M_RolePermission_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_UserRole_IsDefault]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[M_UserRole] ADD  CONSTRAINT [DF_UserRole_IsDefault]  DEFAULT ((0)) FOR [IsDefault]
GO
/****** Object:  Default [DF_UserRole_Status]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[M_UserRole] ADD  CONSTRAINT [DF_UserRole_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_UserRole_CreateTime]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[M_UserRole] ADD  CONSTRAINT [DF_UserRole_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_M_Users_CreateTime]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_M_Users_Type]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_Type]  DEFAULT ((0)) FOR [Type]
GO
/****** Object:  Default [DF_M_Users_Status]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_M_Users_Email]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_Email]  DEFAULT ('') FOR [Email]
GO
/****** Object:  Default [DF_M_Users_SourceType]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_SourceType]  DEFAULT ((0)) FOR [SourceType]
GO
/****** Object:  Default [DF_M_Users_AccountPwd]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_AccountPwd]  DEFAULT ('') FOR [AccountPwd]
GO
/****** Object:  Default [DF_M_Users_Avatar]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_Avatar]  DEFAULT ('') FOR [Avatar]
GO
/****** Object:  Default [DF_M_Users_UpdateTime]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_UpdateTime]  DEFAULT (getdate()) FOR [UpdateTime]
GO
/****** Object:  Default [DF_M_Users_LastLoginIP]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_LastLoginIP]  DEFAULT ('') FOR [LastLoginIP]
GO
/****** Object:  Default [DF_M_Users_SafeLevel]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_SafeLevel]  DEFAULT ((55)) FOR [SafeLevel]
GO
/****** Object:  Default [DF_M_Users_IsAdmin]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_IsAdmin]  DEFAULT ((0)) FOR [IsAdmin]
GO
/****** Object:  Default [DF_M_Users_Rebate]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_Rebate]  DEFAULT ((0.00)) FOR [Rebate]
GO
/****** Object:  Default [DF_M_Users_ChildCount]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_ChildCount]  DEFAULT ((0)) FOR [ChildCount]
GO
/****** Object:  Default [DF_M_Users_Layers]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_Layers]  DEFAULT ((1)) FOR [Layers]
GO
/****** Object:  Default [DF_M_Users_Description]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_Description]  DEFAULT ('') FOR [Description]
GO
/****** Object:  Default [DF_Menu_Type]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_Type]  DEFAULT ((1)) FOR [Type]
GO
/****** Object:  Default [DF_Menu_IsHide]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_IsHide]  DEFAULT ((0)) FOR [IsHide]
GO
/****** Object:  Default [DF_Menu_Sort]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_Sort]  DEFAULT ((0)) FOR [Sort]
GO
/****** Object:  Default [DF_Menu_Layer]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_Layer]  DEFAULT ((0)) FOR [Layer]
GO
/****** Object:  Default [DF_Menu_IsMenu]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_IsMenu]  DEFAULT ((1)) FOR [IsMenu]
GO
/****** Object:  Default [DF_Menu_IsLimit]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_IsLimit]  DEFAULT ((0)) FOR [IsLimit]
GO
/****** Object:  Default [DF_UserAccount_AccountFee]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [DF_UserAccount_AccountFee]  DEFAULT ((0.00)) FOR [AccountFee]
GO
/****** Object:  Default [DF_UserAccount_InAccount]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [DF_UserAccount_InAccount]  DEFAULT ((0.00)) FOR [InAccount]
GO
/****** Object:  Default [DF_UserAccount_OutAccount]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [DF_UserAccount_OutAccount]  DEFAULT ((0.00)) FOR [OutAccount]
GO
/****** Object:  Default [DF_UserAccount_CreateTime]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [DF_UserAccount_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_UserAccount_UpdTime]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [DF_UserAccount_UpdTime]  DEFAULT (getdate()) FOR [UpdTime]
GO
/****** Object:  Default [DF_UserAccount_InteFee]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [DF_UserAccount_InteFee]  DEFAULT ((0.00)) FOR [InteFee]
GO
/****** Object:  Default [DF_UserAccount_DiscountFee]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [DF_UserAccount_DiscountFee]  DEFAULT ((0.00)) FOR [DiscountFee]
GO
/****** Object:  Default [DF_UserAccount_InInteFee]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [DF_UserAccount_InInteFee]  DEFAULT ((0.00)) FOR [InInteFee]
GO
/****** Object:  Default [DF_UserAccount_OutInteFee]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [DF_UserAccount_OutInteFee]  DEFAULT ((0.00)) FOR [OutInteFee]
GO
/****** Object:  Default [DF_UserAccount_UpdUserID]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[UserAccount] ADD  CONSTRAINT [DF_UserAccount_UpdUserID]  DEFAULT ('') FOR [UpdUserID]
GO
/****** Object:  Default [DF_UserBanks_Status]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[UserBanks] ADD  CONSTRAINT [DF_UserBanks_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_UserBanks_CreateTime]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[UserBanks] ADD  CONSTRAINT [DF_UserBanks_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_UserBanks_Type]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[UserBanks] ADD  CONSTRAINT [DF_UserBanks_Type]  DEFAULT ((1)) FOR [Type]
GO
/****** Object:  Default [DF_UserRelation_CreateTime]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[UserRelation] ADD  CONSTRAINT [DF_UserRelation_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_UserRelation_Layers]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[UserRelation] ADD  CONSTRAINT [DF_UserRelation_Layers]  DEFAULT ((1)) FOR [Layers]
GO
/****** Object:  Default [DF_Reply_Status]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[UserReply] ADD  CONSTRAINT [DF_Reply_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_Reply_CreateTime]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[UserReply] ADD  CONSTRAINT [DF_Reply_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_UserReply_Type]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[UserReply] ADD  CONSTRAINT [DF_UserReply_Type]  DEFAULT ((0)) FOR [Type]
GO
/****** Object:  Default [DF_UserLog_Type]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[UsersLog] ADD  CONSTRAINT [DF_UserLog_Type]  DEFAULT ((0)) FOR [Type]
GO
/****** Object:  Default [DF_UserLog_IP]    Script Date: 11/21/2016 18:04:49 ******/
ALTER TABLE [dbo].[UsersLog] ADD  CONSTRAINT [DF_UserLog_IP]  DEFAULT ('') FOR [IP]
GO
