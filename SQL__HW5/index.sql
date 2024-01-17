
-- Создать таблицы реакций и комментариев

-- Добавить несколько записей в каждую таблицу выше

CREATE database HomeWorks;
use HomeWorks;
CREATE TABLE Reactions (
reaction_id int,
created_at timestamp,
author_id varchar (128),
video_id int,
valuation int
);
insert into Reactions (reaction_id, created_at, author_id, video_id, valuation)
values
(1, CURRENT_TIMESTAMP, "Smirnov Viktor", 1, 50);

insert into Reactions (reaction_id, created_at, author_id, video_id, valuation)
values
(2, CURRENT_TIMESTAMP, "Petrov Egor", 3, 45);

insert into Reactions (reaction_id, created_at, author_id, video_id, valuation)
values
(3, CURRENT_TIMESTAMP, "Smirnova Elena", 4, 18);
insert into Reactions (reaction_id, created_at, author_id, video_id, valuation)
values
(4, CURRENT_TIMESTAMP, "Perl Sveta", 5, 55);

select * from reactions;


create table Comments (
comment_id int,
created_at timestamp,
author_id int,
content text (128),
viddeo_id int);
insert into Comments (comment_id, created_at, author_id, content, video_id)
values
(1, CURRENT_TIMESTAMP, "Agatronik", "Thus is very nace", 2);

insert into Comments (comment_id, created_at, author_id, content, video_id)
values
(2, CURRENT_TIMESTAMP, "Piter", "Thus is terrible", 5);
insert into Comments (comment_id, created_at, author_id, content, video_id)
values
(3, CURRENT_TIMESTAMP, "Marsianin", "It can be better", 8);
insert into Comments (comment_id, created_at, author_id, content, video_id)
values
(4, CURRENT_TIMESTAMP, "Evgenii ", "Thus is very cut", 10);