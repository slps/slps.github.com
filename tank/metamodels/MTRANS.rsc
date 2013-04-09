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
        ANY name ANY mode ANY metaDest+ ANY metaSource+ ANY rules+
 ;
syntax Rule
        = 
        ANY isAbstract ANY isEntryPoint ANY name ANY module ANY target ANY source ANY declaration ANY sections+ ANY guard ANY inheritances+
 ;
syntax Inheritance
        = 
        ANY rule ANY expressions+ ANY inheritedRules+
 ;
syntax Expression
        = 
        ANY operator ANY inheritance ANY rule ANY instruction
 ;
syntax Section
        = 
        ANY kind ANY rule ANY instructions+
 ;
syntax Instruction
        = 
        ANY body ANY section
 ;
syntax Variable
        = 
        ANY name ANY rule
 ;
