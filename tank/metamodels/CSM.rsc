@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module CSM

syntax CSM
        = 
        Step step+ GeneralResource generalResource+ Scenarion scenarion+
 ;
syntax GeneralResource
        = ActiveResource
        | PassiveResource
        | ResourceAcquire resourceAcquire+ ResourceRelease resourceRelease+
 ;
syntax Step
        = Start
        | End
        | ResourceAcquire
        | ResourceRelease
        | PathConnection postPath PathConnection prePath ActiveResource activeResource
 ;
syntax Scenarion
        = Step
        | Step step+ Start root+
 ;
syntax Start
        = 
        workload: Workload
 ;
syntax End
        = 
        PathConnection postPath PathConnection prePath ActiveResource activeResource
 ;
syntax ResourceAcquire
        = 
        generalResource: GeneralResource
 ;
syntax ResourceRelease
        = 
        generalResource: GeneralResource
 ;
syntax Workload
        = 
        start: Start
 ;
syntax Component
        = 
        ()
 ;
syntax ProcessingResource
        = 
        Step step+
 ;
syntax ExternalService
        = 
        Step step+
 ;
syntax ActiveResource
        = ProcessingResource
        | ExternalService
        | Step step+
 ;
syntax PassiveResource
        = 
        Component
 ;
syntax Message
        = 
        ()
 ;
syntax PathConnection
        = Join
        | Fork
        | Merge
        | Branch
        | Seqence
        | Message message Step post+ Step pre+
 ;
syntax Join
        = 
        Message message Step post+ Step pre+
 ;
syntax Fork
        = 
        Message message Step post+ Step pre+
 ;
syntax Merge
        = 
        Message message Step post+ Step pre+
 ;
syntax Branch
        = 
        Message message Step post+ Step pre+
 ;
syntax Seqence
        = 
        Message message Step post+ Step pre+
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
