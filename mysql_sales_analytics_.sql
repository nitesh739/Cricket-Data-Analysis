CREATE DATABASE IF NOT EXISTS sales_analytics_project;
USE sales_analytics_project;

DROP TABLE IF EXISTS sales_orders;

CREATE TABLE sales_orders (
    order_id VARCHAR(20) PRIMARY KEY,
    order_date DATE NOT NULL,
    customer_name VARCHAR(100) NOT NULL,
    customer_segment VARCHAR(30),
    city VARCHAR(60),
    state VARCHAR(60),
    region VARCHAR(30),
    sales_channel VARCHAR(30),
    product_name VARCHAR(100),
    category VARCHAR(60),
    quantity INT,
    unit_price DECIMAL(12,2),
    discount_percent DECIMAL(5,2),
    sales_amount DECIMAL(12,2),
    cost_amount DECIMAL(12,2),
    profit DECIMAL(12,2),
    payment_method VARCHAR(30),
    order_status VARCHAR(30)
);
INSERT INTO sales_orders (order_id, order_date, customer_name, customer_segment, city, state, region, sales_channel, product_name, category, quantity, unit_price, discount_percent, sales_amount, cost_amount, profit, payment_method, order_status) VALUES
('ORD10002', '2026-02-17', 'Vikram Yadav', 'Small Business', 'Coimbatore', 'Tamil Nadu', 'North', 'Phone Order', 'Mouse', 'Electronics', 2, 2350, 0, 4700.00, 2766.21, 1933.79, 'Wallet', 'Delivered'),
('ORD10003', '2026-08-02', 'Simran Kaur', 'Corporate', 'Amritsar', 'Punjab', 'North', 'Phone Order', 'Notebook Pack', 'Stationery', 3, 550, 0, 1650.00, 1218.59, 431.41, 'UPI', 'Delivered'),
('ORD10004', '2026-08-12', 'Arjun Reddy', 'Corporate', 'Ahmedabad', 'Gujarat', 'South', 'Retail Store', 'Printer', 'Electronics', 2, 13900, 20, 22240.00, 18383.72, 3856.28, 'Cash', 'Delivered'),
('ORD10005', '2026-08-20', 'Neha Kapoor', 'Consumer', 'Amritsar', 'Punjab', 'North', 'Online', 'Mouse', 'Electronics', 5, 1150, 0, 5750.00, 3656.37, 2093.63, 'Cash', 'Returned'),
('ORD10006', '2026-09-13', 'Aarav Sharma', 'Small Business', 'Howrah', 'West Bengal', 'North', 'Phone Order', 'Smartphone', 'Electronics', 2, 44900, 15, 76330.00, 53285.77, 23044.23, 'Wallet', 'Delivered'),
('ORD10007', '2025-10-13', 'Dev Malhotra', 'Corporate', 'Noida', 'Uttar Pradesh', 'West', 'Online', 'T-Shirt', 'Fashion', 5, 1200, 5, 5700.00, 4347.67, 1352.33, 'Wallet', 'Delivered'),
('ORD10008', '2025-10-24', 'Kavya Nair', 'Small Business', 'Gurugram', 'Haryana', 'South', 'Phone Order', 'Laptop', 'Electronics', 5, 62450, 0, 312250.00, 227589.00, 84661.00, 'UPI', 'Delivered'),
('ORD10009', '2025-03-12', 'Kabir Das', 'Corporate', 'Ahmedabad', 'Gujarat', 'East', 'Retail Store', 'Headphones', 'Electronics', 2, 4300, 20, 6880.00, 6525.54, 354.46, 'Cash', 'Delivered'),
('ORD10010', '2025-02-05', 'Kavya Nair', 'Small Business', 'Delhi', 'Delhi', 'South', 'Retail Store', 'Headphones', 'Electronics', 5, 5850, 5, 27787.50, 17293.90, 10493.60, 'UPI', 'Shipped'),
('ORD10011', '2025-02-06', 'Dev Malhotra', 'Consumer', 'Bengaluru', 'Karnataka', 'West', 'Online', 'Desk', 'Furniture', 4, 7000, 10, 25200.00, 16379.65, 8820.35, 'Net Banking', 'Delivered'),
('ORD10012', '2026-06-03', 'Kavya Nair', 'Consumer', 'Bengaluru', 'Karnataka', 'South', 'Phone Order', 'Water Bottle', 'Home & Kitchen', 5, 350, 10, 1575.00, 1301.08, 273.92, 'Debit Card', 'Returned'),
('ORD10013', '2026-04-06', 'Ishaan Mehta', 'Consumer', 'New Delhi', 'Delhi', 'West', 'Online', 'Notebook Pack', 'Stationery', 3, 450, 0, 1350.00, 1045.15, 304.85, 'Cash', 'Processing'),
('ORD10014', '2025-03-28', 'Pooja Mishra', 'Corporate', 'Howrah', 'West Bengal', 'Central', 'Phone Order', 'Keyboard', 'Electronics', 1, 850, 5, 807.50, 601.90, 205.60, 'Credit Card', 'Shipped'),
('ORD10015', '2025-03-18', 'Simran Kaur', 'Corporate', 'Amritsar', 'Punjab', 'North', 'Retail Store', 'Backpack', 'Accessories', 2, 850, 20, 1360.00, 1059.04, 300.96, 'UPI', 'Delivered'),
('ORD10016', '2026-09-07', 'Rohan Gupta', 'Small Business', 'Coimbatore', 'Tamil Nadu', 'North', 'Marketplace', 'Desk', 'Furniture', 3, 11900, 5, 33915.00, 28870.34, 5044.66, 'UPI', 'Delivered'),
('ORD10017', '2025-02-14', 'Meera Roy', 'Small Business', 'Surat', 'Gujarat', 'East', 'Retail Store', 'Notebook Pack', 'Stationery', 1, 500, 15, 425.00, 303.89, 121.11, 'UPI', 'Returned'),
('ORD10018', '2025-08-03', 'Diya Iyer', 'Small Business', 'Udaipur', 'Rajasthan', 'South', 'Online', 'Monitor', 'Electronics', 2, 26750, 10, 48150.00, 40634.20, 7515.80, 'Debit Card', 'Cancelled'),
('ORD10019', '2026-03-07', 'Rahul Joshi', 'Consumer', 'Mysuru', 'Karnataka', 'West', 'Online', 'Notebook Pack', 'Stationery', 4, 550, 20, 1760.00, 1358.39, 401.61, 'Net Banking', 'Returned'),
('ORD10020', '2026-02-19', 'Vikram Yadav', 'Small Business', 'Faridabad', 'Haryana', 'North', 'Phone Order', 'Office Chair', 'Furniture', 1, 6950, 0, 6950.00, 4264.48, 2685.52, 'Cash', 'Returned'),
('ORD10021', '2026-01-24', 'Rahul Joshi', 'Small Business', 'Chennai', 'Tamil Nadu', 'West', 'Phone Order', 'T-Shirt', 'Fashion', 5, 1300, 15, 5525.00, 3947.49, 1577.51, 'Net Banking', 'Delivered'),
('ORD10022', '2026-06-09', 'Neha Kapoor', 'Corporate', 'Delhi', 'Delhi', 'North', 'Online', 'Notebook Pack', 'Stationery', 2, 250, 10, 450.00, 353.98, 96.02, 'Cash', 'Shipped'),
('ORD10023', '2025-10-07', 'Arjun Reddy', 'Consumer', 'Udaipur', 'Rajasthan', 'South', 'Retail Store', 'Mixer Grinder', 'Home & Kitchen', 5, 4000, 5, 19000.00, 14537.64, 4462.36, 'Debit Card', 'Returned'),
('ORD10024', '2026-05-30', 'Rohan Gupta', 'Corporate', 'Howrah', 'West Bengal', 'North', 'Retail Store', 'Laptop', 'Electronics', 4, 79200, 10, 285120.00, 190732.64, 94387.36, 'UPI', 'Delivered'),
('ORD10025', '2026-05-01', 'Simran Kaur', 'Corporate', 'Amritsar', 'Punjab', 'North', 'Phone Order', 'Laptop', 'Electronics', 5, 76100, 5, 361475.00, 292990.36, 68484.64, 'Cash', 'Delivered'),
('ORD10026', '2026-07-01', 'Aditya Jain', 'Consumer', 'Lucknow', 'Uttar Pradesh', 'Central', 'Online', 'Printer', 'Electronics', 1, 7900, 5, 7505.00, 5936.48, 1568.52, 'Credit Card', 'Delivered'),
('ORD10027', '2026-08-07', 'Simran Kaur', 'Corporate', 'Gurugram', 'Haryana', 'North', 'Online', 'Water Bottle', 'Home & Kitchen', 2, 400, 0, 800.00, 532.94, 267.06, 'Wallet', 'Shipped'),
('ORD10028', '2025-10-19', 'Diya Iyer', 'Small Business', 'Howrah', 'West Bengal', 'South', 'Retail Store', 'Monitor', 'Electronics', 2, 14650, 0, 29300.00, 19297.42, 10002.58, 'Net Banking', 'Delivered'),
('ORD10029', '2025-07-18', 'Pooja Mishra', 'Corporate', 'Kolkata', 'West Bengal', 'Central', 'Phone Order', 'Printer', 'Electronics', 5, 11250, 10, 50625.00, 33779.28, 16845.72, 'Cash', 'Cancelled'),
('ORD10030', '2026-08-11', 'Kavya Nair', 'Consumer', 'Mysuru', 'Karnataka', 'South', 'Marketplace', 'Mouse', 'Electronics', 5, 450, 10, 2025.00, 1596.67, 428.33, 'Wallet', 'Delivered'),
('ORD10031', '2025-01-02', 'Kavya Nair', 'Consumer', 'Mumbai', 'Maharashtra', 'South', 'Phone Order', 'Desk', 'Furniture', 2, 6250, 0, 12500.00, 9514.87, 2985.13, 'UPI', 'Shipped'),
('ORD10032', '2025-07-30', 'Rahul Joshi', 'Consumer', 'Mumbai', 'Maharashtra', 'West', 'Online', 'Monitor', 'Electronics', 1, 20350, 5, 19332.50, 12991.01, 6341.49, 'Wallet', 'Shipped'),
('ORD10033', '2026-09-18', 'Ishaan Mehta', 'Small Business', 'Udaipur', 'Rajasthan', 'West', 'Phone Order', 'Notebook Pack', 'Stationery', 1, 150, 10, 135.00, 109.88, 25.12, 'Credit Card', 'Shipped'),
('ORD10034', '2026-01-10', 'Kavya Nair', 'Corporate', 'New Delhi', 'Delhi', 'South', 'Retail Store', 'Headphones', 'Electronics', 5, 1250, 15, 5312.50, 4924.43, 388.07, 'Debit Card', 'Processing'),
('ORD10035', '2026-08-31', 'Kabir Das', 'Small Business', 'Noida', 'Uttar Pradesh', 'East', 'Retail Store', 'Desk', 'Furniture', 5, 5000, 10, 22500.00, 16576.30, 5923.70, 'UPI', 'Cancelled'),
('ORD10036', '2025-01-11', 'Rohan Gupta', 'Consumer', 'Jaipur', 'Rajasthan', 'North', 'Phone Order', 'Desk', 'Furniture', 2, 14800, 10, 26640.00, 20115.13, 6524.87, 'Wallet', 'Shipped'),
('ORD10037', '2025-11-09', 'Arjun Reddy', 'Corporate', 'Coimbatore', 'Tamil Nadu', 'South', 'Online', 'Smartphone', 'Electronics', 2, 50500, 10, 90900.00, 79615.47, 11284.53, 'Cash', 'Cancelled'),
('ORD10038', '2025-09-05', 'Dev Malhotra', 'Consumer', 'Mysuru', 'Karnataka', 'West', 'Marketplace', 'Headphones', 'Electronics', 4, 4700, 20, 15040.00, 12999.90, 2040.10, 'Wallet', 'Shipped'),
('ORD10039', '2025-07-06', 'Tanya Chawla', 'Corporate', 'Ludhiana', 'Punjab', 'North', 'Marketplace', 'Printer', 'Electronics', 3, 9950, 10, 26865.00, 23698.20, 3166.80, 'Net Banking', 'Delivered'),
('ORD10040', '2025-07-01', 'Rahul Joshi', 'Consumer', 'Amritsar', 'Punjab', 'West', 'Phone Order', 'Notebook Pack', 'Stationery', 3, 550, 20, 1320.00, 1060.63, 259.37, 'Debit Card', 'Processing'),
('ORD10041', '2025-07-26', 'Sneha Patel', 'Corporate', 'Surat', 'Gujarat', 'West', 'Phone Order', 'Monitor', 'Electronics', 4, 27800, 0, 111200.00, 85619.75, 25580.25, 'UPI', 'Delivered'),
('ORD10042', '2026-02-03', 'Sneha Patel', 'Corporate', 'Ahmedabad', 'Gujarat', 'West', 'Phone Order', 'T-Shirt', 'Fashion', 3, 1400, 20, 3360.00, 3081.85, 278.15, 'Wallet', 'Delivered'),
('ORD10043', '2025-09-03', 'Rohan Gupta', 'Small Business', 'Coimbatore', 'Tamil Nadu', 'North', 'Marketplace', 'Running Shoes', 'Fashion', 5, 6700, 20, 26800.00, 21544.06, 5255.94, 'Cash', 'Cancelled'),
('ORD10044', '2026-09-28', 'Kavya Nair', 'Small Business', 'New Delhi', 'Delhi', 'South', 'Marketplace', 'Notebook Pack', 'Stationery', 1, 550, 20, 440.00, 363.13, 76.87, 'Net Banking', 'Cancelled'),
('ORD10045', '2025-08-22', 'Simran Kaur', 'Small Business', 'Kota', 'Rajasthan', 'North', 'Phone Order', 'Mouse', 'Electronics', 5, 1550, 0, 7750.00, 6314.56, 1435.44, 'Debit Card', 'Cancelled'),
('ORD10046', '2025-06-17', 'Kabir Das', 'Consumer', 'New Delhi', 'Delhi', 'East', 'Retail Store', 'Running Shoes', 'Fashion', 4, 3700, 15, 12580.00, 11948.77, 631.23, 'Credit Card', 'Shipped'),
('ORD10047', '2025-11-02', 'Diya Iyer', 'Consumer', 'Pune', 'Maharashtra', 'South', 'Online', 'Water Bottle', 'Home & Kitchen', 2, 900, 0, 1800.00, 1400.18, 399.82, 'Debit Card', 'Delivered'),
('ORD10048', '2026-04-15', 'Tanya Chawla', 'Small Business', 'New Delhi', 'Delhi', 'North', 'Phone Order', 'T-Shirt', 'Fashion', 4, 1400, 15, 4760.00, 3922.94, 837.06, 'Wallet', 'Delivered'),
('ORD10049', '2025-10-15', 'Tanya Chawla', 'Consumer', 'Chennai', 'Tamil Nadu', 'North', 'Online', 'Backpack', 'Accessories', 5, 2350, 10, 10575.00, 8729.26, 1845.74, 'Cash', 'Cancelled'),
('ORD10050', '2026-03-04', 'Arjun Reddy', 'Consumer', 'Mysuru', 'Karnataka', 'South', 'Marketplace', 'Notebook Pack', 'Stationery', 5, 100, 0, 500.00, 328.49, 171.51, 'Wallet', 'Cancelled'),
('ORD10051', '2026-07-27', 'Rahul Joshi', 'Consumer', 'Kota', 'Rajasthan', 'West', 'Marketplace', 'Mouse', 'Electronics', 5, 800, 5, 3800.00, 2634.05, 1165.95, 'Cash', 'Cancelled'),
('ORD10052', '2025-03-06', 'Dev Malhotra', 'Small Business', 'Surat', 'Gujarat', 'West', 'Marketplace', 'Monitor', 'Electronics', 1, 12650, 5, 12017.50, 7886.95, 4130.55, 'Net Banking', 'Cancelled'),
('ORD10053', '2025-01-20', 'Manav Bansal', 'Corporate', 'Howrah', 'West Bengal', 'North', 'Phone Order', 'Desk', 'Furniture', 4, 10650, 5, 40470.00, 24943.07, 15526.93, 'Wallet', 'Delivered'),
('ORD10054', '2025-04-13', 'Diya Iyer', 'Corporate', 'Mumbai', 'Maharashtra', 'South', 'Phone Order', 'Notebook Pack', 'Stationery', 3, 200, 5, 570.00, 447.41, 122.59, 'Wallet', 'Delivered'),
('ORD10055', '2025-02-27', 'Pooja Mishra', 'Small Business', 'Kolkata', 'West Bengal', 'Central', 'Retail Store', 'Monitor', 'Electronics', 1, 14900, 0, 14900.00, 11563.23, 3336.77, 'Credit Card', 'Cancelled'),
('ORD10056', '2025-12-22', 'Rahul Joshi', 'Corporate', 'Kota', 'Rajasthan', 'West', 'Marketplace', 'Desk', 'Furniture', 1, 12750, 20, 10200.00, 10272.38, -72.38, 'Debit Card', 'Delivered'),
('ORD10057', '2025-07-31', 'Rahul Joshi', 'Consumer', 'Noida', 'Uttar Pradesh', 'West', 'Retail Store', 'Keyboard', 'Electronics', 4, 2200, 0, 8800.00, 5998.78, 2801.22, 'UPI', 'Delivered'),
('ORD10058', '2026-02-25', 'Arjun Reddy', 'Consumer', 'Amritsar', 'Punjab', 'South', 'Online', 'Monitor', 'Electronics', 5, 25350, 0, 126750.00, 74606.12, 52143.88, 'Wallet', 'Cancelled'),
('ORD10059', '2025-10-27', 'Simran Kaur', 'Corporate', 'New Delhi', 'Delhi', 'North', 'Phone Order', 'Notebook Pack', 'Stationery', 2, 350, 0, 700.00, 480.14, 219.86, 'Credit Card', 'Delivered'),
('ORD10060', '2026-09-22', 'Pooja Mishra', 'Small Business', 'Bengaluru', 'Karnataka', 'Central', 'Marketplace', 'Monitor', 'Electronics', 2, 26450, 0, 52900.00, 42551.02, 10348.98, 'Net Banking', 'Returned'),
('ORD10061', '2025-08-07', 'Tanya Chawla', 'Corporate', 'Pune', 'Maharashtra', 'North', 'Retail Store', 'T-Shirt', 'Fashion', 2, 800, 10, 1440.00, 1121.49, 318.51, 'Credit Card', 'Returned'),
('ORD10062', '2025-05-19', 'Ishaan Mehta', 'Small Business', 'Bengaluru', 'Karnataka', 'West', 'Retail Store', 'Office Chair', 'Furniture', 4, 9000, 20, 28800.00, 28406.56, 393.44, 'Cash', 'Shipped'),
('ORD10063', '2026-03-20', 'Dev Malhotra', 'Corporate', 'Pune', 'Maharashtra', 'West', 'Phone Order', 'Office Chair', 'Furniture', 2, 11800, 0, 23600.00, 18942.25, 4657.75, 'Credit Card', 'Cancelled'),
('ORD10064', '2025-08-21', 'Simran Kaur', 'Small Business', 'Coimbatore', 'Tamil Nadu', 'North', 'Retail Store', 'Office Chair', 'Furniture', 4, 6400, 0, 25600.00, 17949.12, 7650.88, 'Net Banking', 'Cancelled'),
('ORD10065', '2025-01-01', 'Pooja Mishra', 'Consumer', 'Nagpur', 'Maharashtra', 'Central', 'Online', 'Keyboard', 'Electronics', 5, 3150, 15, 13387.50, 12216.78, 1170.72, 'Wallet', 'Shipped'),
('ORD10066', '2026-10-08', 'Diya Iyer', 'Corporate', 'Mumbai', 'Maharashtra', 'South', 'Phone Order', 'T-Shirt', 'Fashion', 5, 1400, 20, 5600.00, 5593.18, 6.82, 'Credit Card', 'Returned'),
('ORD10067', '2026-05-22', 'Sneha Patel', 'Consumer', 'Delhi', 'Delhi', 'West', 'Marketplace', 'Headphones', 'Electronics', 2, 4450, 10, 8010.00, 6080.55, 1929.45, 'UPI', 'Delivered'),
('ORD10068', '2026-06-27', 'Neha Kapoor', 'Consumer', 'Chennai', 'Tamil Nadu', 'North', 'Online', 'Monitor', 'Electronics', 2, 23450, 0, 46900.00, 35482.56, 11417.44, 'Cash', 'Returned'),
('ORD10133', '2025-09-04', 'Rahul Joshi', 'Consumer', 'Nagpur', 'Maharashtra', 'West', 'Online', 'Keyboard', 'Electronics', 4, 2750, 20, 8800.00, 8706.08, 93.92, 'Debit Card', 'Delivered'),
('ORD10134', '2026-09-27', 'Arjun Reddy', 'Corporate', 'New Delhi', 'Delhi', 'South', 'Retail Store', 'Mouse', 'Electronics', 5, 1050, 5, 4987.50, 3674.29, 1313.21, 'Net Banking', 'Processing'),
('ORD10135', '2025-01-25', 'Rahul Joshi', 'Small Business', 'Lucknow', 'Uttar Pradesh', 'West', 'Phone Order', 'Headphones', 'Electronics', 3, 2050, 0, 6150.00, 4715.53, 1434.47, 'UPI', 'Shipped'),
('ORD10136', '2026-04-11', 'Ananya Singh', 'Consumer', 'New Delhi', 'Delhi', 'North', 'Phone Order', 'Printer', 'Electronics', 4, 7300, 0, 29200.00, 20604.39, 8595.61, 'Net Banking', 'Delivered'),
('ORD10137', '2025-10-13', 'Dev Malhotra', 'Consumer', 'Ahmedabad', 'Gujarat', 'West', 'Marketplace', 'Notebook Pack', 'Stationery', 3, 250, 20, 600.00, 605.69, -5.69, 'Wallet', 'Delivered'),
('ORD10138', '2025-07-24', 'Diya Iyer', 'Corporate', 'Coimbatore', 'Tamil Nadu', 'South', 'Phone Order', 'Mouse', 'Electronics', 5, 600, 20, 2400.00, 2230.92, 169.08, 'UPI', 'Processing'),
('ORD10139', '2025-05-01', 'Kabir Das', 'Small Business', 'Chennai', 'Tamil Nadu', 'East', 'Marketplace', 'Backpack', 'Accessories', 5, 3050, 20, 12200.00, 8910.79, 3289.21, 'Cash', 'Delivered'),
('ORD10140', '2026-06-11', 'Neha Kapoor', 'Small Business', 'Mumbai', 'Maharashtra', 'North', 'Marketplace', 'Mixer Grinder', 'Home & Kitchen', 4, 4650, 10, 16740.00, 12603.76, 4136.24, 'Wallet', 'Cancelled'),
('ORD10141', '2025-10-19', 'Kavya Nair', 'Small Business', 'Surat', 'Gujarat', 'South', 'Retail Store', 'T-Shirt', 'Fashion', 2, 1300, 20, 2080.00, 1535.74, 544.26, 'Cash', 'Returned'),
('ORD10142', '2025-10-21', 'Priya Verma', 'Corporate', 'Ludhiana', 'Punjab', 'North', 'Phone Order', 'Monitor', 'Electronics', 1, 18200, 0, 18200.00, 14649.10, 3550.90, 'Credit Card', 'Delivered'),
('ORD10143', '2025-03-21', 'Meera Roy', 'Consumer', 'Bengaluru', 'Karnataka', 'East', 'Marketplace', 'Monitor', 'Electronics', 3, 20500, 0, 61500.00, 49538.91, 11961.09, 'Debit Card', 'Delivered'),
('ORD10144', '2026-03-14', 'Ananya Singh', 'Consumer', 'Mysuru', 'Karnataka', 'North', 'Marketplace', 'Mouse', 'Electronics', 1, 1300, 0, 1300.00, 897.04, 402.96, 'Credit Card', 'Cancelled'),
('ORD10145', '2025-05-01', 'Pooja Mishra', 'Small Business', 'Bengaluru', 'Karnataka', 'Central', 'Phone Order', 'Backpack', 'Accessories', 3, 1850, 20, 4440.00, 4513.20, -73.20, 'Net Banking', 'Delivered'),
('ORD10146', '2025-01-17', 'Arjun Reddy', 'Small Business', 'Chennai', 'Tamil Nadu', 'South', 'Phone Order', 'Running Shoes', 'Fashion', 2, 2800, 5, 5320.00, 3547.10, 1772.90, 'UPI', 'Delivered'),
('ORD10147', '2026-08-29', 'Meera Roy', 'Consumer', 'Udaipur', 'Rajasthan', 'East', 'Online', 'Backpack', 'Accessories', 3, 1750, 15, 4462.50, 3672.88, 789.62, 'Credit Card', 'Delivered'),
('ORD10148', '2026-04-12', 'Neha Kapoor', 'Small Business', 'Lucknow', 'Uttar Pradesh', 'North', 'Marketplace', 'Water Bottle', 'Home & Kitchen', 1, 850, 10, 765.00, 643.13, 121.87, 'UPI', 'Shipped'),
('ORD10149', '2025-04-20', 'Kavya Nair', 'Consumer', 'Lucknow', 'Uttar Pradesh', 'South', 'Retail Store', 'Mixer Grinder', 'Home & Kitchen', 5, 3500, 0, 17500.00, 13407.09, 4092.91, 'Credit Card', 'Processing'),
('ORD10150', '2026-05-30', 'Rohan Gupta', 'Consumer', 'Mysuru', 'Karnataka', 'North', 'Phone Order', 'Water Bottle', 'Home & Kitchen', 2, 1050, 5, 1995.00, 1678.17, 316.83, 'Net Banking', 'Cancelled'),
('ORD10151', '2026-04-29', 'Dev Malhotra', 'Corporate', 'Mumbai', 'Maharashtra', 'West', 'Retail Store', 'Notebook Pack', 'Stationery', 4, 550, 0, 2200.00, 1674.56, 525.44, 'Wallet', 'Delivered'),
('ORD10152', '2025-04-07', 'Ananya Singh', 'Small Business', 'Amritsar', 'Punjab', 'North', 'Retail Store', 'Headphones', 'Electronics', 1, 3650, 0, 3650.00, 2758.18, 891.82, 'Debit Card', 'Shipped'),
('ORD10153', '2025-12-16', 'Simran Kaur', 'Consumer', 'Howrah', 'West Bengal', 'North', 'Online', 'Headphones', 'Electronics', 1, 5400, 0, 5400.00, 3611.52, 1788.48, 'UPI', 'Delivered'),
('ORD10154', '2026-09-22', 'Tanya Chawla', 'Consumer', 'Ludhiana', 'Punjab', 'North', 'Retail Store', 'Mixer Grinder', 'Home & Kitchen', 3, 2350, 15, 5992.50, 5674.07, 318.43, 'Wallet', 'Delivered'),
('ORD10155', '2026-02-17', 'Ananya Singh', 'Consumer', 'Udaipur', 'Rajasthan', 'North', 'Retail Store', 'Notebook Pack', 'Stationery', 4, 450, 20, 1440.00, 1238.80, 201.20, 'Wallet', 'Processing'),
('ORD10156', '2026-01-11', 'Vikram Yadav', 'Corporate', 'Ludhiana', 'Punjab', 'North', 'Marketplace', 'Backpack', 'Accessories', 3, 1300, 0, 3900.00, 2558.43, 1341.57, 'Net Banking', 'Delivered'),
('ORD10157', '2026-02-23', 'Rohan Gupta', 'Corporate', 'Coimbatore', 'Tamil Nadu', 'North', 'Marketplace', 'Monitor', 'Electronics', 2, 18050, 0, 36100.00, 26734.69, 9365.31, 'Credit Card', 'Delivered'),
('ORD10158', '2025-03-17', 'Kabir Das', 'Small Business', 'Chennai', 'Tamil Nadu', 'East', 'Online', 'Water Bottle', 'Home & Kitchen', 5, 1200, 5, 5700.00, 3765.38, 1934.62, 'Net Banking', 'Delivered'),
('ORD10159', '2026-06-27', 'Rohan Gupta', 'Corporate', 'Bengaluru', 'Karnataka', 'North', 'Retail Store', 'Running Shoes', 'Fashion', 1, 6300, 5, 5985.00, 4873.53, 1111.47, 'Wallet', 'Delivered'),
('ORD10160', '2025-03-07', 'Sneha Patel', 'Corporate', 'Kolkata', 'West Bengal', 'West', 'Phone Order', 'Monitor', 'Electronics', 1, 22600, 20, 18080.00, 14087.02, 3992.98, 'Cash', 'Shipped'),
('ORD10161', '2026-02-25', 'Dev Malhotra', 'Corporate', 'Noida', 'Uttar Pradesh', 'West', 'Phone Order', 'Notebook Pack', 'Stationery', 2, 350, 15, 595.00, 429.61, 165.39, 'Debit Card', 'Delivered'),
('ORD10162', '2025-05-25', 'Rohan Gupta', 'Consumer', 'Pune', 'Maharashtra', 'North', 'Marketplace', 'Mouse', 'Electronics', 3, 2050, 0, 6150.00, 4936.79, 1213.21, 'Credit Card', 'Processing'),
('ORD10163', '2025-08-08', 'Tanya Chawla', 'Small Business', 'Chennai', 'Tamil Nadu', 'North', 'Phone Order', 'Desk', 'Furniture', 3, 14850, 20, 35640.00, 33034.59, 2605.41, 'Net Banking', 'Shipped'),
('ORD10164', '2025-04-13', 'Manav Bansal', 'Consumer', 'Howrah', 'West Bengal', 'North', 'Retail Store', 'Laptop', 'Electronics', 5, 57750, 20, 231000.00, 231835.80, -835.80, 'UPI', 'Delivered'),
('ORD10165', '2026-06-21', 'Ishaan Mehta', 'Consumer', 'Nagpur', 'Maharashtra', 'West', 'Phone Order', 'Mixer Grinder', 'Home & Kitchen', 1, 4250, 0, 4250.00, 2955.18, 1294.82, 'Net Banking', 'Delivered'),
('ORD10166', '2025-08-25', 'Neha Kapoor', 'Corporate', 'New Delhi', 'Delhi', 'North', 'Phone Order', 'Keyboard', 'Electronics', 1, 500, 5, 475.00, 391.62, 83.38, 'Net Banking', 'Delivered'),
('ORD10167', '2026-04-24', 'Meera Roy', 'Corporate', 'Agra', 'Uttar Pradesh', 'East', 'Marketplace', 'Backpack', 'Accessories', 1, 900, 10, 810.00, 545.94, 264.06, 'Debit Card', 'Delivered'),
('ORD10168', '2025-08-14', 'Simran Kaur', 'Small Business', 'Bhiwani', 'Haryana', 'North', 'Online', 'Mixer Grinder', 'Home & Kitchen', 2, 4700, 0, 9400.00, 7390.10, 2009.90, 'UPI', 'Delivered'),
('ORD10169', '2026-07-23', 'Ishaan Mehta', 'Consumer', 'Hisar', 'Haryana', 'West', 'Retail Store', 'Office Chair', 'Furniture', 4, 6600, 0, 26400.00, 20450.51, 5949.49, 'Credit Card', 'Processing'),
('ORD10170', '2025-12-01', 'Simran Kaur', 'Corporate', 'Bengaluru', 'Karnataka', 'North', 'Phone Order', 'T-Shirt', 'Fashion', 5, 850, 20, 3400.00, 3461.31, -61.31, 'Wallet', 'Delivered'),
('ORD10171', '2026-08-19', 'Dev Malhotra', 'Consumer', 'Nagpur', 'Maharashtra', 'West', 'Online', 'Notebook Pack', 'Stationery', 1, 350, 20, 280.00, 268.44, 11.56, 'Cash', 'Processing'),
('ORD10172', '2026-03-01', 'Diya Iyer', 'Corporate', 'Gurugram', 'Haryana', 'South', 'Retail Store', 'Desk', 'Furniture', 1, 9600, 10, 8640.00, 6342.89, 2297.11, 'UPI', 'Cancelled'),
('ORD10173', '2026-01-01', 'Ananya Singh', 'Corporate', 'Howrah', 'West Bengal', 'North', 'Online', 'Desk', 'Furniture', 2, 6400, 20, 10240.00, 10275.60, -35.60, 'Cash', 'Processing'),
('ORD10174', '2025-12-22', 'Manav Bansal', 'Small Business', 'Ahmedabad', 'Gujarat', 'North', 'Marketplace', 'Mouse', 'Electronics', 4, 2550, 10, 9180.00, 7410.48, 1769.52, 'Debit Card', 'Shipped'),
('ORD10175', '2025-09-12', 'Sneha Patel', 'Consumer', 'Chennai', 'Tamil Nadu', 'West', 'Marketplace', 'Headphones', 'Electronics', 5, 3400, 10, 15300.00, 12014.41, 3285.59, 'Credit Card', 'Returned'),
('ORD10176', '2025-06-24', 'Manav Bansal', 'Corporate', 'Pune', 'Maharashtra', 'North', 'Marketplace', 'Mixer Grinder', 'Home & Kitchen', 4, 5900, 10, 21240.00, 19170.78, 2069.22, 'Wallet', 'Cancelled'),
('ORD10177', '2026-03-19', 'Priya Verma', 'Corporate', 'Noida', 'Uttar Pradesh', 'North', 'Marketplace', 'Printer', 'Electronics', 1, 17900, 20, 14320.00, 13431.58, 888.42, 'UPI', 'Shipped'),
('ORD10178', '2025-02-05', 'Meera Roy', 'Corporate', 'Bengaluru', 'Karnataka', 'East', 'Phone Order', 'Desk', 'Furniture', 4, 5650, 15, 19210.00, 17366.46, 1843.54, 'Debit Card', 'Returned'),
('ORD10179', '2026-06-18', 'Arjun Reddy', 'Small Business', 'Udaipur', 'Rajasthan', 'South', 'Online', 'Mixer Grinder', 'Home & Kitchen', 1, 5700, 0, 5700.00, 4487.53, 1212.47, 'Debit Card', 'Returned'),
('ORD10180', '2025-05-25', 'Vikram Yadav', 'Small Business', 'Nagpur', 'Maharashtra', 'North', 'Marketplace', 'Backpack', 'Accessories', 4, 700, 15, 2380.00, 2256.33, 123.67, 'Cash', 'Delivered'),
('ORD10181', '2025-04-27', 'Rohan Gupta', 'Consumer', 'Ahmedabad', 'Gujarat', 'North', 'Online', 'Running Shoes', 'Fashion', 2, 6350, 0, 12700.00, 10404.13, 2295.87, 'Wallet', 'Delivered'),
('ORD10182', '2025-03-30', 'Kabir Das', 'Small Business', 'New Delhi', 'Delhi', 'East', 'Retail Store', 'Office Chair', 'Furniture', 2, 5900, 0, 11800.00, 8758.13, 3041.87, 'Wallet', 'Delivered'),
('ORD10183', '2026-02-15', 'Manav Bansal', 'Small Business', 'Kolkata', 'West Bengal', 'North', 'Retail Store', 'Printer', 'Electronics', 5, 11900, 0, 59500.00, 34959.07, 24540.93, 'UPI', 'Delivered'),
('ORD10184', '2026-10-02', 'Priya Verma', 'Corporate', 'New Delhi', 'Delhi', 'North', 'Marketplace', 'Headphones', 'Electronics', 3, 2400, 10, 6480.00, 5353.83, 1126.17, 'Wallet', 'Delivered'),
('ORD10185', '2026-07-19', 'Rohan Gupta', 'Corporate', 'Hisar', 'Haryana', 'North', 'Phone Order', 'Water Bottle', 'Home & Kitchen', 4, 1200, 10, 4320.00, 3366.51, 953.49, 'Cash', 'Delivered'),
('ORD10186', '2026-03-12', 'Meera Roy', 'Consumer', 'Nagpur', 'Maharashtra', 'East', 'Online', 'Mouse', 'Electronics', 4, 1500, 10, 5400.00, 3538.57, 1861.43, 'Wallet', 'Processing'),
('ORD10187', '2026-05-05', 'Neha Kapoor', 'Small Business', 'Chennai', 'Tamil Nadu', 'North', 'Marketplace', 'Mouse', 'Electronics', 5, 1050, 20, 4200.00, 3060.48, 1139.52, 'UPI', 'Returned'),
('ORD10188', '2026-01-07', 'Meera Roy', 'Consumer', 'Udaipur', 'Rajasthan', 'East', 'Online', 'Printer', 'Electronics', 3, 13850, 0, 41550.00, 30351.40, 11198.60, 'UPI', 'Shipped'),
('ORD10189', '2026-06-17', 'Arjun Reddy', 'Corporate', 'Ahmedabad', 'Gujarat', 'South', 'Marketplace', 'Printer', 'Electronics', 5, 14700, 0, 73500.00, 57729.45, 15770.55, 'Credit Card', 'Cancelled'),
('ORD10190', '2026-01-31', 'Simran Kaur', 'Consumer', 'Udaipur', 'Rajasthan', 'North', 'Retail Store', 'Keyboard', 'Electronics', 4, 1400, 10, 5040.00, 3974.11, 1065.89, 'Credit Card', 'Cancelled'),
('ORD10191', '2025-04-10', 'Arjun Reddy', 'Small Business', 'Hisar', 'Haryana', 'South', 'Marketplace', 'Office Chair', 'Furniture', 5, 10850, 10, 48825.00, 43048.94, 5776.06, 'Wallet', 'Delivered'),
('ORD10192', '2025-06-19', 'Manav Bansal', 'Small Business', 'Chennai', 'Tamil Nadu', 'North', 'Retail Store', 'Monitor', 'Electronics', 5, 25450, 10, 114525.00, 81133.94, 33391.06, 'Net Banking', 'Delivered'),
('ORD10193', '2025-10-26', 'Simran Kaur', 'Consumer', 'Amritsar', 'Punjab', 'North', 'Online', 'Backpack', 'Accessories', 4, 2500, 10, 9000.00, 6045.70, 2954.30, 'Cash', 'Processing'),
('ORD10194', '2025-12-23', 'Kavya Nair', 'Consumer', 'New Delhi', 'Delhi', 'South', 'Retail Store', 'Office Chair', 'Furniture', 1, 8150, 0, 8150.00, 4748.99, 3401.01, 'UPI', 'Processing'),
('ORD10195', '2025-10-08', 'Ishaan Mehta', 'Consumer', 'Lucknow', 'Uttar Pradesh', 'West', 'Online', 'Running Shoes', 'Fashion', 4, 6000, 5, 22800.00, 15978.68, 6821.32, 'Wallet', 'Cancelled'),
('ORD10196', '2026-04-27', 'Manav Bansal', 'Consumer', 'Ahmedabad', 'Gujarat', 'North', 'Phone Order', 'Smartphone', 'Electronics', 3, 53200, 0, 159600.00, 101400.58, 58199.42, 'Cash', 'Returned'),
('ORD10197', '2025-08-18', 'Sneha Patel', 'Consumer', 'New Delhi', 'Delhi', 'West', 'Marketplace', 'Laptop', 'Electronics', 3, 79450, 15, 202597.50, 166225.74, 36371.76, 'Credit Card', 'Delivered'),
('ORD10198', '2026-09-23', 'Neha Kapoor', 'Corporate', 'Coimbatore', 'Tamil Nadu', 'North', 'Online', 'Notebook Pack', 'Stationery', 5, 100, 0, 500.00, 300.28, 199.72, 'Debit Card', 'Cancelled'),
('ORD10199', '2025-12-21', 'Tanya Chawla', 'Corporate', 'Jaipur', 'Rajasthan', 'North', 'Phone Order', 'Mouse', 'Electronics', 4, 1050, 0, 4200.00, 3207.24, 992.76, 'Cash', 'Delivered'),
('ORD10200', '2025-07-30', 'Kavya Nair', 'Consumer', 'Coimbatore', 'Tamil Nadu', 'South', 'Marketplace', 'Printer', 'Electronics', 4, 9400, 0, 37600.00, 25955.43, 11644.57, 'Credit Card', 'Processing'),
('ORD10201', '2025-01-02', 'Rohan Gupta', 'Corporate', 'Coimbatore', 'Tamil Nadu', 'North', 'Retail Store', 'Desk', 'Furniture', 3, 7500, 0, 22500.00, 17965.27, 4534.73, 'Net Banking', 'Shipped'),
('ORD10202', '2025-04-20', 'Vikram Yadav', 'Consumer', 'Amritsar', 'Punjab', 'North', 'Marketplace', 'Office Chair', 'Furniture', 5, 5250, 0, 26250.00, 17083.12, 9166.88, 'Wallet', 'Delivered'),
('ORD10203', '2025-01-16', 'Manav Bansal', 'Consumer', 'Surat', 'Gujarat', 'North', 'Online', 'Keyboard', 'Electronics', 1, 750, 0, 750.00, 588.58, 161.42, 'Credit Card', 'Delivered'),
('ORD10204', '2026-03-30', 'Kavya Nair', 'Small Business', 'Kolkata', 'West Bengal', 'South', 'Online', 'Printer', 'Electronics', 1, 6150, 5, 5842.50, 4492.21, 1350.29, 'UPI', 'Returned'),
('ORD10205', '2026-03-15', 'Simran Kaur', 'Consumer', 'Ludhiana', 'Punjab', 'North', 'Phone Order', 'Laptop', 'Electronics', 2, 59400, 5, 112860.00, 72502.18, 40357.82, 'Wallet', 'Shipped'),
('ORD10206', '2026-07-01', 'Manav Bansal', 'Corporate', 'Howrah', 'West Bengal', 'North', 'Retail Store', 'Backpack', 'Accessories', 5, 2800, 15, 11900.00, 8708.61, 3191.39, 'Cash', 'Delivered'),
('ORD10207', '2026-06-25', 'Ishaan Mehta', 'Corporate', 'Noida', 'Uttar Pradesh', 'West', 'Phone Order', 'Printer', 'Electronics', 5, 10050, 0, 50250.00, 34873.24, 15376.76, 'Cash', 'Processing'),
('ORD10208', '2026-06-13', 'Ananya Singh', 'Corporate', 'Noida', 'Uttar Pradesh', 'North', 'Phone Order', 'Monitor', 'Electronics', 4, 20400, 15, 69360.00, 62514.18, 6845.82, 'Credit Card', 'Processing'),
('ORD10209', '2026-03-07', 'Vikram Yadav', 'Consumer', 'Ludhiana', 'Punjab', 'North', 'Phone Order', 'Headphones', 'Electronics', 5, 2950, 10, 13275.00, 8573.00, 4702.00, 'UPI', 'Delivered'),
('ORD10210', '2026-08-27', 'Kabir Das', 'Consumer', 'Surat', 'Gujarat', 'East', 'Online', 'Desk', 'Furniture', 5, 8900, 0, 44500.00, 32847.30, 11652.70, 'Net Banking', 'Processing'),
('ORD10211', '2025-11-24', 'Manav Bansal', 'Consumer', 'Mumbai', 'Maharashtra', 'North', 'Retail Store', 'T-Shirt', 'Fashion', 5, 1350, 5, 6412.50, 4764.31, 1648.19, 'Net Banking', 'Cancelled'),
('ORD10212', '2026-02-14', 'Sneha Patel', 'Consumer', 'Bengaluru', 'Karnataka', 'West', 'Marketplace', 'Monitor', 'Electronics', 4, 8850, 20, 28320.00, 28431.31, -111.31, 'Debit Card', 'Delivered'),
('ORD10213', '2026-07-20', 'Priya Verma', 'Consumer', 'Ludhiana', 'Punjab', 'North', 'Online', 'Headphones', 'Electronics', 3, 4050, 0, 12150.00, 7578.95, 4571.05, 'Debit Card', 'Processing'),
('ORD10214', '2025-03-06', 'Arjun Reddy', 'Consumer', 'Faridabad', 'Haryana', 'South', 'Retail Store', 'Mixer Grinder', 'Home & Kitchen', 2, 5400, 0, 10800.00, 8041.35, 2758.65, 'Wallet', 'Delivered'),
('ORD10215', '2026-07-05', 'Dev Malhotra', 'Corporate', 'New Delhi', 'Delhi', 'West', 'Marketplace', 'Smartphone', 'Electronics', 3, 42250, 20, 101400.00, 103366.28, -1966.28, 'Net Banking', 'Returned'),
('ORD10216', '2026-09-06', 'Sneha Patel', 'Small Business', 'Pune', 'Maharashtra', 'West', 'Online', 'Headphones', 'Electronics', 2, 2550, 0, 5100.00, 3669.62, 1430.38, 'Net Banking', 'Delivered'),
('ORD10217', '2025-12-20', 'Pooja Mishra', 'Consumer', 'Kolkata', 'West Bengal', 'Central', 'Marketplace', 'Office Chair', 'Furniture', 5, 6950, 15, 29537.50, 26687.54, 2849.96, 'Net Banking', 'Processing'),
('ORD10218', '2026-10-02', 'Diya Iyer', 'Consumer', 'Pune', 'Maharashtra', 'South', 'Online', 'Mouse', 'Electronics', 3, 1750, 15, 4462.50, 3671.13, 791.37, 'Debit Card', 'Delivered'),
('ORD10219', '2026-04-21', 'Simran Kaur', 'Consumer', 'Amritsar', 'Punjab', 'North', 'Online', 'Mouse', 'Electronics', 5, 1100, 20, 4400.00, 4264.51, 135.49, 'Credit Card', 'Delivered'),
('ORD10220', '2025-08-07', 'Meera Roy', 'Corporate', 'Kolkata', 'West Bengal', 'East', 'Phone Order', 'Office Chair', 'Furniture', 4, 7500, 0, 30000.00, 21471.08, 8528.92, 'Wallet', 'Delivered'),
('ORD10221', '2025-03-07', 'Dev Malhotra', 'Consumer', 'Lucknow', 'Uttar Pradesh', 'West', 'Phone Order', 'Desk', 'Furniture', 5, 8000, 0, 40000.00, 29658.10, 10341.90, 'Wallet', 'Cancelled'),
('ORD10222', '2026-08-09', 'Aarav Sharma', 'Consumer', 'Chennai', 'Tamil Nadu', 'North', 'Phone Order', 'Notebook Pack', 'Stationery', 4, 250, 5, 950.00, 644.53, 305.47, 'Debit Card', 'Processing'),
('ORD10223', '2026-05-29', 'Manav Bansal', 'Small Business', 'Surat', 'Gujarat', 'North', 'Phone Order', 'Monitor', 'Electronics', 4, 23400, 5, 88920.00, 71576.66, 17343.34, 'Net Banking', 'Returned'),
('ORD10224', '2025-11-17', 'Dev Malhotra', 'Consumer', 'Surat', 'Gujarat', 'West', 'Retail Store', 'Backpack', 'Accessories', 2, 1850, 10, 3330.00, 2674.23, 655.77, 'Cash', 'Processing'),
('ORD10225', '2025-07-26', 'Aarav Sharma', 'Small Business', 'New Delhi', 'Delhi', 'North', 'Retail Store', 'Mixer Grinder', 'Home & Kitchen', 4, 4300, 0, 17200.00, 10245.35, 6954.65, 'Wallet', 'Delivered'),
('ORD10226', '2025-04-04', 'Ishaan Mehta', 'Small Business', 'Nagpur', 'Maharashtra', 'West', 'Online', 'Printer', 'Electronics', 3, 8150, 15, 20782.50, 15130.20, 5652.30, 'Net Banking', 'Processing'),
('ORD10227', '2026-10-07', 'Simran Kaur', 'Small Business', 'New Delhi', 'Delhi', 'North', 'Retail Store', 'Headphones', 'Electronics', 2, 3000, 5, 5700.00, 3590.60, 2109.40, 'Net Banking', 'Shipped'),
('ORD10228', '2025-11-15', 'Simran Kaur', 'Consumer', 'Ludhiana', 'Punjab', 'North', 'Phone Order', 'Desk', 'Furniture', 3, 5250, 20, 12600.00, 9561.52, 3038.48, 'UPI', 'Delivered'),
('ORD10229', '2026-02-11', 'Tanya Chawla', 'Corporate', 'New Delhi', 'Delhi', 'North', 'Marketplace', 'Running Shoes', 'Fashion', 2, 6900, 0, 13800.00, 11138.67, 2661.33, 'Net Banking', 'Processing'),
('ORD10230', '2026-05-25', 'Kabir Das', 'Consumer', 'Ahmedabad', 'Gujarat', 'East', 'Retail Store', 'Keyboard', 'Electronics', 3, 2950, 5, 8407.50, 7146.77, 1260.73, 'Cash', 'Cancelled'),
('ORD10231', '2025-01-27', 'Ananya Singh', 'Small Business', 'Kolkata', 'West Bengal', 'North', 'Marketplace', 'Notebook Pack', 'Stationery', 2, 200, 0, 400.00, 270.32, 129.68, 'Debit Card', 'Delivered'),
('ORD10232', '2026-08-06', 'Arjun Reddy', 'Corporate', 'Chennai', 'Tamil Nadu', 'South', 'Marketplace', 'Mixer Grinder', 'Home & Kitchen', 1, 2100, 0, 2100.00, 1630.60, 469.40, 'Net Banking', 'Returned'),
('ORD10233', '2026-09-17', 'Rohan Gupta', 'Corporate', 'Pune', 'Maharashtra', 'North', 'Phone Order', 'Printer', 'Electronics', 3, 15800, 20, 37920.00, 35638.52, 2281.48, 'Cash', 'Delivered'),
('ORD10234', '2026-01-12', 'Kabir Das', 'Corporate', 'Nagpur', 'Maharashtra', 'East', 'Phone Order', 'T-Shirt', 'Fashion', 2, 1550, 5, 2945.00, 2477.01, 467.99, 'Net Banking', 'Shipped'),
('ORD10235', '2025-04-17', 'Kavya Nair', 'Corporate', 'Howrah', 'West Bengal', 'South', 'Phone Order', 'Keyboard', 'Electronics', 3, 500, 15, 1275.00, 1142.58, 132.42, 'UPI', 'Returned'),
('ORD10236', '2025-03-06', 'Meera Roy', 'Consumer', 'Mysuru', 'Karnataka', 'East', 'Retail Store', 'Mixer Grinder', 'Home & Kitchen', 2, 5350, 0, 10700.00, 6237.16, 4462.84, 'Credit Card', 'Delivered'),
('ORD10237', '2026-02-04', 'Simran Kaur', 'Small Business', 'Mysuru', 'Karnataka', 'North', 'Retail Store', 'Keyboard', 'Electronics', 3, 1550, 0, 4650.00, 3273.99, 1376.01, 'Cash', 'Delivered'),
('ORD10238', '2026-05-19', 'Aarav Sharma', 'Small Business', 'Ahmedabad', 'Gujarat', 'North', 'Online', 'Smartphone', 'Electronics', 1, 41050, 20, 32840.00, 31300.95, 1539.05, 'Net Banking', 'Shipped'),
('ORD10239', '2025-01-08', 'Dev Malhotra', 'Corporate', 'Amritsar', 'Punjab', 'West', 'Retail Store', 'Monitor', 'Electronics', 4, 24650, 20, 78880.00, 66981.12, 11898.88, 'Credit Card', 'Delivered'),
('ORD10240', '2026-06-10', 'Kavya Nair', 'Small Business', 'Howrah', 'West Bengal', 'South', 'Phone Order', 'Mouse', 'Electronics', 4, 850, 20, 2720.00, 2333.87, 386.13, 'Cash', 'Delivered'),
('ORD10241', '2026-09-20', 'Kavya Nair', 'Corporate', 'Nagpur', 'Maharashtra', 'South', 'Retail Store', 'Water Bottle', 'Home & Kitchen', 3, 900, 20, 2160.00, 1664.30, 495.70, 'Net Banking', 'Delivered'),
('ORD10242', '2025-04-09', 'Manav Bansal', 'Corporate', 'Surat', 'Gujarat', 'North', 'Online', 'Laptop', 'Electronics', 3, 62450, 15, 159247.50, 128840.01, 30407.49, 'Cash', 'Delivered'),
('ORD10243', '2026-03-29', 'Priya Verma', 'Consumer', 'Howrah', 'West Bengal', 'North', 'Retail Store', 'Laptop', 'Electronics', 3, 65250, 15, 166387.50, 128084.94, 38302.56, 'Net Banking', 'Delivered'),
('ORD10244', '2026-02-24', 'Rahul Joshi', 'Consumer', 'Lucknow', 'Uttar Pradesh', 'West', 'Online', 'Running Shoes', 'Fashion', 3, 6500, 5, 18525.00, 15388.55, 3136.45, 'Cash', 'Delivered'),
('ORD10245', '2026-04-28', 'Arjun Reddy', 'Corporate', 'Noida', 'Uttar Pradesh', 'South', 'Retail Store', 'Keyboard', 'Electronics', 3, 3950, 0, 11850.00, 8386.04, 3463.96, 'UPI', 'Returned'),
('ORD10246', '2025-05-27', 'Arjun Reddy', 'Small Business', 'Agra', 'Uttar Pradesh', 'South', 'Marketplace', 'Notebook Pack', 'Stationery', 5, 500, 0, 2500.00, 1522.12, 977.88, 'Debit Card', 'Delivered'),
('ORD10247', '2026-02-07', 'Manav Bansal', 'Small Business', 'Kota', 'Rajasthan', 'North', 'Online', 'Backpack', 'Accessories', 5, 800, 15, 3400.00, 3277.65, 122.35, 'Cash', 'Shipped'),
('ORD10248', '2026-05-26', 'Pooja Mishra', 'Consumer', 'Lucknow', 'Uttar Pradesh', 'Central', 'Marketplace', 'Desk', 'Furniture', 4, 4000, 5, 15200.00, 10710.79, 4489.21, 'Debit Card', 'Delivered'),
('ORD10249', '2025-09-14', 'Manav Bansal', 'Small Business', 'Surat', 'Gujarat', 'North', 'Phone Order', 'Water Bottle', 'Home & Kitchen', 5, 250, 0, 1250.00, 985.64, 264.36, 'Cash', 'Delivered'),
('ORD10250', '2025-01-02', 'Kabir Das', 'Small Business', 'Lucknow', 'Uttar Pradesh', 'East', 'Retail Store', 'Notebook Pack', 'Stationery', 3, 100, 20, 240.00, 231.45, 8.55, 'Cash', 'Delivered'),
('ORD10251', '2025-09-15', 'Rohan Gupta', 'Small Business', 'New Delhi', 'Delhi', 'North', 'Marketplace', 'Printer', 'Electronics', 3, 7150, 0, 21450.00, 14680.64, 6769.36, 'Net Banking', 'Delivered');

