@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ComponentUML

syntax Entity
        = 
        ANY methods+ ANY attributes+ ANY associationEnds+
 ;
syntax AssociationEnd
        = 
        ANY type ANY association
 ;
syntax Association
        = 
        associationEnds: ANY
 ;
syntax Method
        = 
        entity: ANY
 ;
syntax Attribute
        = 
        entity: ANY
 ;
