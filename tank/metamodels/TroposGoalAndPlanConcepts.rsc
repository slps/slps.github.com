@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module TroposGoalAndPlanConcepts

syntax Actor
        = 
        ANY decomposition+ ANY contribution+ ANY meansEnd+
 ;
syntax Decomposition
        = 
        PointOfView: ANY
 ;
syntax Contribution
        = 
        ANY metric ANY contributer ANY contributed ANY PointOfView
 ;
syntax Goal
        = 
        ANY contributionR+ ANY contributionD+ ANY meansEndS+ ANY meansEndD+ ANY booleanDecomposition ANY booleanDecLink+
 ;
syntax MeansEnd
        = 
        ANY meansR ANY means ANY end ANY PointOfView ANY meansP
 ;
syntax Resource
        = 
        ANY meansEndR+
 ;
syntax Plan
        = 
        ANY meansEndP+ ANY booleanDecompositionP ANY booleanDecLinkP+
 ;
syntax BooleanDecomposition
        = 
        ANY type ANY root ANY rootP ANY booleanDecLinkD+
 ;
syntax BooleanDecLink
        = 
        ANY booleanDecompositionB ANY target ANY targetP
 ;
syntax AndDecLink
        = 
        ()
 ;
syntax OrDecLink
        = 
        ()
 ;
