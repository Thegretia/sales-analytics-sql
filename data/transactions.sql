--creation de la table Transactions

CREATE TABLE Transactions(
  id INTEGER PRIMARY KEY,
  trans_date DATE,
  country VARCHAR(50),
  Product VARCHAR (100),
  amount DECIMAL (10,2),
  state VARCHAR(20) -- "approuver" ou "decliner"
  );

-- Insertion de données fictives
INSERT INTO Transactions (id, trans_date, country, product, amount, state) VALUES
(1,  '2025-01-05', 'Cameroun',   'Laptop',     1200.00, 'approved'),
(2,  '2025-01-07', 'Cameroun',   'Smartphone',  800.00, 'declined'),
(3,  '2025-01-12', 'Benin',   'Tablet',      450.00, 'approved'),
(4,  '2025-01-20', 'Algerie',      'Headphones',  150.00, 'approved'),
(5,  '2025-01-25', 'Benin',   'Laptop',     1300.00, 'declined'),
(6,  '2025-02-02', 'Cameroun',   'Smartwatch',  300.00, 'approved'),
(7,  '2025-02-05', 'Algerie',      'Laptop',     1100.00, 'approved'),
(8,  '2025-02-10', 'Cameroun',   'Tablet',      500.00, 'approved'),
(9,  '2025-02-15', 'Benin',   'Smartphone',  750.00, 'declined'),
(10, '2025-02-20', 'Algerie',      'Laptop',     1250.00, 'approved'),
(11, '2025-03-01', 'Cameroun',   'Headphones',  180.00, 'approved'),
(12, '2025-03-03', 'Benin',   'Smartphone',  900.00, 'approved'),
(13, '2025-03-06', 'Algerie',      'Smartwatch',  320.00, 'declined'),
(14, '2025-03-10', 'Cameroun',   'Tablet',      480.00, 'approved'),
(15, '2025-03-15', 'Algerie',      'Laptop',     1350.00, 'approved'),
(16, '2025-03-18', 'Benin',   'Headphones',  160.00, 'approved'),
(17, '2025-03-22', 'Cameroun',   'Smartphone',  850.00, 'declined'),
(18, '2025-03-25', 'Algerie',      'Tablet',      520.00, 'approved'),
(19, '2025-03-28', 'Benin',   'Laptop',     1400.00, 'approved'),
(20, '2025-03-30', 'Cameroun',   'Smartwatch',  310.00, 'approved');
