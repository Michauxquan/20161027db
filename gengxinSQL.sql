 Alter table CusUserInfo add SourceType  int  default(0)
 GO 
 Update CusUserInfo set SourceType=0 
  GO
  Alter table CusUserInfo add SourceType  int  default(0) not null
 GO
 alter  table dbo.CusBettMode alter column BettMdNum varchar(300)
 GO
 
INSERT INTO [sqlgeass].[dbo].[CusBettMode]([ObjId] ,[Objjc],[CusUserId],[BettMdNum],[BettInfo],[BettEggs],[CheckBettType],[SetWinType],[SetLossType],[CreateTime],[CreateUser])
     VALUES(newid(),'200专家版','-110','00;02;04;06;08;10;12;13;14;15;17;19;21;23;25;27','00:799;02:4796;04:11989;06:22383;08:36025;10:50455;12:58462;13:15058;14:15093;15:58462;17:50455;19:36025;21:22414;23:11989;25:4796;27:799','400000','0','36','36',getdate(),'14')
GO
INSERT INTO [sqlgeass].[dbo].[CusBettMode]([ObjId] ,[Objjc],[CusUserId],[BettMdNum],[BettInfo],[BettEggs],[CheckBettType],[SetWinType],[SetLossType],[CreateTime],[CreateUser])
     VALUES(newid(),'300专家版','-110','00;02;04;06;08;10;12;13;14;15;17;19;21;23;25;27','00:1199;02:7191;04:17983;06:33575;08:54038;10:75683;12:87692;13:22587;14:22640;15:87692;17:75683;19:54038;21:33624;23:17984;25:7192;27:1199','600000','0','37','37',getdate(),'14')
GO
INSERT INTO [sqlgeass].[dbo].[CusBettMode]([ObjId] ,[Objjc],[CusUserId],[BettMdNum],[BettInfo],[BettEggs],[CheckBettType],[SetWinType],[SetLossType],[CreateTime],[CreateUser])
     VALUES(newid(),'400专家版','-110','00;02;04;06;08;10;12;13;14;15;17;19;21;23;25;27','00:1599;02:9589;04:23978;06:44766;08:72051;10:100910;12:116923;13:30116;14:30188;15:116923;17:100910;19:72051;21:44831;23:23977;25:9589;27:1599','800000','0','38','38',getdate(),'14')
GO
INSERT INTO [sqlgeass].[dbo].[CusBettMode]([ObjId] ,[Objjc],[CusUserId],[BettMdNum],[BettInfo],[BettEggs],[CheckBettType],[SetWinType],[SetLossType],[CreateTime],[CreateUser])
     VALUES(newid(),'500专家版','-110','00;02;04;06;08;10;12;13;14;15;17;19;21;23;25;27','00:1998;02:11986;04:29969;06:55955;08:90065;10:126139;12:146155;13:37646;14:37739;15:146155;17:126139;19:90064;21:56036;23:29970;25:11986;27:1998','1000000','0','39','39',getdate(),'14')
GO
INSERT INTO [sqlgeass].[dbo].[CusBettMode]([ObjId] ,[Objjc],[CusUserId],[BettMdNum],[BettInfo],[BettEggs],[CheckBettType],[SetWinType],[SetLossType],[CreateTime],[CreateUser])
     VALUES(newid(),'200大极端版','-110','13;14;15;16;17;18;19;20;21;22;23;24;25;26;27','13:15096;14:60082;15:58462;16:55222;17:50456;18:43998;19:36026;20:28646;21:22382;22:16770;23:11986;24:7984;25:4794;26:2396;27:796','415096','0','41','41',getdate(),'14')
GO
INSERT INTO [sqlgeass].[dbo].[CusBettMode]([ObjId] ,[Objjc],[CusUserId],[BettMdNum],[BettInfo],[BettEggs],[CheckBettType],[SetWinType],[SetLossType],[CreateTime],[CreateUser])
     VALUES(newid(),'300大极端版','-110','13;14;15;16;17;18;19;20;21;22;23;24;25;26;27','13:22644;14:90123;15:87693;16:82833;17:75684;18:65997;19:54039;20:42969;21:33573;22:25155;23:17979;24:11976;25:7191;26:3594;27:1194','622644','0','42','42',getdate(),'14')
