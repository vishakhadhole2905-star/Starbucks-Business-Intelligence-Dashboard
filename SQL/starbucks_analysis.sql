1. View the Dataset
SELECT *
FROM starbucks;


2. Total Number of Beverages
SELECT COUNT(*) AS Total_Drinks
FROM starbucks;


3. Average Calories
SELECT ROUND(AVG(Calories), 2) AS Average_Calories
FROM starbucks;


4. Average Sugar, Protein and Caffeine
SELECT
ROUND(AVG(Sugars),2) AS Avg_Sugar,
ROUND(AVG(Protein),2) AS Avg_Protein,
ROUND(AVG(Caffeine),2) AS Avg_Caffeine
FROM starbucks;


5. Top 10 Highest Calorie Drinks
SELECT Beverage,
Calories
FROM starbucks
ORDER BY Calories DESC
LIMIT 10;


6. Top 10 Highest Caffeine Drinks
SELECT Beverage,
Caffeine
FROM starbucks
ORDER BY Caffeine DESC
LIMIT 10;


7. Average Calories by Beverage Category
SELECT
Beverage_category,
ROUND(AVG(Calories),2) AS Avg_Calories
FROM starbucks
GROUP BY Beverage_category
ORDER BY Avg_Calories DESC;


8. Average Sugar by Category
SELECT
Beverage_category,
ROUND(AVG(Sugars),2) AS Avg_Sugar
FROM starbucks
GROUP BY Beverage_category
ORDER BY Avg_Sugar DESC;


9. Average Protein by Category
SELECT
Beverage_category,
ROUND(AVG(Protein),2) AS Avg_Protein
FROM starbucks
GROUP BY Beverage_category
ORDER BY Avg_Protein DESC;


10. Beverage Count by Category
SELECT
Beverage_category,
COUNT(*) AS Total_Drinks
FROM starbucks
GROUP BY Beverage_category
ORDER BY Total_Drinks DESC;


11. Highest Calorie Drink in Each Category
SELECT
Beverage_category,
MAX(Calories) AS Highest_Calories
FROM starbucks
GROUP BY Beverage_category;


12. Lowest Calorie Drinks
SELECT Beverage,
Calories
FROM starbucks
ORDER BY Calories ASC
LIMIT 10;


13. Drinks with High Protein
SELECT
Beverage,
Protein
FROM starbucks
WHERE Protein >= 10
ORDER BY Protein DESC;


14. Drinks with Zero Sugar
SELECT
Beverage,
Sugars
FROM starbucks
WHERE Sugars = 0;


15. Business Summary Query
SELECT
COUNT(*) AS Total_Drinks,
ROUND(AVG(Calories),2) AS Avg_Calories,
ROUND(AVG(Sugars),2) AS Avg_Sugar,
ROUND(AVG(Protein),2) AS Avg_Protein,
ROUND(AVG(Caffeine),2) AS Avg_Caffeine
FROM starbucks;


If you're using PostgreSQL

Before running these queries, create the table and import the CSV.

CREATE TABLE starbucks (
    Beverage_category TEXT,
    Beverage TEXT,
    Beverage_prep TEXT,
    Calories INT,
    Total_Fat NUMERIC,
    Trans_Fat NUMERIC,
    Saturated_Fat NUMERIC,
    Sodium INT,
    Total_Carbohydrates INT,
    Cholesterol INT,
    Dietary_Fibre INT,
    Sugars INT,
    Protein INT,
    Vitamin_A INT,
    Vitamin_C INT,
    Calcium INT,
    Iron INT,
    Caffeine INT
);