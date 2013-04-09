@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module CompanyStructure

syntax Company
        = 
        ANY corporateHQ ANY Store+
 ;
syntax CorporateHQ
        = 
        ANY manages+ ANY corporateHQBackOffice
 ;
syntax Store
        = 
        ANY storeBackOffice ANY employee+ ANY cashRegister+
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
