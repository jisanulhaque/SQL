--Create View Statement

alter table Offrs
add GCI int

update offrs
set GCI=125
where FullName = 'Munim'


select * from Offrs

create view [Eligible for Exam] as
Select SLno, FullName from Offrs
Where GCI >=130

--updating table to check the view
insert into Offrs values
('Polash','ADWC', 135)

--Quering the view
select * from [Eligible for Exam]--provided the ipdated result

--Updating a view
CREATE OR alter VIEW [Eligible for Exam] as
Select FullName, Branch, GCI from Offrs
Where GCI >=130

select * From Offrs
----------------------------------------------------
/***************************************************/
--Solution for Create or Replace View in SQL Server
IF NOT EXISTS (SELECT * FROM sys.views WHERE object_id = OBJECT_ID(N'[dbo].[vw_myView]'))
    EXEC sp_executesql N'CREATE VIEW [dbo].[vw_myView] AS SELECT ''This is a code stub which will be replaced by an Alter Statement'' as [code_stub]'
GO

ALTER VIEW [dbo].[vw_myView]
AS
SELECT 'This is a code which should be replaced by the real code for your view' as [real_code]
GO