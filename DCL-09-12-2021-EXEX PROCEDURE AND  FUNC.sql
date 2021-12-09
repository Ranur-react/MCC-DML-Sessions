---Execute Procedure-----
exec SetSallary 'EMP01','10000';
---Execute Funtions-----
SELECT dbo.getGajiBertambah('EMP01',700);
---Execute Procedure untuk upgrade sallary yang diambil dari funtions yang dibuat-----
EXEC UpgradeSallary 'EMP01','10000';

EXEC UpgradeSallaryPercent 'EMP01','10';

SELECT *,dbo.getGajiBertambah('EMP01',700) FROM [dbo].[tb_m_employees] where id='EMP01';