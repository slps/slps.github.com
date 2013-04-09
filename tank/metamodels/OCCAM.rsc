@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module OCCAM

syntax OCCAM_Program
        = 
        ANY occam_Elements+ ANY files+
 ;
syntax OCCAM_Element
        = 
        name: ANY
 ;
syntax Process
        = 
        ANY declaration ANY constructors+ ANY parameters+ ANY libraries+ ANY toChannel
 ;
syntax Channel
        = 
        ANY name ANY type ANY toServer ANY toProcess
 ;
syntax Action
        = 
        ANY constructor ANY while ANY if
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
        = 
        ANY process ANY actions+ ANY buckels+ ANY childrens+
 ;
syntax Buckel
        = 
        constructor: ANY
 ;
syntax If
        = 
        ANY conditions+ ANY actions+
 ;
syntax While
        = 
        ANY conditions+ ANY actions+
 ;
syntax Condition
        = 
        ANY elementRight ANY elementLeft ANY typeCondition ANY if ANY while
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
        dataType: ANY
 ;
syntax Library
        = 
        name: ANY
 ;
syntax File
        = 
        name: ANY
 ;
syntax Server
        = 
        ANY name ANY toChannel
 ;
syntax Declaration
        = 
        ANY name ANY process ANY elements+
 ;
