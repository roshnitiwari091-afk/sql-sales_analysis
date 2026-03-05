SELECT 
    segment,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(SUM(profit)/SUM(sales)*100,2) AS profit_margin
FROM orders
GROUP BY segment
ORDER BY total_sales DESC;
