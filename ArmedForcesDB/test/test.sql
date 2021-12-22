-- Checking blanks
insert ArmedForces(SoldierFirstName,SoldierLastName,SSN,DateOfBirth,PlaceOfResidence,DateOfEnlistment,ServiceUnit,ServiceRank,IQLevel)
select '', 'Major', '123456789', '2000-10-01', 'London', '2020-01-01', 'air force', 'major general', 150
insert ArmedForces(SoldierFirstName,SoldierLastName,SSN,DateOfBirth,PlaceOfResidence,DateOfEnlistment,ServiceUnit,ServiceRank,IQLevel)
select 'John', '', '123456789', '2000-10-01', 'London', '2020-01-01', 'air force', 'major general', 150
insert ArmedForces(SoldierFirstName,SoldierLastName,SSN,DateOfBirth,PlaceOfResidence,DateOfEnlistment,ServiceUnit,ServiceRank,IQLevel)
select 'John', 'Major', '', '2000-10-01', 'London', '2020-01-01', 'air force', 'major general', 150
insert ArmedForces(SoldierFirstName,SoldierLastName,SSN,DateOfBirth,PlaceOfResidence,DateOfEnlistment,ServiceUnit,ServiceRank,IQLevel)
select 'John', 'Major', '123456789', '2000-10-01', '', '2020-01-01', 'air force', 'major general', 150
insert ArmedForces(SoldierFirstName,SoldierLastName,SSN,DateOfBirth,PlaceOfResidence,DateOfEnlistment,ServiceUnit,ServiceRank,IQLevel)
select 'John', 'Major', '123456789', '2000-10-01', 'London', '2020-01-01', '', 'major general', 150
insert ArmedForces(SoldierFirstName,SoldierLastName,SSN,DateOfBirth,PlaceOfResidence,DateOfEnlistment,ServiceUnit,ServiceRank,IQLevel)
select 'John', 'Major', '123456789', '2000-10-01', 'London', '2020-01-01', 'air force', '', 150
-- Checking nulls
insert ArmedForces(SoldierFirstName,SoldierLastName,SSN,DateOfBirth,PlaceOfResidence,DateOfEnlistment,ServiceUnit,ServiceRank,IQLevel)
select null, 'Major', '123456789', '2000-10-01', 'London', '2020-01-01', 'air force', 'major general', 150
insert ArmedForces(SoldierFirstName,SoldierLastName,SSN,DateOfBirth,PlaceOfResidence,DateOfEnlistment,ServiceUnit,ServiceRank,IQLevel)
select 'John', null, '123456789', '2000-10-01', 'London', '2020-01-01', 'air force', 'major general', 150
insert ArmedForces(SoldierFirstName,SoldierLastName,SSN,DateOfBirth,PlaceOfResidence,DateOfEnlistment,ServiceUnit,ServiceRank,IQLevel)
select 'John', 'Major', null, '2000-10-01', 'London', '2020-01-01', 'air force', 'major general', 150
insert ArmedForces(SoldierFirstName,SoldierLastName,SSN,DateOfBirth,PlaceOfResidence,DateOfEnlistment,ServiceUnit,ServiceRank,IQLevel)
select 'John', 'Major', '123456789', null, 'London', '2020-01-01', 'air force', 'major general', 150
insert ArmedForces(SoldierFirstName,SoldierLastName,SSN,DateOfBirth,PlaceOfResidence,DateOfEnlistment,ServiceUnit,ServiceRank,IQLevel)
select 'John', 'Major', '123456789', '2000-10-01', null, '2020-01-01', 'air force', 'major general', 150
insert ArmedForces(SoldierFirstName,SoldierLastName,SSN,DateOfBirth,PlaceOfResidence,DateOfEnlistment,ServiceUnit,ServiceRank,IQLevel)
select 'John', 'Major', '123456789', '2000-10-01', 'London', null, 'air force', 'major general', 150
insert ArmedForces(SoldierFirstName,SoldierLastName,SSN,DateOfBirth,PlaceOfResidence,DateOfEnlistment,ServiceUnit,ServiceRank,IQLevel)
select 'John', 'Major', '123456789', '2000-10-01', 'London', '2020-01-01', null, 'major general', 150
insert ArmedForces(SoldierFirstName,SoldierLastName,SSN,DateOfBirth,PlaceOfResidence,DateOfEnlistment,ServiceUnit,ServiceRank,IQLevel)
select 'John', 'Major', '123456789', '2000-10-01', 'London', '2020-01-01', 'air force', null, 150
insert ArmedForces(SoldierFirstName,SoldierLastName,SSN,DateOfBirth,PlaceOfResidence,DateOfEnlistment,ServiceUnit,ServiceRank,IQLevel)
select 'John', 'Major', '123456789', '2000-10-01', 'London', '2020-01-01', 'air force', 'major general', null
-- Checking wrong ssn
insert ArmedForces(SoldierFirstName,SoldierLastName,SSN,DateOfBirth,PlaceOfResidence,DateOfEnlistment,ServiceUnit,ServiceRank,IQLevel)
select 'John', 'Major', '12345678901', '2000-10-01', 'London', '2020-01-01', 'air force', 'major general', 150
insert ArmedForces(SoldierFirstName,SoldierLastName,SSN,DateOfBirth,PlaceOfResidence,DateOfEnlistment,ServiceUnit,ServiceRank,IQLevel)
select 'John', 'Major', '12345678', '2000-10-01', 'London', '2020-01-01', 'air force', 'major general', 150
-- Checking wrong dates
insert ArmedForces(SoldierFirstName,SoldierLastName,SSN,DateOfBirth,PlaceOfResidence,DateOfEnlistment,ServiceUnit,ServiceRank,IQLevel)
select 'John', 'Major', '123456789', '2000-10-01', 'London', '2017-09-01', 'air force', 'major general', 150
insert ArmedForces(SoldierFirstName,SoldierLastName,SSN,DateOfBirth,PlaceOfResidence,DateOfEnlistment,ServiceUnit,ServiceRank,IQLevel)
select 'John', 'Major', '123456789', '2000-10-01', 'London', '2022-01-01', 'air force', 'major general', 150
insert ArmedForces(SoldierFirstName,SoldierLastName,SSN,DateOfBirth,PlaceOfResidence,DateOfEnlistment,ServiceUnit,ServiceRank,IQLevel)
select 'John', 'Major', '123456789', '2019-10-01', 'London', '2000-01-01', 'air force', 'major general', 150
-- Checking negative iq
insert ArmedForces(SoldierFirstName,SoldierLastName,SSN,DateOfBirth,PlaceOfResidence,DateOfEnlistment,ServiceUnit,ServiceRank,IQLevel)
select 'John', 'Major', '123456789', '2000-10-01', 'London', '2020-01-01', 'air force', 'major general', 0
insert ArmedForces(SoldierFirstName,SoldierLastName,SSN,DateOfBirth,PlaceOfResidence,DateOfEnlistment,ServiceUnit,ServiceRank,IQLevel)
select 'John', 'Major', '123456789', '2000-10-01', 'London', '2020-01-01', 'air force', 'major general', -1
-- checking wrong service unit
insert ArmedForces(SoldierFirstName,SoldierLastName,SSN,DateOfBirth,PlaceOfResidence,DateOfEnlistment,ServiceUnit,ServiceRank,IQLevel)
select 'John', 'Major', '123456789', '2000-10-01', 'London', '2020-01-01', 'any', 'major general', 150
-- Checking unique
-- First set should pass
insert ArmedForces(SoldierFirstName,SoldierLastName,SSN,DateOfBirth,PlaceOfResidence,DateOfEnlistment,ServiceUnit,ServiceRank,IQLevel)
select 'John', 'Major', '123456789', '2000-10-01', 'London', '2020-01-01', 'air force', 'major general', 150
insert ArmedForces(SoldierFirstName,SoldierLastName,SSN,DateOfBirth,PlaceOfResidence,DateOfEnlistment,ServiceUnit,ServiceRank,IQLevel)
select 'Jack', 'Major', '123456789', '2000-10-01', 'London', '2020-01-01', 'air force', 'major general', 150
insert ArmedForces(SoldierFirstName,SoldierLastName,SSN,DateOfBirth,PlaceOfResidence,DateOfEnlistment,ServiceUnit,ServiceRank,IQLevel)
select 'John', 'Joker', '123456789', '2000-10-01', 'London', '2020-01-01', 'air force', 'major general', 150
insert ArmedForces(SoldierFirstName,SoldierLastName,SSN,DateOfBirth,PlaceOfResidence,DateOfEnlistment,ServiceUnit,ServiceRank,IQLevel)
select 'John', 'Major', '123456780', '2000-10-01', 'London', '2020-01-01', 'air force', 'major general', 150
insert ArmedForces(SoldierFirstName,SoldierLastName,SSN,DateOfBirth,PlaceOfResidence,DateOfEnlistment,ServiceUnit,ServiceRank,IQLevel)
select 'John', 'Major', '123456789', '2001-10-01', 'London', '2020-01-01', 'air force', 'major general', 150

-- this should fail
insert ArmedForces(SoldierFirstName,SoldierLastName,SSN,DateOfBirth,PlaceOfResidence,DateOfEnlistment,ServiceUnit,ServiceRank,IQLevel)
select 'John', 'Major', '123456789', '2000-10-01', 'London', '2020-01-01', 'air force', 'major general', 150