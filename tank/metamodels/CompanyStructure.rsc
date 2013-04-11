@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module CompanyStructure

syntax Company
        = 
        CorporateHQ corporateHQ Store Store+
 ;
syntax CorporateHQ
        = 
        Store manages+ CorporateHQBackOffice corporateHQBackOffice
 ;
syntax Store
        = 
        StoreBackOffice storeBackOffice Employee employee+ CashRegister cashRegister+
 ;
syntax CorporateHQBackOffice
        = 
        ()
 ;
syntax StoreBackOffice
        = 
        ()
 ;
syntax Employee
        = 
        ()
 ;
syntax CashRegister
        = 
        ()
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
