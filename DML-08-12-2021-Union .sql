select r.id from tb_m_regions as r
union
select c.id_region from 
tb_m_countries as c
;

select d.id_locations from  tb_m_departemens as d
union
select l.id from 
tb_m_locations as l
;

