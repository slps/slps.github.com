@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Problem

syntax Severity
        = error: ()
        | warning: ()
        | critic: ()
 ;
syntax Problem
        = 
        ANY severity ANY location ANY description
 ;
