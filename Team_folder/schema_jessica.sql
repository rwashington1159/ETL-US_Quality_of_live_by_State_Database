-- Delete table if exists
DROP TABLE IF EXISTS state;
DROP TABLE IF EXISTS public_schools;

-- Create new table state
CREATE TABLE state (
	state_id INT PRIMARY KEY,
	state_abr VARCHAR(2) NOT NULL,
	state_name VARCHAR(30) NOT NULL,
	"lifeQualityRank" INT NOT NULL,
	"healthCareRank" INT NOT NULL,
	"educationRank" INT NOT NULL,
	"economyRank" INT NOT NULL
);

-- Create new table state
CREATE TABLE public_schools(
	state_id INT,
	"City" VARCHAR NOT NULL,
	"SchoolName" VARCHAR NOT NULL,
	"Address" VARCHAR NOT NULL,
	"Zip" integer NOT NULL,
	"X" float NOT NULL,
	"Y" float NOT NULL,
	"DistrictID" INT NOT NULL,
	"StartGrade" VARCHAR NOT NULL,
	"EndGrade" VARCHAR NOT NULL,
	FOREIGN KEY (state_id) REFERENCES state(state_id)
);


-- Verify successful data import
SELECT * FROM state;
SELECT * FROM public_schools;