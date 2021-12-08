select 
	count(*) as jumlah_employes,
	d.name as departemen_name,
	concat(l.street_address,',',l.city,',',l.state_province) as locations_detail,
	c.name as Country,
	r.name as Region
from tb_m_employees as e
	join tb_m_departemens as d 
		on e.id_depart =d.id
	join tb_m_locations  as l 
		on l.id=d.id_locations
	join tb_m_countries as c 
		on c.id=l.id_countrie
	join tb_m_regions as r 
		on r.id=c.id_region
	group by e.id_depart , 
		d.name, 
		concat(l.street_address,',',l.city,',',l.state_province),
		c.name,
		r.name
	order by count(*) desc
;