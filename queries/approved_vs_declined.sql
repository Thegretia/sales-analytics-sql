--Ventes approuvees vs refusees par mois
SELECT 
     DATE_FORMAT(trans_date,"%Y-%m") AS month,
     COUNT(*) AS total_transactions,
     SUM(CASE WHEN state ="approved" THEN 1 ELSE 0 END) AS approved_count,
     SUM(CASE WHEN state ="declined" THEN 1 ELSE 0 END) AS declined_count,
     SUM(CASE WHEN state="approved" THEN amount ELSE 0 END) AS approved_amount,
     SUM(CASE WHEN state ="declined" THEN amount ELSE 0 END) AS declined_amount
     
FROM transactions
GROUP BY DATE_FORMAT(trans_date,"%Y-%m")
ORDER BY month;
