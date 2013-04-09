@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module UseCase

syntax Actor
        = 
        ANY name
 ;
syntax UseCase
        = 
        ANY include+ ANY extend+
 ;
syntax Extend
        = 
        ANY extension+
 ;
syntax Include
        = 
        ANY includingCase+
 ;
syntax UseCaseContainer
        = 
        ANY ownedElement+
 ;
syntax BehavioredClassifier
        = 
        ()
 ;
syntax NamedElement
        = 
        ()
 ;
syntax Association
        = 
        ANY actor ANY useCase
 ;
