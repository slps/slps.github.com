@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Collab

syntax Package
        = 
        ()
 ;
syntax ProviderClause
        = 
        ANY ownedEltColl ANY ownedEltInt+
 ;
syntax CollaborationPackage
        = 
        ownedElt: ANY
 ;
syntax Collaboration
        = 
        ANY interaction+ ANY ownedEltAss ANY ownedEltClass
 ;
syntax InteractionPackage
        = 
        ANY providerClause ANY ownedElt
 ;
syntax Interaction
        = 
        ANY context ANY message+
 ;
syntax AssociationRole
        = 
        connection: ANY
 ;
syntax ClassifierRole
        = 
        ANY associationEndRole+ ANY receiverMess ANY senderMess ANY availableFeature+ ANY base
 ;
syntax AssociationEndRole
        = 
        ANY associationRole ANY type
 ;
syntax Message
        = 
        ANY message+ ANY activator ANY interaction+ ANY receiver ANY sender ANY specification
 ;
syntax Request
        = 
        ANY message+
 ;
syntax Operation
        = 
        ANY classifierRole+ ANY owner
 ;
syntax Interface
        = 
        ANY classifierRole+ ANY feature+
 ;
