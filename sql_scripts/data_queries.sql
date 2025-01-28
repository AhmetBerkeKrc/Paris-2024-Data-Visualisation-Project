-- Athlete numbers per country (saved as Paris_Country-AthleteNums.csv)
WITH female_nums AS (
    SELECT 
        country,
        COUNT(*) AS female_num
    FROM athletes
    WHERE gender = 'Female'
    GROUP BY country
),
male_nums AS (
    SELECT 
        country,
        COUNT(*) AS male_num
    FROM athletes
    WHERE gender = 'Male'
    GROUP BY country
),
country_athlet_nums AS (
	SELECT 
	    COALESCE(m.country, f.country) AS country,
	    COALESCE(m.male_num, 0) AS male_athletes_num,
	    COALESCE(f.female_num, 0) AS female_athletes_num,
		COALESCE(m.male_num, 0) + COALESCE(f.female_num, 0) AS total_athletes_num
	FROM male_nums AS m
	FULL OUTER JOIN female_nums AS f
	    ON m.country = f.country
		)

-- Medals by Countries (saved as Paris_Country-MedalNums.csv)
SELECT 
	DISTINCT(a.country) AS country,
	COALESCE(gold_medal,0) AS gold_medal,
	COALESCE(silver_medal,0) silver_medal, 
	COALESCE(bronze_medal,0) bronze_medal,
	COALESCE(total,0) total_medals
FROM athletes AS a
LEFT JOIN medals_total AS m_t
	ON a.country = m_t.country
GROUP BY DISTINCT(a.country), 
		 COALESCE(gold_medal,0),
		 COALESCE(silver_medal,0),
		 COALESCE(bronze_medal,0),
		 COALESCE(total,0)
ORDER BY total_medals DESC;

-- Medallists (saved as Paris_Medallists.csv)
SELECT 
	name, 
	medal_type,
	gender,
	country,
	event,
	CASE
		WHEN team IS NOT NULL THEN TRUE
		WHEN team IS NULL THEN FALSE
	END AS isteam,
	url_event
FROM medallists
ORDER BY isteam, event, medal_type;

-- Athletes (saved as Paris_Athletes.csv)
SELECT 
    country,
    name,
    birth_date,
    gender,
    REPLACE(REPLACE(disciplines, '[',''),']','')AS disciplines
FROM athletes;

-- Events (saved as Paris_Events.csv)
SELECT 
	event,
	sport,
	sport_url
FROM events;




