@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Family

syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
syntax Family
        = 
        String name Person members+
 ;
syntax Person
        = 
        String firstName Person closestFriend String emailAddresses+
 ;
