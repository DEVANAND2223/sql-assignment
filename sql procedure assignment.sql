use students;

DELIMITER $$

create procedure std_record()
begin
select *  from std_records
where std_mark >50 ;
end $$

DELIMITER ;

call std_record();

select * from std_records;
DELIMITER &&
create procedure student(in std_detail varchar(50))
begin
     select * from std_records
     where roll_no=std_detail;
 end &&
 
 DELIMITER ;
 drop procedure student;
call student(02);


DELIMITER &&
create procedure students(in p_id int,out p_name varchar(50))
begin
    select std_name into p_name from std_records
    where roll_no=p_id;
 end &&
 
 DELIMITER ;
 drop procedure students;
 CALL students(8, @name);
SELECT @name;