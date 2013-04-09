@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Trace

syntax Trace
        = 
        ANY levels+ ANY name
 ;
syntax Level
        = 
        ANY trace ANY calls+
 ;
syntax Call
        = 
        ANY level ANY indexes+ ANY methodName ANY DBAccessesNumber ANY DBRowsNumber ANY CPUTime
 ;
syntax Index
        = 
        value: ANY
 ;
