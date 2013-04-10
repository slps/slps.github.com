@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ComponentUML

syntax Entity
        = 
        Method methods+ Attribute attributes+ AssociationEnd associationEnds+
 ;
syntax AssociationEnd
        = 
        Entity type Association association
 ;
syntax Association
        = 
        associationEnds: AssociationEnd
 ;
syntax Method
        = 
        entity: Entity
 ;
syntax Attribute
        = 
        entity: Entity
 ;
