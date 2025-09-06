--Ventes totales par mois de toutes les transactions 

SELECT 
    DATE_FORMAT(trans_date, "%Y-%m) AS month,
    COUNT (*) AS total_transactions,
    SUM (amount) AS total_amount,
FROM transactions
GROUP BY DATE_FORMAT(trans_date, "%Y-%m")
ORDER BY month;
    
