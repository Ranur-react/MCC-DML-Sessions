select count(*) as jumlah_job from [dbo].[tb_m_jobs];


select	
	MIN(e.sallary) as gaji_terendah
from tb_m_employees as e;

select	
	MAX(e.sallary) as gaji_tertinggi
from tb_m_employees as e;


select 
	AVG(e.sallary) as gaji_rata
from tb_m_employees as e;
