/****** Michael Lawrence's Entrance Exam Microsoft SQL Stored Procedure. *****/
USE [mike]
GO
/****** Object:  Table [dbo].[mike] *****/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SalesLeadsTable](
	[PersonID] [int] IDENTITY(1,1) NOT NULL,
	[Date] [varchar](100) NULL,
	[Name] [varchar](100) NULL,
	[Email] [varchar](100) NULL,
	[Mobile] [varchar](100) NULL,
	[Country] [varchar](100) NULL,
 CONSTRAINT [PK_SalesLeadsTable] PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object that I named:  StoredProcedure [dbo].[UpdateDetail1] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Stored Procedure to update record into Detail table by ID
CREATE PROC [dbo].[UpdateDetail1]
@PersonID int,
@Date varchar(100),
@Name varchar(100),
@Email varchar(100),
@Mobile	varchar(100),
@Country  varchar(100)
as
UPDATE SalesLeadsTable set Date=@Date, Name=@Name, Email=@Email, Mobile=@Mobile, Country=@Country where PersonID=@PersonID;
GO
/****** Object:  StoredProcedure [dbo].[InsertDetail1] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Stored Procedure to Insert record into Detail table
CREATE PROC [dbo].[InsertDetail1]
@Date varchar(100),
@Name varchar(100),
@Email varchar(100),
@Mobile	varchar(100),
@Country  varchar(100)
as
Insert into SalesLeadsTable (Date,Name,Email,Mobile,Country) values(@Date,@Name,@Email,@Mobile,@Country);
GO
/****** Object:  StoredProcedure [dbo].[GetDetialByID1] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Stored Procedure to get records from table by ID.
CREATE PROC [dbo].[GetDetialByID1]
@PersonID int
as
Select PersonID,Date,Name,Email,Mobile,Country from SalesLeadsTable where PersonID=@PersonID;
GO
/****** Object:  StoredProcedure [dbo].[GetDetail1] *****/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Stored Procedure to get all records from table.
CREATE PROC [dbo].[GetDetail1]
as
Select PersonID,Date,Name,Email,Mobile,Country from SalesLeadsTable;
GO
/****** Object:  StoredProcedure [dbo].[DeleteDetialByID1] ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--Stored Procedure to delete records from detail table by ID
CREATE PROC [dbo].[DeleteDetialByID1]
@PersonID int
as
Delete from SalesLeadsTable  where PersonID=@PersonID;
GO
