use Ecommerce

select * 
from Customer 
where Customer.CustomerID NOT IN (select CustomerID from Orders)
