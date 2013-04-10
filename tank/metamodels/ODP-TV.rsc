@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ODP_TV

syntax TechnologyObject
        = 
        ImplementableStandard implStandard+ Implementation toImplementation+
 ;
syntax Implementation
        = 
        IXIT implIXIT+ TechnologyObject implProduct+
 ;
syntax IXIT
        = 
        Implementation ixitImplementation+
 ;
syntax ImplementableStandard
        = 
        TechnologyObject techObject+
 ;
