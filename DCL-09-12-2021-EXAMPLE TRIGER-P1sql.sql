-- ================================================
-- Template generated from Template Explorer using:
-- Create Trigger (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- See additional Create Trigger templates for more
-- examples of different Trigger statements.
--
-- This block of comments will not be included in
-- the definition of the function.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
ALTER TRIGGER [dbo].[tri_update_job_within_history] 
   ON   [dbo].[tb_m_employees]
   AFTER UPDATE
AS 
IF(UPDATE([id_job]))
BEGIN

	declare @id_job_before as  varchar(10);
	declare @id_job_after as  varchar(10);
	declare @id_depart as  varchar(10);
	declare @id_emp as  varchar(10);
	declare @startDate as  datetime;
	declare @endDate as  datetime;

	SET @id_job_after=(
		SELECT d.id_job FROM inserted as d
		);

	SET @id_job_before=(
		SELECT d.id_job FROM DELETED as d
		);
	SET @startDate=DATEADD(m,-5,GETDATE());

	SET @endDate=GETDATE();

	SET @id_depart=(
		SELECT d.id_depart FROM inserted as d
	);

	SET @id_emp=(
		SELECT d.id FROM inserted as d
	);

	SELECT 
		@id_emp as ID_KARYAWAN ,
		@id_depart as ID_DEPART ,
		@id_job_after as ID_JOB_TERBARU ,
		@id_job_before as ID_JOB_SEBELUM_DIUBAH,
		@startDate AS TANGGAL_MULAI, 
		@endDate as TANGGLA_SELESAI;

	IF(@id_job_before <> @id_job_after)
		INSERT INTO tb_tr_job_History values(@startDate,@endDate,@id_depart,@id_emp,@id_job_before);
	ELSE
		SELECT 'Kodingan Tidak Di esekusi karena masih dengn JOB yang lama';
END

BEGIN
	SELECT * FROM tb_tr_job_History;
END

GO
