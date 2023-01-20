USE [AKASIA]
GO
/****** Object:  StoredProcedure [dbo].[Soal_No_3_Akasia]    Script Date: 1/20/2023 8:35:11 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		Windy Sura Wijayapurwana
-- Create date: 20 Januari 2022
-- Description:	Soal no 3 AKASIA
-- =============================================
ALTER PROCEDURE [dbo].[Soal_No_3_Akasia] 
	@ID CHAR(1),
	@A  CHAR(5),
	@B  CHAR(5),
	@C  CHAR(5),
	@D  CHAR(5),
	@E  CHAR(5)

AS
BEGIN
	
	SET NOCOUNT ON;

	IF @A = ''
	BEGIN
	   SET @A = NULL
	END

	IF @B = ''
	BEGIN
	   SET @B = NULL
	END

	IF @C = ''
	BEGIN
	   SET @C = NULL
	END

	IF @D = ''
	BEGIN
	   SET @D = NULL
	END

	IF @E = ''
	BEGIN
	   SET @E = NULL
	END

   UPDATE [dbo].[TEST2]
   SET
       [A] = @A
      ,[B] = @B 
      ,[C] = @C 
      ,[D] = @D 
      ,[E] = @E
   WHERE Id = @ID


END
