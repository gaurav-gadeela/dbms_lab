select * from Student inner join marsk_sem1 on Student.rollno = marsk_sem1.rollno;

select student.name, marks_sem1.sports from student inner join marks_sem1 on marks_sem1.rollno= student.rollno;

select S.name,M.math,S.rollno from ((Student S inner join marsk_sem1 M on S.rollno = M.rollno) inner join Campus C on S.cid = C.cid and C.law = 1 );


select * from Student right join Campus on Student.cid = Campus.cid;

select * from Student left join Campus on Student.cid = Campus.cid;