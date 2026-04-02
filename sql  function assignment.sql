DELIMITER $$
create function marks(name varchar(10))
returns int
deterministic
begin
	declare std_marks int;
    select std_mark INTO std_marks FROM std_records WHERE std_name = name;
    return std_marks;
end $$
DELIMITER ;

select * from std_records;
select marks('hari') as marks;     