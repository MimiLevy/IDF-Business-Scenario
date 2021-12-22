use ArmedForcesDB
go

select *
from ArmedForces af
order by af.IQLevel desc

select af.SoldierFirstName, af.SoldierLastName, af.DateOfEnlistment, af.AgeAtEnlistment
from ArmedForces af
order by af.AgeAtEnlistment desc

select 
    YearRange = 'Year Range (2017-2019)',
    SoldierDetails = concat(af.SoldierFirstName,' ',af.SoldierLastName,' - ',af.SSN,' (',af.DateOfEnlistment,')'),
    af.ServiceUnit
from ArmedForces af
where year(af.DateOfEnlistment) between 2017 and 2019
union select 
    YearRange = 'Year Range (2020-2022)',
    SoldierDetails = concat(af.SoldierFirstName,' ',af.SoldierLastName,' - ',af.SSN,' (',af.DateOfEnlistment,')'),
    af.ServiceUnit
from ArmedForces af
where year(af.DateOfEnlistment) between 2020 and 2022

select af.ServiceUnit, AvgIqLevel = avg(af.IQLevel)
from ArmedForces af
group by af.ServiceUnit