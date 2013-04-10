@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ClassicModels

syntax AddressInfo
        = Office
        | Customer
 ;
syntax Date
        = 
        Integer year Integer month Integer day
 ;
syntax ClassicModels
        = 
        Office offices+ ProductLine productLines+ Customer customers+
 ;
syntax ProductLine
        = 
        ClassicModels productLineOwner Product products+ String name String textDescription String htmlDescription
 ;
syntax Product
        = 
        ProductLine productLine String code String name String scale String vendor String description Integer quantityInStock Double buyPrice Double MSRP
 ;
syntax Office
        = 
        ClassicModels officeOwner String code Employee employees+ String territory
 ;
syntax Employee
        = 
        Office office Integer number Customer employeeCustomers+ String lastName String firstName String extension String email Employee reportsTo String jobTitle
 ;
syntax Customer
        = 
        ClassicModels customerOwner Integer number Order orders+ Payment payments+ Employee salesRepEmployee String name String contactLastName String contactFirstName Double creditLimit
 ;
syntax Payment
        = 
        Customer customer String checkNumber Date date Double amount
 ;
syntax Order
        = 
        Customer customer OrderDetail orderDetails+ Integer number Date date Date requiredDate Date shippedDate String status String comments
 ;
syntax OrderDetail
        = 
        Order order Product product Integer quantityOrdered Double priceEach
 ;
