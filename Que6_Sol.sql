
select
s.*,
Noofproducts
from 
	supplier s
	inner join (
	
	select
	supp_id,
	count(pro_id) as NoOfProducts
	from 
	supplier_pricing
	group by
	supp_id
	having
	NoOfProducts>1
) as sp on s.supp_Id= sp.supp_id;

