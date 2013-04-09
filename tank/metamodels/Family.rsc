@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Family

syntax Family
        = 
        ANY name ANY members+
 ;
syntax Person
        = 
        ANY firstName ANY closestFriend ANY emailAddresses+
 ;
