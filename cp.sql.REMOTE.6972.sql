USE [cplottery]
GO
/****** Object:  Table [dbo].[UserLog]    Script Date: 11/12/2016 18:04:57 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[UserLog](
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
/****** Object:  Table [dbo].[Menu]    Script Date: 11/12/2016 18:04:57 ******/
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
/****** Object:  Table [dbo].[M_Users]    Script Date: 11/12/2016 18:04:57 ******/
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
/****** Object:  Table [dbo].[M_UserRole]    Script Date: 11/12/2016 18:04:57 ******/
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
/****** Object:  Table [dbo].[M_RolePermission]    Script Date: 11/12/2016 18:04:57 ******/
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
/****** Object:  Table [dbo].[M_Role]    Script Date: 11/12/2016 18:04:57 ******/
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
/****** Object:  Default [DF_M_Role_Status]    Script Date: 11/12/2016 18:04:57 ******/
ALTER TABLE [dbo].[M_Role] ADD  CONSTRAINT [DF_M_Role_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_M_Role_IsDefault]    Script Date: 11/12/2016 18:04:57 ******/
ALTER TABLE [dbo].[M_Role] ADD  CONSTRAINT [DF_M_Role_IsDefault]  DEFAULT ((0)) FOR [IsDefault]
GO
/****** Object:  Default [DF_M_Role_CreateTime]    Script Date: 11/12/2016 18:04:57 ******/
ALTER TABLE [dbo].[M_Role] ADD  CONSTRAINT [DF_M_Role_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_M_RolePermission_CreateTime]    Script Date: 11/12/2016 18:04:57 ******/
ALTER TABLE [dbo].[M_RolePermission] ADD  CONSTRAINT [DF_M_RolePermission_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_UserRole_IsDefault]    Script Date: 11/12/2016 18:04:57 ******/
ALTER TABLE [dbo].[M_UserRole] ADD  CONSTRAINT [DF_UserRole_IsDefault]  DEFAULT ((0)) FOR [IsDefault]
GO
/****** Object:  Default [DF_UserRole_Status]    Script Date: 11/12/2016 18:04:57 ******/
ALTER TABLE [dbo].[M_UserRole] ADD  CONSTRAINT [DF_UserRole_Status]  DEFAULT ((1)) FOR [Status]
GO
/****** Object:  Default [DF_UserRole_CreateTime]    Script Date: 11/12/2016 18:04:57 ******/
ALTER TABLE [dbo].[M_UserRole] ADD  CONSTRAINT [DF_UserRole_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_M_Users_CreateTime]    Script Date: 11/12/2016 18:04:57 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_CreateTime]  DEFAULT (getdate()) FOR [CreateTime]
GO
/****** Object:  Default [DF_M_Users_Type]    Script Date: 11/12/2016 18:04:57 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_Type]  DEFAULT ((0)) FOR [Type]
GO
/****** Object:  Default [DF_M_Users_Status]    Script Date: 11/12/2016 18:04:57 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_Status]  DEFAULT ((0)) FOR [Status]
GO
/****** Object:  Default [DF_M_Users_Email]    Script Date: 11/12/2016 18:04:57 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_Email]  DEFAULT ('') FOR [Email]
GO
/****** Object:  Default [DF_M_Users_SourceType]    Script Date: 11/12/2016 18:04:57 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_SourceType]  DEFAULT ((0)) FOR [SourceType]
GO
/****** Object:  Default [DF_M_Users_AccountPwd]    Script Date: 11/12/2016 18:04:57 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_AccountPwd]  DEFAULT ('') FOR [AccountPwd]
GO
/****** Object:  Default [DF_M_Users_Avatar]    Script Date: 11/12/2016 18:04:57 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_Avatar]  DEFAULT ('') FOR [Avatar]
GO
/****** Object:  Default [DF_M_Users_UpdateTime]    Script Date: 11/12/2016 18:04:57 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_UpdateTime]  DEFAULT (getdate()) FOR [UpdateTime]
GO
/****** Object:  Default [DF_M_Users_LastLoginIP]    Script Date: 11/12/2016 18:04:57 ******/
ALTER TABLE [dbo].[M_Users] ADD  CONSTRAINT [DF_M_Users_LastLoginIP]  DEFAULT ('') FOR [LastLoginIP]
GO
/****** Object:  Default [DF_Menu_Type]    Script Date: 11/12/2016 18:04:57 ******/
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_Type]  DEFAULT ((1)) FOR [Type]
GO
/****** Object:  Default [DF_Menu_IsHide]    Script Date: 11/12/2016 18:04:57 ******/
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_IsHide]  DEFAULT ((0)) FOR [IsHide]
GO
/****** Object:  Default [DF_Menu_Sort]    Script Date: 11/12/2016 18:04:57 ******/
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_Sort]  DEFAULT ((0)) FOR [Sort]
GO
/****** Object:  Default [DF_Menu_Layer]    Script Date: 11/12/2016 18:04:57 ******/
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_Layer]  DEFAULT ((0)) FOR [Layer]
GO
/****** Object:  Default [DF_Menu_IsMenu]    Script Date: 11/12/2016 18:04:57 ******/
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_IsMenu]  DEFAULT ((1)) FOR [IsMenu]
GO
/****** Object:  Default [DF_Menu_IsLimit]    Script Date: 11/12/2016 18:04:57 ******/
ALTER TABLE [dbo].[Menu] ADD  CONSTRAINT [DF_Menu_IsLimit]  DEFAULT ((0)) FOR [IsLimit]
GO
/****** Object:  Default [DF_UserLog_Type]    Script Date: 11/12/2016 18:04:57 ******/
ALTER TABLE [dbo].[UserLog] ADD  CONSTRAINT [DF_UserLog_Type]  DEFAULT ((0)) FOR [Type]
GO
/****** Object:  Default [DF_UserLog_IP]    Script Date: 11/12/2016 18:04:57 ******/
ALTER TABLE [dbo].[UserLog] ADD  CONSTRAINT [DF_UserLog_IP]  DEFAULT ('') FOR [IP]
GO
