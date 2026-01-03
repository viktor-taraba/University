use News_NBU;

create table dbo.tb_news_text(
	news_id			integer,
	date_news		varchar(50),
	title			varchar(1000),
	full_text		varchar(max),
	constraint fk_news_id foreign key (news_id) references dbo.tb_news_main(news_id)
);