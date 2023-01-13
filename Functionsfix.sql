









/* FUNCTION - FINDS THE TOTAL SALES AMMOUNT  */

create or replace function myfunction
return number
is
cursor cur is 
select quantitysold amount from sales;
total_amount number;
amount number;
begin
total_amount :=0;
open cur;
fetch cur into amount;
while(cur%FOUND) loop
total_amount := total_amount + amount;
fetch cur into amount;
end loop;
close cur;
return total_amount;
end;


--select myfunction from dual;
declare
amount number;
begin
amount := myfunction();
DBMS_OUTPUT.PUT_LINE('All protucts sale quantity is:' ||amount);
end;



