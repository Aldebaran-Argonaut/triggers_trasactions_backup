set @@autocommit = 0;

drop procedure sql_fail;

Delimiter //
create procedure sql_fail()
	begin
		declare exit handler for sqlexception
		begin
			rollback;
			select 'A transação foi encerrada devido a uma falha na transação' as warning;
		end;
		start transaction;
			set @nextorder = (select max(idOrder) + 1 from orders);
			insert into orders values(@nextorder,null,'Em andamento','teste',10.2);
		commit;
    end //
delimiter ;

call sql_fail;

select * from orders;
	