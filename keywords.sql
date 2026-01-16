use [News_NBU]

alter table [dbo].[tb_news_text]
add is_selected bit default 0;

update [dbo].[tb_news_text] 
set is_selected = case	when lower([title]) like '%зах%вплив%' then 1 
						when lower([title]) like '%заборонив%' then 1 
						when lower([title]) like '%неплатоспромож%' then 1 
						when lower([full_text]) like '%зах%вплив%' then 1
						when lower([full_text]) like '%заборонив%' then 1
						when lower([full_text]) like '%неплатоспромож%' then 1
						else 0 end;


SELECT [news_id]
      ,[date_news]
      ,[title]
      ,[full_text]
	  ,is_selected
FROM [dbo].[tb_news_text]
where is_selected = 0
and [full_text] like '%попередж%'


-- додати поле з коротким описом новини
-- додати поле з даними по штрафах (окремим полем в таблиці, зробити через openai)