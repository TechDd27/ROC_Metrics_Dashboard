-- Daily shipments per region
SELECT 
    Date,
    Region,
    COUNT(*) AS Total_Shipments,
    SUM(CASE WHEN Delay_Hours = 0 THEN 1 ELSE 0 END) AS OnTime_Deliveries,
    AVG(Delay_Hours) AS Avg_Delay_Hours
FROM shipments
GROUP BY Date, Region
ORDER BY Date, Region;

-- Staff-level performance
SELECT 
    Delivery_Staff,
    Region,
    COUNT(*) AS Total_Shipments,
    SUM(CASE WHEN Delay_Hours = 0 THEN 1 ELSE 0 END) AS OnTime_Deliveries,
    AVG(Delay_Hours) AS Avg_Delay_Hours
FROM shipments
GROUP BY Delivery_Staff, Region
ORDER BY Delivery_Staff;
