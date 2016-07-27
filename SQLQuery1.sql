USE [neenee]
GO

DECLARE	@return_value Int

EXEC	@return_value = [dbo].[getmoney]

SELECT	@return_value as 'Return Value'

GO
