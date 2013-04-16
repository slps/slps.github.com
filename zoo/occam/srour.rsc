@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Srour

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax OCCAM_Program
        = 
        OCCAM_Element occam_Elements+ File files+
 ;
syntax OCCAM_Element
        = Process
        | Action
        | Constructor
        | DataType
        | name: String
 ;
syntax Process
        = 
        Declaration declaration Constructor constructors+ DataType parameters+ Library libraries+ Channel toChannel
 ;
syntax Channel
        = 
        String name String type Server toServer Process toProcess
 ;
syntax Action
        = Assignment
        | Input
        | Output
        | Constructor constructor While while If if
 ;
syntax Assignment
        = 
        Constructor constructor While while If if
 ;
syntax Input
        = 
        Constructor constructor While while If if
 ;
syntax Output
        = 
        Constructor constructor While while If if
 ;
syntax Constructor
        = Sequential
        | Parallel
        | Alternative
        | Process process Action actions+ Buckel buckels+ Constructor childrens+
 ;
syntax Buckel
        = If
        | While
        | constructor: Constructor
 ;
syntax If
        = 
        Condition conditions+ Action actions+
 ;
syntax While
        = 
        Condition conditions+ Action actions+
 ;
syntax Condition
        = 
        String elementRight String elementLeft String typeCondition If if While while
 ;
syntax Sequential
        = 
        Process process Action actions+ Buckel buckels+ Constructor childrens+
 ;
syntax Parallel
        = 
        Process process Action actions+ Buckel buckels+ Constructor childrens+
 ;
syntax Alternative
        = 
        Process process Action actions+ Buckel buckels+ Constructor childrens+
 ;
syntax DataType
        = 
        dataType: String
 ;
syntax Library
        = 
        name: String
 ;
syntax File
        = 
        name: String
 ;
syntax Server
        = 
        String name Channel toChannel
 ;
syntax Declaration
        = 
        String name Process process DataType elements+
 ;
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
