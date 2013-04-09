@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module AWKPrograms

syntax AWKProgram
        = 
        ANY name ANY input ANY output ANY script
 ;
syntax File
        = 
        ANY name ANY records+
 ;
syntax Record
        = 
        ANY r_file ANY fields+
 ;
syntax Field
        = 
        ANY value ANY f_record
 ;
syntax Script
        = 
        ANY name ANY rules+
 ;
syntax Rule
        = 
        ANY r_script ANY pattern ANY action
 ;
syntax Pattern
        = 
        regularExpression: ANY
 ;
syntax Action
        = 
        ANY instructions+
 ;
syntax Instruction
        = 
        ANY value ANY i_action
 ;
syntax InitialRule
        = 
        ()
 ;
syntax FinalRule
        = 
        ()
 ;
