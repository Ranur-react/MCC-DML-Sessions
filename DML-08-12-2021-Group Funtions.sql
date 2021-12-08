select count(*) as jumlah_job from [dbo].[tb_m_jobs];

select min(min_sallary) from [dbo].[tb_m_jobs];

select max(min_sallary) from [dbo].[tb_m_jobs];

select 
	concat (e.last_name,',',e.first_name) as employed_name,
	e.sallary
from [dbo].[tb_m_employees] as e
