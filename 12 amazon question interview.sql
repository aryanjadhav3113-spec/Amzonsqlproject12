create database bank_db;
use bank_db;
create table transactions(
transaction_id int auto_increment primary key,
customer_id int not null,
transaction_amount decimal(10,2) not null,
transaction_date date
);
INSERT INTO transactions (customer_id, transaction_amount) VALUES
(101, 3000),
(101, 7000),
(101, 8000),
(102, 4500),
(102, 5200),
(103, 10000);
select * from transactions;
SELECT 
    customer_id, 
    COUNT(*) AS high_value_txns
FROM transactions
WHERE transaction_amount > 6000
GROUP BY customer_id
HAVING COUNT(*) > 1;