##  display all data
select * from sales_orders;

## How many total orders are present in the dataset ##
SELECT COUNT(order_id) AS total_orders
FROM sales_orders;

## What is the total sales revenue
SELECT SUM(sales_amount) AS total_sales
FROM sales_orders;

 ## how much  total profit generated by the company
 SELECT SUM(profit) AS total_profit
FROM sales_orders;

## How many unique customers are present in the datase
SELECT COUNT(DISTINCT customer_name) AS unique_customers
FROM sales_orders;

## What is the total sales amount for each product category
SELECT
    category,
    SUM(sales_amount) AS total_sales
FROM sales_orders
GROUP BY category
ORDER BY total_sales DESC;

## What are the total sales for each state
SELECT
    state,
    SUM(sales_amount) AS total_sales
FROM sales_orders
GROUP BY state
ORDER BY total_sales DESC;


## What are the total sales for each state
SELECT
    state,
    SUM(sales_amount) AS total_sales
FROM sales_orders
GROUP BY state
ORDER BY total_sales DESC;


## Which product category generates the highest sales
SELECT
    category,
    SUM(sales_amount) AS total_sales
FROM sales_orders
GROUP BY category
ORDER BY total_sales DESC
LIMIT 1;


## What are the total sales for each month

SELECT
    YEAR(order_date) AS sales_year,
    MONTH(order_date) AS sales_month,
    SUM(sales_amount) AS total_sales
