use Ecommerce

Select Count(OrderID) as TotalOrders
From Orders

inner join (Select AddressID
			From Address
			Where ZipCodeID = (Select ZipCodeID
							   From ZipCode
							   Where CityID = (Select CityID
											   From City Where CityName = 'Karachi'))

			) adid on adid.AddressID = Orders.AddressID