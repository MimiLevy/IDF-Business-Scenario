/*table sketch
    ArmedForces
        ArmedForcesId not null identity pk
        SoldierFirstName not null not blank
        SoldierLastName not null not blank
        SSN not null must be 9 or 10 digits
        DateOfBirth not null
        PlaceOfResidence not null not blank
        DateOfEnlistment not null <= today
        ServiceUnit not null must be in(navy, ground force, air force)
        ServiceRank not null not blank
        IQLevel not null must be > 0
        AgeAtEnlistment DateOfBirth - DateOfEnlistment AgeAtEnlistment >= 17

    constraints
        SoldierFirstName, SoldierLastName, SSN, DateOfBirth must be unique
*/