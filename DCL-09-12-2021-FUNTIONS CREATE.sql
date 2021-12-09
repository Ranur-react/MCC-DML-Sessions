CREATE FUNCTION getGajiBertambah(
	@id varchar(10),
	@nilai decimal(10,2)
)
RETURNS 
	decimal(10,2)
BEGIN
	declare @return decimal(10,2);
	declare @awal decimal(10,2);
	SET @awal=(
		SELECT tb_m_employees.sallary FROM tb_m_employees WHERE tb_m_employees.id=@id
	);
	SET @return=@awal+@nilai;
	RETURN @return
END