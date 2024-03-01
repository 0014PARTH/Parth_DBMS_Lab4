
select 
o.*,
p.pro_name,
PRO_DESC
from
`order` as o 
inner join supplier_pricing as s
inner join product as p on (
 o.pricing_id=s.PRICING_ID
 and s.pro_id= p.pro_id
)
where cus_id=2;
