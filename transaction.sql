use ecommerce;
select @@autocommit;

-- precisamos setar o commit para 0, pois quando está igual a 1 significa que todas as transações são automaticamente atualizadas
set @@autocommit = 0;

start transaction;
	select @idOrder:= max(idOrder) + 1
    from orders2;
    select @idOrder as Number;

create table orders2(
	idOrder int not null primary key, 
    teste varchar(50)
);

set @idOrder = 1;
insert into orders2 values(@idOrder,1),(@idOrder+1,2),(@idOrder+2,3);

commit;

SELECT * FROM ORDERS2;