GO
INSERT INTO [sqlgeass].[dbo].[CusBettMode]([ObjId] ,[Objjc],[CusUserId],[BettMdNum],[BettInfo],[BettEggs],[CheckBettType],[SetWinType],[SetLossType],[CreateTime],[CreateUser])
     VALUES(newid(),'100小升级版','-110','00;01;02;03;04;05;06;07;08;09;10;11;12;13;14','00:398;01:1198;02:2397;03:3992;04:5993;05:8385;06:11191;07:14324;08:18013;09:21999;10:25228;11:27611;12:29231;13:30041;14:7548','207549','0','43','43',getdate(),'14')
GO
INSERT INTO [sqlgeass].[dbo].[CusBettMode]([ObjId] ,[Objjc],[CusUserId],[BettMdNum],[BettInfo],[BettEggs],[CheckBettType],[SetWinType],[SetLossType],[CreateTime],[CreateUser])
     VALUES(newid(),'200小升级版','-110','00;01;02;03;04;05;06;07;08;09;10;11;12;13;14','00:796;01:2396;02:4794;03:7984;04:11986;05:16770;06:22382;07:28648;08:36026;09:43998;10:50456;11:55222;12:58462;13:60082;14:15096','415098','0','44','44',getdate(),'14')
GO
INSERT INTO [sqlgeass].[dbo].[CusBettMode]([ObjId] ,[Objjc],[CusUserId],[BettMdNum],[BettInfo],[BettEggs],[CheckBettType],[SetWinType],[SetLossType],[CreateTime],[CreateUser])
     VALUES(newid(),'300小升级版','-110','00;01;02;03;04;05;06;07;08;09;10;11;12;13;14','00:1194;01:3594;02:7191;03:11976;04:17979;05:25155;06:33573;07:42972;08:54039;09:65997;10:75684;11:82833;12:87693;13:90123;14:22644','622647','0','45','45',getdate(),'14')
GO
INSERT INTO [sqlgeass].[dbo].[CusBettMode]([ObjId] ,[Objjc],[CusUserId],[BettMdNum],[BettInfo],[BettEggs],[CheckBettType],[SetWinType],[SetLossType],[CreateTime],[CreateUser])
     VALUES(newid(),'12:00满仓版','-110','00;01;02;03;04;05;06;07;08;09;10;11;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27','00:1077;01:3231;02:6460;03:10759;04:16150;05:22594;06:30153;07:38595;08:48568;09:59271;10:67969;11:74389;13:81268;14:81399;15:79010;16:74287;17:67969;18:59193;19:48531;20:38744;21:30197;22:22567;23:16151;24:10703;25:6460;26:3227;27:1078','1000000','0','46','46',getdate(),'14')
GO
INSERT INTO [sqlgeass].[dbo].[CusBettMode]([ObjId] ,[Objjc],[CusUserId],[BettMdNum],[BettInfo],[BettEggs],[CheckBettType],[SetWinType],[SetLossType],[CreateTime],[CreateUser])
     VALUES(newid(),'13:00满仓版','-110','00;01;02;03;04;05;06;07;08;09;10;11;12;14;15;16;17;18;19;20;21;22;23;24;25;26;27','00:1068;01:3203;02:6405;03:10674;04:16011;05:22414;06:29886;07:38424;08:48032;09:58701;10:67100;11:73488;12:77749;14:93690;15:77749;16:73488;17:67100;18:58701;19:48032;20:38424;21:29886;22:22414;23:16011;24:10674;25:6405;26:3203;27:1068','1000000','0','47','47',getdate(),'14')
GO
INSERT INTO [sqlgeass].[dbo].[CusBettMode]([ObjId] ,[Objjc],[CusUserId],[BettMdNum],[BettInfo],[BettEggs],[CheckBettType],[SetWinType],[SetLossType],[CreateTime],[CreateUser])
     VALUES(newid(),'14:00满仓版','-110','00;01;02;03;04;05;06;07;08;09;10;11;12;13;15;16;17;18;19;20;21;22;23;24;25;26;27','00:1068;01:3203;02:6405;03:10674;04:16011;05:22414;06:29886;07:38424;08:48032;09:58701;10:67100;11:73488;12:77749;13:93691;15:77748;16:73488;17:67100;18:58701;19:48032;20:38424;21:29886;22:22414;23:16011;24:10674;25:6405;26:3203;27:1068','1000000','0','48','48',getdate(),'14')
GO