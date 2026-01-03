use News_NBU;

create table dbo.tb_news_main(
	news_id integer IDENTITY(1,1) PRIMARY KEY,
	link  varchar(2000),
	title varchar(2000),
	news_category varchar(100),
	datetime_create datetime,
	datetime_update datetime
);
