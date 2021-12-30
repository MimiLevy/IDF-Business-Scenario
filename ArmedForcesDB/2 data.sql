/*
Sample Data:
Ron, Aviad, 54876373-2, 01/01/2000, Caesarea, 01/03/2021, Air Force, sergeant 95
Shachar, Dotan, 85274136-9, 16/08/2001, Jerusalem, 01/10/2020, Navy, lieutenant colonel, 111
Osher, Sharon, 95135778-2, 04/05/1996, Tel-Aviv, 01/04/2017, Ground Force, sergeant, 79
Yoni, Tamari, 24863570-5, 23/11/1999, Jerusalem, 01/12/2018, Air Force, lieutenant general, 139
Shai, Ben Zeev, 93185378-1, 13/09/2001, Netanya, 01/01/2020, Air Force, sergeant, 120
Dory, Lavie, 16834952-7, 28/10/2004, Haifa, 01/12/2021, Navy, brigadier general, 118
*/
use ArmedForcesDB
go
delete ArmedForces
set dateformat dmy
go
insert ArmedForces(SoldierFirstName,SoldierLastName,SSN,DateOfBirth,PlaceOfResidence,DateOfEnlistment,ServiceUnit,ServiceRank,IQLevel)
select 'Ron', 'Aviad', '54876373-2', '01/01/2000', 'Caesarea', '01/03/2021', 'Air Force', 'sergeant', 95
union select 'Shachar', 'Dotan', '85274136-9', '16/08/2001', 'Jerusalem', '01/10/2020', 'Navy', 'lieutenant colonel', 111
union select 'Osher', 'Sharon', '95135778-2', '04/05/1996', 'Tel-Aviv', '01/04/2017', 'Ground Force', 'sergeant', 79
union select 'Yoni', 'Tamari', '24863570-5', '23/11/1999', 'Jerusalem', '01/12/2018', 'Air Force', 'lieutenant general', 139
union select 'Shai', 'Ben Zeev', '93185378-1', '13/09/2001', 'Netanya', '01/01/2020', 'Air Force', 'sergeant', 120
union select 'Dory', 'Lavie', '16834952-7', '28/10/2004', 'Haifa', '01/12/2021', 'Navy', 'brigadier general', 118
go
select * from ArmedForces