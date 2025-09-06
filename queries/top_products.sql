SELECT
product,
COUNT(*) AS total_transactions,
SUM(amount) AS total_amount,
SUM(CASE WHEN state ="approved" THEN 1 ELSE 0 END) AS approved_amount
FROM transactions
GROUP BY product
ORDER BY total_amount DESC;
