@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Parameters

syntax ParametersList
        = 
        Parameter parameters+
 ;
syntax Parameter
        = 
        String name String value
 ;
