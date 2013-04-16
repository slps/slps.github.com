@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Class

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
syntax NamedElt
        = Classifier
        | Attribute
 ;
syntax Classifier
        = DataType
        | Class
 ;
syntax DataType
        = 
        ()
 ;
syntax Class
        = 
        Class super+ Attribute attr+ Boolean isAbstract
 ;
syntax Attribute
        = 
        Boolean multiValued Classifier type Class owner
 ;
