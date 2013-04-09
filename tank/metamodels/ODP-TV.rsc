@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ODP_TV

syntax TechnologyObject
        = 
        ANY implStandard+ ANY toImplementation+
 ;
syntax Implementation
        = 
        ANY implIXIT+ ANY implProduct+
 ;
syntax IXIT
        = 
        ANY ixitImplementation+
 ;
syntax ImplementableStandard
        = 
        ANY techObject+
 ;
