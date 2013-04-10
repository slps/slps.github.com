@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Trace

syntax Trace
        = 
        Level levels+ String name
 ;
syntax Level
        = 
        Trace trace Call calls+
 ;
syntax Call
        = 
        Level level Index indexes+ String methodName Integer DBAccessesNumber Integer DBRowsNumber Integer CPUTime
 ;
syntax Index
        = 
        value: Integer
 ;
