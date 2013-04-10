@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module AWKPrograms

syntax AWKProgram
        = 
        String name File input File output Script script
 ;
syntax File
        = 
        String name Record records+
 ;
syntax Record
        = 
        File r_file Field fields+
 ;
syntax Field
        = 
        String value Record f_record
 ;
syntax Script
        = 
        String name Rule rules+
 ;
syntax Rule
        = InitialRule
        | FinalRule
        | Script r_script Pattern pattern Action action
 ;
syntax Pattern
        = 
        regularExpression: String
 ;
syntax Action
        = 
        Instruction instructions+
 ;
syntax Instruction
        = 
        String value Action i_action
 ;
syntax InitialRule
        = 
        ()
 ;
syntax FinalRule
        = 
        ()
 ;
