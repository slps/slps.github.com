@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module AWKPrograms

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
        Script r_script Pattern pattern Action action
 ;
syntax FinalRule
        = 
        Script r_script Pattern pattern Action action
 ;
