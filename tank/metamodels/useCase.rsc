@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module UseCase

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
