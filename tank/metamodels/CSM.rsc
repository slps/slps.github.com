@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module CSM

syntax CSM
        = 
        ANY step+ ANY generalResource+ ANY scenarion+
 ;
syntax GeneralResource
        = 
        ANY resourceAcquire+ ANY resourceRelease+
 ;
syntax Step
        = 
        ANY postPath ANY prePath ANY activeResource
 ;
syntax Scenarion
        = 
        ANY step+ ANY root+
 ;
syntax Start
        = 
        workload: ANY
 ;
syntax End
        = 
        ()
 ;
syntax ResourceAcquire
        = 
        generalResource: ANY
 ;
syntax ResourceRelease
        = 
        generalResource: ANY
 ;
syntax Workload
        = 
        start: ANY
 ;
syntax Component
        = 
        ()
 ;
syntax ProcessingResource
        = 
        ()
 ;
syntax ExternalService
        = 
        ()
 ;
syntax ActiveResource
        = 
        ANY step+
 ;
syntax PassiveResource
        = 
        ()
 ;
syntax Message
        = 
        ()
 ;
syntax PathConnection
        = 
        ANY message ANY post+ ANY pre+
 ;
syntax Join
        = 
        ()
 ;
syntax Fork
        = 
        ()
 ;
syntax Merge
        = 
        ()
 ;
syntax Branch
        = 
        ()
 ;
syntax Seqence
        = 
        ()
 ;
