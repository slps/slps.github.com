@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module UseCase

syntax Actor
        = 
        name: String
 ;
syntax UseCase
        = 
        Include include+ Extend extend+
 ;
syntax Extend
        = 
        UseCase extension+
 ;
syntax Include
        = 
        UseCase includingCase+
 ;
syntax UseCaseContainer
        = 
        NamedElement ownedElement+
 ;
syntax BehavioredClassifier
        = 
        ()
 ;
syntax NamedElement
        = Actor
        | UseCase
        | Association
 ;
syntax Association
        = 
        Actor actor UseCase useCase
 ;
syntax String
        = 
        String
 ;
