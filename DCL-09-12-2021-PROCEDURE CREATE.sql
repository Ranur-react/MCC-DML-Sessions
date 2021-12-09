CREATE PROCEDURE SetSallary(
	@id varchar(10),
	@nilai decimal(10,2)
) 
AS 
BEGIN
	UPDATE tb_m_employees SET tb_m_employees.sallary=@nilai WHERE tb_m_employees.id=@id;
END
