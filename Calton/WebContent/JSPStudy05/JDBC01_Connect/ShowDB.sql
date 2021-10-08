create table member3 (
    id      varchar(20)     not null   primary key,
    pw      varchar(20)		not null,
    name    varchar(20)		not null,
    class   int,
    tel     varchar(20)		not null
);


insert into member3 values('tyBird', 'ab11', '김태은', 1, '010-283-4874');
insert into member3 values('yjWood', 'abcd', '이은정', 2, '010-923-1245');
insert into member3 values('jinBear', '3333', '조진이', 2, '010-2022-7244');

select * from member3;
s
commit;