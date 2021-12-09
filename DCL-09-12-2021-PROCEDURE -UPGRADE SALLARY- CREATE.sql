CREATE PROCEDURE UpgradeSallary(
	@id as varchar(10),
	@nilai as decimal(10,2)
) 
AS 
BEGIN
	declare @total as decimal(10,2);
	SET @total =(
		SELECT dbo.getGajiBertambah(@id,@nilai)
	);
	UPDATE tb_m_employees SET tb_m_employees.sallary=@total WHERE tb_m_employees.id=@id;
END
BEGIN
	SELECT * FROM tb_m_employees  Where tb_m_employees.id=@id;
END
