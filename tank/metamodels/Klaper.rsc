@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Klaper

syntax Resource
        = 
        String name String type Integer capacity String schedulingPolicy String description Acquire acquire Release release
 ;
syntax Service
        = 
        String name String formalParams String speedAttr String failAttr String description Behavior behavior+ Behavior behaviorUsed+ ServiceCall serviceCall+
 ;
syntax Behavior
        = Step
        | Step stepn Step stepb+ Service service Service usedService+ WorkLoad workLoad
 ;
syntax WorkLoad
        = 
        String workLoadType String arrivalProcess String population String initialResource Behavior behavior
 ;
syntax Step
        = Start
        | End
        | Control
        | InternalActivity
        | ServiceCall
        | String name String repetition String internalExecTime String internalFailProb String completionModel ServiceCall serviceCall+ Step predecessor+ Step successor+ Behavior behavior Behavior nestedBehavior
 ;
syntax Start
        = 
        String name String repetition String internalExecTime String internalFailProb String completionModel ServiceCall serviceCall+ Step predecessor+ Step successor+ Behavior behavior Behavior nestedBehavior
 ;
syntax End
        = 
        String name String repetition String internalExecTime String internalFailProb String completionModel ServiceCall serviceCall+ Step predecessor+ Step successor+ Behavior behavior Behavior nestedBehavior
 ;
syntax Control
        = Branch
        | Fork
        | Join
        | Acquire
        | Release
 ;
syntax InternalActivity
        = 
        String name String repetition String internalExecTime String internalFailProb String completionModel ServiceCall serviceCall+ Step predecessor+ Step successor+ Behavior behavior Behavior nestedBehavior
 ;
syntax ServiceCall
        = 
        String resourceType String serviceName Boolean isSynch ActualParam actualParam+ Step step Service calledService
 ;
syntax ActualParam
        = 
        String value ServiceCall serviceCall
 ;
syntax Branch
        = 
        branchProbs: String
 ;
syntax Fork
        = 
        ()
 ;
syntax Join
        = 
        ()
 ;
syntax Acquire
        = 
        String resourceUnits Resource resource
 ;
syntax Release
        = 
        String resourceUnits Resource resource
 ;
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
