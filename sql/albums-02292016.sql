#albums-02292016.sql

drop table if exists wm16_Albums

create table wm16_Albums
( AlbumID int unsigned not null auto_increment primary key,
LastName varchar(50),
FirstName varchar(50),
Email varchar(80)
);

insert into test_Customers values (NULL,"Smith","Bob","bob@example.com");