@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ACME

syntax ACMEFile
        = 
        ANY entries+
 ;
syntax ACMEEntry
        = 
        ()
 ;
syntax Element
        = 
        ()
 ;
syntax Type
        = 
        ANY name ANY representations+ ANY property+
 ;
syntax System
        = 
        ANY componentDeclaration+ ANY connectorDeclaration+ ANY attachments+ ANY bindings+
 ;
syntax Representation
        = 
        ANY systems+
 ;
syntax Component
        = 
        ()
 ;
syntax ComponentInstance
        = 
        instanceOf: ANY
 ;
syntax ComponentType
        = 
        extend: ANY
 ;
syntax Port
        = 
        ANY name ANY representations+ ANY property+
 ;
syntax Connector
        = 
        ANY roles+ ANY system
 ;
syntax Role
        = 
        ANY name ANY representations+ ANY property+
 ;
syntax Property
        = 
        ANY name ANY val
 ;
syntax Link
        = 
        ()
 ;
syntax Attachment
        = 
        ANY comp ANY port ANY con ANY role
 ;
syntax Binding
        = 
        ANY compSrc ANY portSrc ANY compDest ANY portDest
 ;
