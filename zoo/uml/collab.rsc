@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Collab

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Package
        = 
        CollaborationPackage ownedEltColl InteractionPackage ownedEltInt+
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
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
