select 
p.pro_id,
p.pro_name
from `order` as o
inner join 
	supplier_pricing as sp
inner join 
	product as p
on 
(
	o.pricing_id=sp.pricing_id
    and sp.pro_id = p.pro_id
    and o.ord_date >'2021-10-05'
) 
group by
p.pro_id;
