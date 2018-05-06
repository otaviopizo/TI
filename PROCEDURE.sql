-- BANCO DE EXECUÇÃO
USE [DS_TRAINNING]
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		OTAVIO
-- Create date: 020518
-- Description:	PROCEDURE TRANSAÇÕES
-- =============================================


ALTER PROCEDURE [dbo].[P_WK_TRANSACOES]

AS 
BEGIN


-- DROP TABLE 

IF OBJECT_ID ('WK_TRANSACOES') IS NOT NULL
DROP TABLE [dbo].[WK_TRANSACOES]

-- CREATE TABLE

CREATE TABLE  WK_TRANSACOES
(
	   [RowNumber]			INT IDENTITY
	  ,[Order ID]			VARCHAR (100)
      ,[Order Date]			DATE
      ,[Customer ID]		NUMERIC
      ,[Region]				VARCHAR (100)
      ,[Rep]				VARCHAR (100)
      ,[Item]				VARCHAR (100)
      ,[Units]				NUMERIC
      ,[Unit Price]			FLOAT
 )

-- TRUNCATE DA TABELA

TRUNCATE TABLE [dbo].[WK_TRANSACOES] 

-- INSERÇÃO DE DADOS

INSERT INTO [dbo].[WK_TRANSACOES]
(      
	   [Order ID]
	  ,[Order Date]
      ,[Customer ID]
      ,[Region]
      ,[Rep]
      ,[Item]
      ,[Units]
      ,[Unit Price]
)
SELECT 
	   [Order ID]
	  ,[Order Date]
      ,[Customer ID]
      ,[Region]
      ,[Rep]
      ,[Item]
      ,[Units]
      ,[Unit Price]
  FROM [DS_TRAINNING].[dbo].[Transacoes]

 END

[dbo].[P_K_TRANSACOES]