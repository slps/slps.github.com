@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ClassicModels

syntax AddressInfo
        = 
        ()
 ;
syntax Date
        = 
        ANY year ANY month ANY day
 ;
syntax ClassicModels
        = 
        ANY offices+ ANY productLines+ ANY customers+
 ;
syntax ProductLine
        = 
        ANY productLineOwner ANY products+ ANY name ANY textDescription ANY htmlDescription
 ;
syntax Product
        = 
        ANY productLine ANY code ANY name ANY scale ANY vendor ANY description ANY quantityInStock ANY buyPrice ANY MSRP
 ;
syntax Office
        = 
        ANY officeOwner ANY code ANY employees+ ANY territory
 ;
syntax Employee
        = 
        ANY office ANY number ANY employeeCustomers+ ANY lastName ANY firstName ANY extension ANY email ANY reportsTo ANY jobTitle
 ;
syntax Customer
        = 
        ANY customerOwner ANY number ANY orders+ ANY payments+ ANY salesRepEmployee ANY name ANY contactLastName ANY contactFirstName ANY creditLimit
 ;
syntax Payment
        = 
        ANY customer ANY checkNumber ANY date ANY amount
 ;
syntax Order
        = 
        ANY customer ANY orderDetails+ ANY number ANY date ANY requiredDate ANY shippedDate ANY status ANY comments
 ;
syntax OrderDetail
        = 
        ANY order ANY product ANY quantityOrdered ANY priceEach
 ;
