INSERT INTO `t_warehouses`
(`warehouse_code`, `warehouse_name`, `address`, `manager_name`, `contact_email`, `contact_phone`, `status`)
VALUES
    ('WH001', 'North Distribution Center', JSON_OBJECT('street', '123 Elm St', 'city', 'Casablanca', 'zip', '20200'), 'Ahmed Benali', 'ahmed.benali@example.com', '+212600000001', 'ACTIVE'),
    ('WH002', 'South Storage Hub', JSON_OBJECT('street', '456 Oak Ave', 'city', 'Marrakech', 'zip', '40000'), 'Fatima Zahra', 'fatima.zahra@example.com', '+212600000002', 'ACTIVE'),
    ('WH003', 'East Logistics Point', JSON_OBJECT('street', '789 Pine Rd', 'city', 'Fes', 'zip', '30000'), 'Youssef Idrissi', 'youssef.idrissi@example.com', '+212600000003', 'INACTIVE'),
    ('WH004', 'West Transit Facility', JSON_OBJECT('street', '321 Maple Blvd', 'city', 'Rabat', 'zip', '10000'), 'Khadija Lahlou', 'khadija.lahlou@example.com', '+212600000004', 'ACTIVE'),
    ('WH005', 'Central Dispatch', JSON_OBJECT('street', '654 Cedar Ln', 'city', 'Tangier', 'zip', '90000'), 'Omar Chafai', 'omar.chafai@example.com', '+212600000005', 'ACTIVE'),
    ('WH006', 'Backup Warehouse', JSON_OBJECT('street', '987 Birch Way', 'city', 'Agadir', 'zip', '80000'), 'Salma Rami', 'salma.rami@example.com', '+212600000006', 'INACTIVE');