-- Ventes totales par pays
-- Agregations par pays
SELECT 
country,--Selectionne les pays
COUNT(*) AS total_transactions,--Compte les transactions totales de chaque pays et les mets dans la colonne total_transactions
SUM(amount) AS total_amount,-- Somme le montant total de ventes de chaques pays et les mets dans total_amount
SUM(CASE WHEN state ="approved" THEN 1 ELSE 0 END) AS approved_amount-- Compte le nombre de transactions approved de chaque pays et les mets dans la colonne approved_amount
FROM transactions --Depuis la table transactions
GROUP BY country-- Regroupe par pays
ORDER BY total_amount DESC;-- classez par montant total decroissant pour tous les pays
