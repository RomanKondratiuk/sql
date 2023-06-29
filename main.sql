SELECT c.company_name AS customer, CONCAT(e.first_name, ' ', e.last_name) AS employee
FROM orders as o
JOIN customers as c USING(customer_id)
JOIN employees as e USING(employee_id)
JOIN shippers as s ON o.ship_via = s.shipper_id
WHERE c.city= 'London' AND e.city= 'London' AND s.company_name = 'United Paskage';

