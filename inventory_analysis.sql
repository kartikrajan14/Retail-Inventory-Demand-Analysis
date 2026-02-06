--counting the rows in cleaned_retail_inventory
SELECT COUNT(*) AS total_rows
from cleaned_retail_inventory;

--checking contents of table cleaned_retail_inventory
select*from cleaned_retail_inventory

--comparison of total units sold per category
SELECT
Category,
    SUM(Units_Sold) AS total_units_sold
FROM cleaned_retail_inventory
GROUP BY Category
ORDER BY total_units_sold DESC;

--comparison of stockout risk per category
SELECT
    Category,
    AVG(CAST(Stockout_Risk AS FLOAT)) AS stockout_risk_rate
FROM cleaned_retail_inventory
GROUP BY Category
ORDER BY stockout_risk_rate DESC;

--comparison of average absolute forecast error per category
SELECT
    category,
    AVG(Abs_Forecast_Error) AS avg_forecast_error
FROM cleaned_retail_inventory
GROUP BY Category
ORDER BY avg_forecast_error DESC;

--comparing the average total units sold with and without discount
SELECT
    Discount_Flag,
    AVG(Units_Sold) AS avg_units_sold
FROM cleaned_retail_inventory
GROUP BY Discount_Flag;

--comparing hte total unit sold per region
SELECT
    Region,
    SUM(Units_Sold) AS total_units_sold
FROM cleaned_retail_inventory
GROUP BY Region
ORDER BY total_units_sold DESC;
