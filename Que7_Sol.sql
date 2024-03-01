
select 
	c.CAT_NAME as Catogory_Name,
	P_sp.Cat_id as Category_Id,
    min(Minimum_Price_Of_Products)
from
	category as c
inner join (
select 
	p.cat_id,
	p.pro_name,
    sp.pro_id,
	Minimum_Price_Of_Products
from product as p
	inner join (
	select 
		pro_id,
		min(supp_price) as Minimum_Price_Of_Products
	from 
		supplier_pricing
	group by
		pro_id
) as SP on sp.pro_id= p.pro_id

) as P_sp on c.cat_id = P_sp.cat_id

group by 
	c.cat_id;