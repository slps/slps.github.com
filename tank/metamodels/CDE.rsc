@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module CDE

syntax IUmlType
        = ICdeComponentSpec
        | IUmlClass
        | IUmlMember members+
 ;
syntax ICdeComponentSpec
        = 
        IUmlMember members+
 ;
syntax IUmlClass
        = 
        IUmlComponent
 ;
syntax IUmlComponent
        = ICdeServer
        | ICdeComponent
 ;
syntax ICdeServer
        = 
        ICdeComponent implements+
 ;
syntax ICdeComponent
        = 
        ()
 ;
syntax IUmlMember
        = 
        ICdeMember
 ;
syntax ICdeMember
        = 
        ()
 ;
syntax ICdeMemberExe
        = 
        String executionPerformance String resourceNeeded String executionDetails
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
