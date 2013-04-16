@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module CDE

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
