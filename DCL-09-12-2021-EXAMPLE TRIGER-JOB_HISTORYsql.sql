SELECT*FROM [tb_m_employees] WHERE [tb_m_employees].id='EMP01';

UPDATE [dbo].[tb_m_employees] 
	SET tb_m_employees.id_job='JOB02'
WHERE [tb_m_employees].id='EMP01';