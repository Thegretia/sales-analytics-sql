-- Top produits par montant de ventes
-- Agregation par produit

SELECT
product, --selectionne le produit
COUNT(*) AS total_transactions, --compte toutes les transactions de chaque produit et le met dans la colonne total_transactions
SUM(amount) AS total_amount, --Somme le montant de total de chaque produit et le met dans la colonne total_amount 
SUM(CASE WHEN state ="approved" THEN 1 ELSE 0 END) AS approved_amount --Somme le nombre de transactions approved et le met dans la colonne approved_amount
FROM transactions --Depuis la table transactions
GROUP BY product --Regroupe par produit
ORDER BY total_amount DESC;-- classe par montant total decroissant
