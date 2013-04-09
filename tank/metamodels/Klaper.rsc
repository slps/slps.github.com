@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Klaper

syntax Resource
        = 
        ANY name ANY type ANY capacity ANY schedulingPolicy ANY description ANY acquire ANY release
 ;
syntax Service
        = 
        ANY name ANY formalParams ANY speedAttr ANY failAttr ANY description ANY behavior+ ANY behaviorUsed+ ANY serviceCall+
 ;
syntax Behavior
        = 
        ANY stepn ANY stepb+ ANY service ANY usedService+ ANY workLoad
 ;
syntax WorkLoad
        = 
        ANY workLoadType ANY arrivalProcess ANY population ANY initialResource ANY behavior
 ;
syntax Step
        = 
        ANY name ANY repetition ANY internalExecTime ANY internalFailProb ANY completionModel ANY serviceCall+ ANY predecessor+ ANY successor+ ANY behavior ANY nestedBehavior
 ;
syntax Start
        = 
        ()
 ;
syntax End
        = 
        ()
 ;
syntax Control
        = 
        ()
 ;
syntax InternalActivity
        = 
        ()
 ;
syntax ServiceCall
        = 
        ANY resourceType ANY serviceName ANY isSynch ANY actualParam+ ANY step ANY calledService
 ;
syntax ActualParam
        = 
        ANY value ANY serviceCall
 ;
syntax Branch
        = 
        branchProbs: ANY
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
        ANY resourceUnits ANY resource
 ;
syntax Release
        = 
        ANY resourceUnits ANY resource
 ;
