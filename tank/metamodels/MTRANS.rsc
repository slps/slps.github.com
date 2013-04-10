@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MTRANS

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
