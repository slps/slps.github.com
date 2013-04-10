@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module OCCAM

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
        ()
 ;
syntax Input
        = 
        ()
 ;
syntax Output
        = 
        ()
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
        ()
 ;
syntax Parallel
        = 
        ()
 ;
syntax Alternative
        = 
        ()
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
