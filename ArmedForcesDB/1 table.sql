use ArmedForcesDB
go
drop table if exists ArmedForces
go
create table dbo.ArmedForces(
    ArmedForcesId int not null identity primary key,
    SoldierFirstName varchar(30) not null constraint ck_ArmedForces_first_name_cannot_be_blank check(SoldierFirstName > ''),
    SoldierLastName varchar(30) not null constraint ck_ArmedForces_last_name_cannot_be_blank check(SoldierLastName > ''),
    SSN varchar(10) not null constraint ck_ArmedForces_ssn_must_be_8_digits_followed_by_dash_and_1_digit check(SSN like replicate('[0-9]',8) + '-[0-9]'),
    DateOfBirth date not null,
    PlaceOfResidence varchar(50) not null constraint ck_ArmedForces_place_of_residence_cannot_be_blank check(PlaceOfResidence > ''),
    DateOfEnlistment date not null constraint ck_ArmedForces_date_of_enlistment_cannot_be_in_future check(DateOfEnlistment <= getdate()),
    ServiceUnit varchar(12) not null constraint ck_ArmedForces_service_unit_must_be_navy_or_ground_force_or_air_force check(ServiceUnit in('navy','ground force','air force')),
    ServiceRank varchar(50) not null constraint ck_ArmedForces_service_rank_cannot_be_blank check(ServiceRank > ''),
    IQLevel smallint not null constraint ck_ArmedForces_iq_level_must_be_greater_than_0 check(IQLevel > 0),
    AgeAtEnlistment as 
        case 
            when month(DateOfBirth) > month(DateOfEnlistment) 
                or (month(DateOfBirth) = month(DateOfEnlistment) and day(DateOfBirth) > day(DateOfEnlistment)) then datediff(year,DateOfBirth,DateOfEnlistment) - 1
            else datediff(year,DateOfBirth,DateOfEnlistment)
        end persisted 
        constraint ck_ArmedForces_soldier_must_be_minimum_17_years_old_at_enlistment check(AgeAtEnlistment >= 17),
    constraint u_ArmedForces_first_name_last_name_ssn unique(SoldierFirstName,SoldierLastName,SSN)
)
go