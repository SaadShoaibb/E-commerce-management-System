use Ecommerce

select sum(DATEDIFF ( year , customer.DOB , getdate() ))/Count(customerid) as "Average Age"
from Customer