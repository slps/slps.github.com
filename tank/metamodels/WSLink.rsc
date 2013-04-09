@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module WSLink

syntax LocatedElement
        = 
        ()
 ;
syntax Network
        = 
        ANY services+ ANY name
 ;
syntax Services
        = 
        ()
 ;
syntax WebService
        = 
        ANY linkedServices+
 ;
syntax RSS
        = 
        ANY name ANY URL ANY descriptions
 ;
