select 
	AVG(e.sallary) as gaji_rata
from 
	tb_m_employees as e
group by 
	e.id_depart
having 
	AVG(e.sallary) > '15000000'
;


select	
	MAX(e.sallary) as gaji_tertinggi
from 
	tb_m_employees as e
group by 
	e.id_depart
having 
	MAX(e.sallary) < '25000000'
;


select	
	MIN(e.sallary) as gaji_terendah
from 
	tb_m_employees as e
group by 
	e.id_depart 
having 
	MIN(e.sallary) > '5000000'
;

select 
	count(*) as jumlah_job 
from tb_m_jobs as j
group by j.min_sallary
having count(*) > 1
;
