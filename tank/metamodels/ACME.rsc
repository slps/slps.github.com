@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ACME

syntax ACMEFile
        = 
        ACMEEntry entries+
 ;
syntax ACMEEntry
        = System
        | ComponentType
 ;
syntax Element
        = Type
        | Component
        | Port
        | Connector
        | Role
        | System
 ;
syntax Type
        = 
        String name Representation representations+ Property property+
 ;
syntax System
        = 
        ComponentInstance componentDeclaration+ Connector connectorDeclaration+ Link attachments+ Link bindings+
 ;
syntax Representation
        = 
        System systems+
 ;
syntax Component
        = ComponentInstance
        | ComponentType
 ;
syntax ComponentInstance
        = 
        instanceOf: String
 ;
syntax ComponentType
        = 
        extend: String
 ;
syntax Port
        = 
        String name Representation representations+ Property property+
 ;
syntax Connector
        = 
        Role roles+ System system
 ;
syntax Role
        = 
        String name Representation representations+ Property property+
 ;
syntax Property
        = 
        String name String val
 ;
syntax Link
        = Attachment
        | Binding
 ;
syntax Attachment
        = 
        String comp String port String con String role
 ;
syntax Binding
        = 
        String compSrc String portSrc String compDest String portDest
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
