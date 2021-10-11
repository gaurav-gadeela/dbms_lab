

create table marks_sem1 (rollno int not null, math int, sci int, eng int, social int, sports int);

insert into marks_sem1 select rollno, math, sci, eng, social, sports from student order by rollno desc;
 
alter table marks_sem1 add primary key (rollno); 




create table faculty(name varchar(20), fid char(4) not null primary key, subject varchar(20));
insert into faculty values ("kakashi", "4003", "math");
insert into faculty values ("guy", "5002", "sports");
insert into faculty values ("kurenai", "5038", "eng");





create table sem1(subj_id char(4) not null primary key, subject varchar(20), fid char(4), cap int, campus int, foreign key (fid) references faculty(fid), foreign key (campus) references campus(cid));





alter table campus add primary key (cid);





alter table student drop column math, drop column sci, drop column eng, drop column social, drop column sports;

alter table student add foreign key (rollno) references marks_sem1(rollno);

alter table student add cid int;
 
alter table student add foreign key (cid) references campus(cid);





















