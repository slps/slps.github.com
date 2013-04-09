@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Pascal

syntax Program
        = 
        ANY name ANY variables+ ANY types+ ANY procedures+
 ;
syntax Variable
        = 
        ANY name ANY program ANY procedure ANY type
 ;
syntax Type
        = 
        ANY name ANY program ANY variables+
 ;
syntax Parameter
        = 
        procedure_parameter: ANY
 ;
syntax Instruction
        = 
        block: ANY
 ;
syntax Calculation
        = 
        ()
 ;
syntax Control
        = 
        ()
 ;
syntax Assignment
        = 
        ()
 ;
syntax Block
        = 
        ANY instructions+ ANY procedure ANY loop ANY conditional
 ;
syntax Conditional
        = 
        blocks: ANY
 ;
syntax Loop
        = 
        block_loop: ANY
 ;
syntax Procedure
        = 
        ANY name ANY program ANY variables+ ANY parameters+ ANY block_procedure
 ;
syntax Function
        = 
        returnType: ANY
 ;
syntax For
        = 
        ()
 ;
syntax While
        = 
        ()
 ;
syntax Repeat
        = 
        ()
 ;
