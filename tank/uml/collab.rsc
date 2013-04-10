@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Collab

syntax Package
        = 
        ()
 ;
syntax ProviderClause
        = Package
        | CollaborationPackage ownedEltColl InteractionPackage ownedEltInt+
 ;
syntax CollaborationPackage
        = 
        ownedElt: Collaboration
 ;
syntax Collaboration
        = 
        Interaction interaction+ AssociationRole ownedEltAss ClassifierRole ownedEltClass
 ;
syntax InteractionPackage
        = 
        ProviderClause providerClause Interaction ownedElt
 ;
syntax Interaction
        = 
        Collaboration context Message message+
 ;
syntax AssociationRole
        = 
        connection: AssociationEndRole
 ;
syntax ClassifierRole
        = 
        AssociationEndRole associationEndRole+ Message receiverMess Message senderMess Operation availableFeature+ Interface base
 ;
syntax AssociationEndRole
        = 
        AssociationRole associationRole ClassifierRole type
 ;
syntax Message
        = 
        Message message+ Message activator Interaction interaction+ ClassifierRole receiver ClassifierRole sender Request specification
 ;
syntax Request
        = Operation
        | Message message+
 ;
syntax Operation
        = 
        ClassifierRole classifierRole+ Interface owner
 ;
syntax Interface
        = 
        ClassifierRole classifierRole+ Operation feature+
 ;
