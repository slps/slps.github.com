@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module TroposGoalAndPlanConcepts

syntax Actor
        = 
        Decomposition decomposition+ Contribution contribution+ MeansEnd meansEnd+
 ;
syntax Decomposition
        = BooleanDecomposition
        | PointOfView: Actor
 ;
syntax Contribution
        = 
        String metric Goal contributer Goal contributed Actor PointOfView
 ;
syntax Goal
        = 
        Contribution contributionR+ Contribution contributionD+ MeansEnd meansEndS+ MeansEnd meansEndD+ BooleanDecomposition booleanDecomposition BooleanDecLink booleanDecLink+
 ;
syntax MeansEnd
        = 
        Resource meansR Goal means Goal end Actor PointOfView Plan meansP
 ;
syntax Resource
        = 
        MeansEnd meansEndR+
 ;
syntax Plan
        = 
        MeansEnd meansEndP+ BooleanDecomposition booleanDecompositionP BooleanDecLink booleanDecLinkP+
 ;
syntax BooleanDecomposition
        = 
        String type Goal root Plan rootP BooleanDecLink booleanDecLinkD+
 ;
syntax BooleanDecLink
        = AndDecLink
        | OrDecLink
        | BooleanDecomposition booleanDecompositionB Goal target Plan targetP
 ;
syntax AndDecLink
        = 
        ()
 ;
syntax OrDecLink
        = 
        ()
 ;
