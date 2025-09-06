--Ventes approuvees vs refusees par mois
SELECT
     DATE_FORMAT(trans_date,"%Y-%m") AS month,--Selectionne les transactions par annee-mois (d'ou le format "%Y-%m") et les mets dans la colonne month 
     COUNT(*) AS total_transactions,--Compte toutes les transactions par annee-mois et les mets dans la colonne total_transactions
     SUM(CASE WHEN state ="approved" THEN 1 ELSE 0 END) AS approved_count,--Compte le nombres de transactions approved par annee-mois et les mets dans la colonne approved_count
     SUM(CASE WHEN state ="declined" THEN 1 ELSE 0 END) AS declined_count,--Compte le nombres de transactions declined par annee-mois et les mets dans la colonne declined_count
     SUM(CASE WHEN state="approved" THEN amount ELSE 0 END) AS approved_amount,--Somme le montant total de transactions approved par annee-mois et les mets dans la colonne approved_amount
     SUM(CASE WHEN state ="declined" THEN amount ELSE 0 END) AS declined_amount--Somme le montant total de transactions declined par annee-mois et les mets dans la colonne declined_amount     
FROM transactions--Depuis la table transactions
GROUP BY DATE_FORMAT(trans_date,"%Y-%m")--Regroupe par annee-mois
ORDER BY month;--Classe chronologiquement
