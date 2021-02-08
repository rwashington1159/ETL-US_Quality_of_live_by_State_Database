drop table if exists housing;
drop table if exists income;

-- table schema

create table housing (
    Date date not null,
    State varchar(30) not null,
	MedianListingPricePerSqft_AllHomes float not null,
	MedianRentalPricePerSqft_AllHomes float not null,
	PctOfHomesDecreasingInValues_AllHomes float not null,
	PctOfHomesIncreasingInValues_AllHomes float not null
);

create table income (
    State varchar(30) not null,
	household_income_2015 integer not null
);




