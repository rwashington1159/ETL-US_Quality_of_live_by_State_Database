-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/k71TIH



CREATE TABLE "state" (
    "state_id" integer NOT NULL,
    "state_abr" varchar(2)   NOT NULL,
    "state_name" varchar(30)   NOT NULL,
    "lifeQualityRank" integer   NOT NULL,
    "healthCareRank" integer   NOT NULL,
    "educationRank" integer   NOT NULL,
    "economyRank" integer   NOT NULL,
    CONSTRAINT "pk_state" PRIMARY KEY ("state_id")
);

CREATE TABLE "housing" (
    "state_id" integer   NOT NULL,
    "date" date   NOT NULL,
    "MedianListingPricePerSqft_AllHomes" integer   NOT NULL,
    "MedianRentalPricePerSqft_AllHomes" integer   NOT NULL,
    "PctOfHomesDecreasingInValues_AllHomes" float   NOT NULL,
    "PctOfHomesIncreasingInValues_AllHomes" float   NOT NULL
);


CREATE TABLE "income" (
    "state_id" integer   NOT NULL,
    "household_income" float   NOT NULL,
    "year" integer   NOT NULL
);


CREATE TABLE "crime" (
    "state_id" integer   NOT NULL,
    "year" integer   NOT NULL,
    "crime_rate_per_100000" float   NOT NULL,
    "CPOPARST" float   NOT NULL,
    "CPOPCRIM" float   NOT NULL,
    "AG_ARRST" float   NOT NULL,
    "AG_OFF" float   NOT NULL,
    "COVIND" float   NOT NULL,
    "INDEX" float   NOT NULL,
    "MODINDX" float   NOT NULL,
    "MURDER" float   NOT NULL,
    "RAPE" float   NOT NULL,
    "ROBBERY" float   NOT NULL,
    "AGASSLT" float   NOT NULL,
    "BURGLRY" float   NOT NULL,
    "LARCENY" float   NOT NULL,
    "MVTHEFT" float   NOT NULL,
    "ARSON" float   NOT NULL,
    "population" float   NOT NULL,
    "FIPS_ST" float   NOT NULL,
    "FIPS_CTY" float   NOT NULL
);

CREATE TABLE "public_schools" (
    "state_id" integer   NOT NULL,
    "City" varchar   NOT NULL,
    "SchoolName" varchar   NOT NULL,
    "Address" varchar   NOT NULL,
    "Zip" integer   NOT NULL,
    "X" float   NOT NULL,
    "Y" float   NOT NULL,
    "DistrictID" integer   NOT NULL,
    "StartGrade" varchar   NOT NULL,
    "EndGrade" varchar   NOT NULL
);

CREATE TABLE "hospitals" (
    "state_id" integer   NOT NULL,
    "name" varchar   NOT NULL,
    "address" varchar   NOT NULL,
    "city" varchar(30)   NOT NULL,
    "zip" integer   NOT NULL,
    "website" varchar   NOT NULL,
    "owner" varchar(30)   NOT NULL,
    "raiting" float   NOT NULL
);

CREATE TABLE "unemployment" (
    "state_id" integer   NOT NULL,
    "regionCode" int   NOT NULL,
    "regionName" varchar   NOT NULL,
    "year" float   NOT NULL
);

CREATE TABLE "min_wage" (
    "state_id" integer   NOT NULL,
    "Year" integer   NOT NULL,
    "min_wage" float   NOT NULL
);

ALTER TABLE "housing" ADD CONSTRAINT "fk_housing_state_id" FOREIGN KEY("state_id")
REFERENCES "state" ("state_id");

ALTER TABLE "income" ADD CONSTRAINT "fk_income_state_id" FOREIGN KEY("state_id")
REFERENCES "state" ("state_id");

ALTER TABLE "crime" ADD CONSTRAINT "fk_crime_state_id" FOREIGN KEY("state_id")
REFERENCES "state" ("state_id");

ALTER TABLE "public_schools" ADD CONSTRAINT "fk_public_schools_state_id" FOREIGN KEY("state_id")
REFERENCES "state" ("state_id");

ALTER TABLE "hospitals" ADD CONSTRAINT "fk_hospitals_state_id" FOREIGN KEY("state_id")
REFERENCES "state" ("state_id");

ALTER TABLE "unemployment" ADD CONSTRAINT "fk_unemployment_state_id" FOREIGN KEY("state_id")
REFERENCES "state" ("state_id");

ALTER TABLE "min_wage" ADD CONSTRAINT "fk_min_wage_state_id" FOREIGN KEY("state_id")
REFERENCES "state" ("state_id");
