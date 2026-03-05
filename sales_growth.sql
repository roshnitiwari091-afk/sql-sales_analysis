SELECT 
    EXTRACT(YEAR FROM order_date) AS year,
    SUM(sales) AS total_sales
FROM orders
GROUP BY year
ORDER BY year;
