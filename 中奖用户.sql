 

declare @ucerCount int ,@result varchar(2), @FCNum varchar(200) ,@rate varchar(50)
set @FCNum='789241'

select  @result=isnull(result,'')  from  FCLuckyResult   where FCNum=@FCNum
if(LEN(@result)=1)
begin
	set @result='0'+@result
end
 
--修改中奖信息
select @ucerCount=COUNT(1) from CusBettingInfo  where FCNum=@FCNum and CHARINDEX(@result,BettNumber)>0
update FCBettingInfo set LuckyUsersCount=@ucerCount  where FCNum=@FCNum
 
--获取倍数
select @rate= ISNULL(LossPerCent,'1') from NumLossPerCent
if(@rate='0')
begin
	set @rate=1
end
 
update CusBettingInfo set LuckyNumber=@result,
LuckyTotalEggs=CAST(
substring(
SUBSTRING(CusBettInfo,CHARINDEX('05:',CusBettInfo)+3,LEN(CusBettInfo)) ,0,
case   CHARINDEX(';',SUBSTRING(CusBettInfo,CHARINDEX('05:',CusBettInfo)+3,LEN(CusBettInfo))) 
when 0 then len(SUBSTRING(CusBettInfo,CHARINDEX('05:',CusBettInfo)+3,LEN(CusBettInfo)))
else CHARINDEX(';',SUBSTRING(CusBettInfo,CHARINDEX('05:',CusBettInfo)+3,LEN(CusBettInfo))) end
) as int)*@rate
  where FCNum=@FCNum and CHARINDEX(@result,BettNumber)>0

 update b set b.LastLuckFCNum=@FCNum  from CususerInfo b join  CusBettingInfo a on a.CusUserID=b.ObjName where a.FCNum=@FCNum  and CHARINDEX(@result,BettNumber)>0
 
 update b set b.UsGoldNum=b.UsGoldNum+isnull(a.LuckyTotalEggs,0)  from CusUserEstate b join  CusBettingInfo  a on a.CusUserID=b.CusUserID where a.FCNum=@FCNum  and CHARINDEX(@result,BettNumber)>0

insert into CusUserEstateOperate(ObjId,CusUserID,Type,Content,GoldNum,CreateTime)
select NEWID(),CusUserID,'收入',FCNum+'期['+@result+'],中奖发放',LuckyTotalEggs,GETDATE() from CusBettingInfo where FCNum=@FCNum  and CHARINDEX(@result,BettNumber)>0

 