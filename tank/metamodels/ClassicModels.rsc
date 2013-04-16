@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ClassicModels

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
