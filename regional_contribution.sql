SELECT 
    region,
    SUM(sales) AS total_sales,
    ROUND(
        SUM(sales) * 100.0 / SUM(SUM(sales)) OVER (), 
    2) AS contribution_percentage
FROM orders
GROUP BY region
ORDER BY total_sales DESC;