FROM sales_orders
GROUP BY YEAR(order_date), MONTH(order_date)
ORDER BY sales_year, sales_month;

## What are the total sales generated by each customer
SELECT
    customer_name,
    SUM(sales_amount) AS total_sales
FROM sales_orders
GROUP BY customer_name
ORDER BY total_sales DESC;

## Which are the top five products by total sales
SELECT
    product_name,
    SUM(sales_amount) AS total_sales
FROM sales_orders
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 5;

## Which region generates the highest sales
SELECT
    region,
    SUM(sales_amount) AS total_sales
FROM sales_orders
GROUP BY region
ORDER BY total_sales DESC
LIMIT 1;

## Which five orders generated the highest profit
SELECT
    order_id,
    customer_name,
    sales_amount,
    profit
FROM sales_orders
ORDER BY profit DESC
LIMIT 5;

## Which city generates the highest profit
SELECT
    city,
    SUM(profit) AS total_profit
FROM sales_orders
GROUP BY city
ORDER BY total_profit DESC
LIMIT 1;


## Find orders that generated a loss
SELECT *
FROM sales_orders
WHERE profit < 0;



## What is the profit margin percentage for each product category
SELECT
    category,
    SUM(sales_amount) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(
        SUM(profit) / NULLIF(SUM(sales_amount), 0) * 100,
        2
    ) AS profit_margin_percentage
