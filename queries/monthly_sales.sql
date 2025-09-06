--Ventes totales par mois de toutes les transactions 
--Requete temporelle(par mois)
SELECT 
    DATE_FORMAT(trans_date, "%Y-%m") AS month,--Selectionne l'annee et le mois des transactions effectue (d'ou le format "%Y-%m) et les mets dans la colonne month
    COUNT(*) AS total_transactions,--Compte toutes les transactions pour chaque annee-mois et les mets dans la colonne total_transactions    
    SUM(amount) AS total_amount-- Somme toutes les montants de toutes les transactions de chaque annee-mois et les mets dans la colonne total_amount
FROM transactions--Depuis la table transactions
GROUP BY DATE_FORMAT(trans_date, "%Y-%m")--Regroupe par annee-mois
ORDER BY month;--Classe chronologiquement
    
