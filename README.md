# Paris-2024-Data-Visualisation-Project

![Paris 2024 Olympics Dashboard](https://github.com/AhmetBerkeKrc/Paris-2024-Data-Visualisation-Project/blob/main/tableau/paris_dashboard.png)  
This project provides a comprehensive analysis of the Paris 2024 Olympics using a dashboard to visualize key metrics and insights. The analysis includes top-performing countries, athletes, and various statistics related to medal counts, athlete demographics, and more.Since the dataset I found is quite large, I only used the tables that are relevant to my analysis; depending on the project you're building, additional tables can be added. Furthermore, I intend to add a page in the future where event results will be included and interactively analyzed; therefore, I didn't use all the tables I manipulated with SQL in Tableau, but rather prepared them for future project developments.

## Project Overview  
The main goals of this project are:  
1. **Data Extraction and SQL Manipulation**:  
   - Used SQL to extract and manipulate data from various CSV files related to the Paris 2024 Olympics dataset.  
2. **Data Cleaning and Transformation**:  
   - Cleaned and transformed the data to ensure it was ready for analysis, including handling missing values and formatting dates.  
3. **Dashboard Creation**:  
   - Created an interactive Tableau dashboard showcasing the following:
     - Top 10 countries and athletes
     - Medal counts by country
     - Athlete age distribution and gender percentages

## Dataset Description  
The dataset for this project was sourced from [Kaggle - Paris 2024 Olympic Summer Games](https://www.kaggle.com/datasets/piterfm/paris-2024-olympic-summer-games). The dataset contains multiple CSV files, each representing a different aspect of the Olympics data. The following tables are included:

- **athletes.csv**: Contains information about athletes including name, country, event, and more.  
- **events.csv**: Contains data on the events held during the Olympics.  
- **medallists.csv**: Contains information about athletes who won medals, including event, medal type, and etc.  
- **medals_total.csv**: Contains total medal counts by country.  
- **teams.csv**: Contains details about the teams participating in the Olympics.  

## Tools Used  
- **PostgreSQL**:  
  The project is implemented in PostgreSQL, where all the data cleaning and SQL queries were executed.  
- **Tableau**:  
  Tableau was used for visualizing the data and creating an interactive dashboard.

## Skills Practiced  
- **SQL Queries**: Writing complex SQL queries to clean and analyze data.  
- **Data Visualization**: Creating an interactive dashboard using Tableau.  
- **Data Cleaning**: Preparing and transforming data for analysis.

## Acknowledgments  
The dataset was obtained from 👉 [Kaggle - Paris 2024 Olympic Summer Games](https://www.kaggle.com/datasets/piterfm/paris-2024-olympic-summer-games). Maybe, you can use the whole dataset provided in your own project.

## Note  
1) Since I found the original dataset too detailed for my purpose in the project, I used SQL to manipulate and refine the data. Just in case, both the raw data and the newly extracted data (after my SQL manipulations) are provided within the data file.

2) I have also uploaded my dashboard and Paris 2024 Olympics-related visualizations as PNG files into the [tableau file](tableau)
) workbook. You can easily access them.

3) Lastly, if you want to explore the dashboard interactively, you can visit my Tableau 👉 [profile](https://public.tableau.com/app/profile/ahmet.berke.karaca/viz/Paris2024_17368112108000/Dashboard2).