FROM sales_orders
GROUP BY category;



## Which five products have the lowest total profit
SELECT
    product_name,
    SUM(profit) AS total_profit
FROM sales_orders
GROUP BY product_name
ORDER BY total_profit ASC
LIMIT 5;

##  How many orders has each customer placed
SELECT
    customer_name,
    COUNT(*) AS total_orders
FROM sales_orders
GROUP BY customer_name
ORDER BY total_orders DESC;


## Which customers have placed only one order
SELECT
    customer_name,
    COUNT(*) AS total_orders
FROM sales_orders
GROUP BY customer_name
HAVING COUNT(*) = 1;

## What is the total quantity purchased by each customer

SELECT
    customer_name,
    SUM(quantity) AS total_quantity
FROM sales_orders
GROUP BY customer_name
ORDER BY total_quantity DESC;



## Which customers have cancelled orders

SELECT DISTINCT customer_name
FROM sales_orders
WHERE order_status = 'Cancelled';

## Which customers have returned orders

SELECT DISTINCT customer_name
FROM sales_orders
WHERE order_status = 'Returned';


## What are the total sales for each payment method
SELECT
    payment_method,
    SUM(sales_amount) AS total_sales
FROM sales_orders
GROUP BY payment_method
ORDER BY total_sales DESC;


## How many orders belong to each order status
SELECT
    order_status,
    COUNT(*) AS total_orders
FROM sales_orders
GROUP BY order_status;



## Find the top three products by profit within each category

WITH product_profit AS (
    SELECT
        category,
        product_name,
        SUM(profit) AS total_profit
    FROM sales_orders
    GROUP BY category, product_name
),
ranked_products AS (
    SELECT
        category,
        product_name,
        total_profit,
        DENSE_RANK() OVER (
            PARTITION BY category
            ORDER BY total_profit DESC
        ) AS product_rank
    FROM product_profit
)
SELECT *
FROM ranked_products
WHERE product_rank <= 3
ORDER BY category, product_rank;


## Rank cities by total sales within each region

WITH city_sales AS (
    SELECT
        region,
        city,
        SUM(sales_amount) AS total_sales
    FROM sales_orders
    GROUP BY region, city
)
SELECT
    region,
    city,
    total_sales,
    RANK() OVER (
        PARTITION BY region
        ORDER BY total_sales DESC
    ) AS city_rank
FROM city_sales
ORDER BY region, city_rank;


