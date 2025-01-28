CREATE SCHEMA paris_2024;

SET search_path = paris_2024;

-- teams.csv

CREATE TABLE teams (
	code VARCHAR(17) PRIMARY KEY,
	current BOOLEAN,
	team TEXT,
	team_gender VARCHAR(1),
	country_code VARCHAR(3),
	country TEXT, 
	country_long TEXT,
	discipline TEXT,
	disciplines_code VARCHAR(3),
	events TEXT,
	athletes TEXT,
	coaches TEXT,
	athletes_codes TEXT,
	num_athletes TEXT,
	coaches_codes TEXT,
	num_coaches TEXT
);

COPY teams(
	code,current,team,team_gender,country_code,country,country_long,discipline,disciplines_code,events,athletes,coaches,athletes_codes,num_athletes,coaches_codes,num_coaches
	)
FROM 'C:\Users\HP\Desktop\paris_data\teams.csv'
DELIMITER ','
CSV HEADER
NULL AS '';


-- medallists.csv

CREATE TABLE medallists (
	medal_date DATE,
	medal_type TEXT,
	medal_code FLOAT,
	name TEXT,
	gender TEXT,
	country_code VARCHAR(3),
	country TEXT,
	country_long TEXT,
	nationality_code TEXT,
	nationality TEXT ,
	nationality_long TEXT,
	team text,
	team_gender TEXT,
	discipline TEXT,
	event TEXT,
	event_type TEXT,
	url_event TEXT,
	birth_date DATE,
	code_athlete INTEGER,
	code_team VARCHAR(17),
	is_medallist BOOLEAN
);

COPY medallists(
	medal_date,medal_type,medal_code,name,gender,country_code,country,country_long,nationality_code,nationality,nationality_long,team,team_gender,discipline,event,event_type,url_event,birth_date,code_athlete,code_team,is_medallist
	)
FROM 'C:\Users\HP\Desktop\paris_data\medallists.csv'
DELIMITER ','
CSV HEADER
NULL AS '';



-- events.csv

CREATE TABLE events (
	event TEXT,
	tag TEXT,
	sport TEXT,
	sport_code VARCHAR(3),
	sport_url TEXT
	);


	COPY events(
	event,tag,sport,sport_code,sport_url
	)
FROM 'C:\Users\HP\Desktop\paris_data\events.csv'
DELIMITER ','
CSV HEADER
NULL AS '';

-- athletes.csv

CREATE TABLE athletes (
	code INTEGER,
	current BOOLEAN,
	name TEXT,
	name_short TEXT,
	name_tv TEXT,
	gender TEXT,
	function TEXT,
	country_code VARCHAR(3),
	country TEXT,
	country_long TEXT,
	nationality TEXT,
	nationality_long TEXT,
	nationality_code VARCHAR(3),
	height FLOAT,
	weight FLOAT,
	disciplines TEXT,
	events TEXT,
	birth_date DATE,
	birth_place TEXT,
	birth_country TEXT,
	residence_place TEXT,
	residence_country TEXT,
	nickname TEXT,
	hobbies TEXT,
	occupation TEXT,
	education TEXT,
	family TEXT,
	lang TEXT,
	coach TEXT,
	reason TEXT,
	hero TEXT,
	influence TEXT,
	philosophy TEXT,
	sporting_relatives TEXT,
	ritual TEXT,
	other_sports TEXT			
);


	COPY athletes(
	code,current,name,name_short,name_tv,gender,function,country_code,country,country_long,nationality,
	nationality_long,nationality_code,height,weight,disciplines,events,birth_date,birth_place,birth_country,
	residence_place,residence_country,nickname,hobbies,occupation,education,family,lang,coach,reason,hero,influence,
	philosophy,sporting_relatives,ritual,other_sports				
	)
FROM 'C:\Users\HP\Desktop\paris_data\athletes.csv'
DELIMITER ','
CSV HEADER
NULL AS '';


-- medals_total.csv

CREATE TABLE medals_total (
	country_code VARCHAR(3),
	country TEXT,
	country_long TEXT,
	Gold_Medal INTEGER,
	Silver_Medal INTEGER,
	Bronze_Medal INTEGER,
	Total INTEGER
);


	COPY medals_total(
			country_code,country,country_long,Gold_Medal,Silver_Medal,Bronze_Medal,Total
	)
FROM 'C:\Users\HP\Desktop\paris_data\medals_total.csv'
DELIMITER ','
CSV HEADER
NULL AS '';
