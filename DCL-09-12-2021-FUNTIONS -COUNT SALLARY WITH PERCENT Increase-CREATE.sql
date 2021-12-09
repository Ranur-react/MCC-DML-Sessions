CREATE FUNCTION getCountGajiPercent(
	@id varchar(10),
	@nilaiPercent decimal(10,2)
)
RETURNS 
	decimal(10,2)
BEGIN
	declare @return decimal(10,2);
	declare @awal decimal(10,2);
	SET @awal=(
		SELECT tb_m_employees.sallary FROM tb_m_employees WHERE tb_m_employees.id=@id
	);
	SET @return=@awal+(@awal*(@nilaiPercent/100));
	RETURN @return
END