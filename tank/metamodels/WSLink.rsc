@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module WSLink

syntax LocatedElement
        = Network
        | Services
 ;
syntax Network
        = 
        Services services+ String name
 ;
syntax Services
        = WebService
        | RSS
 ;
syntax WebService
        = 
        Services linkedServices+
 ;
syntax RSS
        = 
        String name String URL String descriptions
 ;
