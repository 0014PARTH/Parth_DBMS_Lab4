select 
co.cus_gender as 'Gender',
count(co.cus_gender) as 'No_of_customer'

from (
select distinct
 c.cus_id,
 c.cus_name,
 c.cus_gender
from customer c
inner join `order` o
on o.cus_id= c.cus_id
where ord_amount>=3000

) as co
group by co.cus_gender;



