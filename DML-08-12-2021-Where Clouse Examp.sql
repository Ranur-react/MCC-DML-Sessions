select*from [dbo].[tb_m_employees] where [gender] = 'male';

select  * from [dbo].[tb_m_employees] where sallary < '25000000' ;

select  * from [dbo].[tb_m_employees] where first_name like '%Muhammad%' or last_name like '%Muhammad%';



select count(*) as total_perempuan from [dbo].[tb_m_employees] where [gender] = 'male' ;	

