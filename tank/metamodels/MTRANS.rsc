@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MTRANS

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax MetaClass
        = 
        ()
 ;
syntax MetaModel
        = 
        ()
 ;
syntax Module
        = 
        String name String mode MetaModel metaDest+ MetaModel metaSource+ Rule rules+
 ;
syntax Rule
        = 
        Boolean isAbstract Boolean isEntryPoint String name Module module MetaClass target MetaClass source Variable declaration Section sections+ Expression guard Inheritance inheritances+
 ;
syntax Inheritance
        = 
        Rule rule Expression expressions+ Rule inheritedRules+
 ;
syntax Expression
        = 
        String operator Inheritance inheritance Rule rule Instruction instruction
 ;
syntax Section
        = 
        String kind Rule rule Instruction instructions+
 ;
syntax Instruction
        = 
        Expression body Section section
 ;
syntax Variable
        = 
        String name Rule rule
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax String
        = 
        String
 ;
