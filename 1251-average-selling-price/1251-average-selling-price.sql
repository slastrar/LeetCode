# Write your MySQL query statement below
Select
    P.product_id,
    COALESCE(ROUND(SUM(U.units*P.price)/SUM(U.units),2),0) as average_price
FROM Prices P
left join UnitsSold U
On P.product_id= U.product_id
AND U.purchase_date BETWEEN P.start_date and P.end_date
GROUP BY P.product_id