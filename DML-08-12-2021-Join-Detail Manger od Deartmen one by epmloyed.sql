select 
	e.id,
	concat (e.last_name,',',e.first_name) as employed_name,
	d.name as departemen_name,
	e_d.first_name as manager_depart
from tb_m_employees as e
	join tb_m_departemens as d 
		on e.id_depart =d.id
	join tb_m_employees as e_d 
		on e_d.id=d.id_manager
	join tb_m_locations  as l 
		on l.id=d.id_locations
	join tb_m_countries as c 
		on c.id=l.id_countrie
	join tb_m_regions as r 
		on r.id=c.id_region
;