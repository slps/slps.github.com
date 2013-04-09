@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Parameters

syntax ParametersList
        = 
        ANY parameters+
 ;
syntax Parameter
        = 
        ANY name ANY value
 ;
