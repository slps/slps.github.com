@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module LQN

syntax LQN
        = 
        ANY name ANY comment ANY author ANY created_On ANY modified_On ANY task+ ANY processor+
 ;
syntax Task
        = 
        ANY name ANY type ANY priority ANY mutliplicity ANY replicas ANY entry+ ANY processor ANY lqn ANY activity+
 ;
syntax Processor
        = 
        ANY name ANY scheduling ANY mutliplicity ANY replicas ANY spped ANY task ANY lqn
 ;
syntax Entry
        = 
        ANY name ANY num_Phase ANY arrival_Rate ANY contained_In ANY replay_To ANY callreceives ANY callsends ANY phase+ ANY activity ANY task
 ;
syntax Phase
        = 
        ANY number ANY type ANY think_Time ANY execution_Demand ANY COV ANY entry ANY activity
 ;
syntax Activity
        = 
        ANY name ANY arrival_Rate ANY contained_In ANY replay_To ANY linkPrecedes+ ANY linkfollows+ ANY call+ ANY phase ANY entry ANY task
 ;
syntax Link
        = 
        ANY type ANY mean_Links ANY fromActivity ANY toActivity ANY activityPrecedes ANY activityfollows
 ;
syntax CallPhase
        = 
        ANY mean_Calls ANY refers_To ANY call+
 ;
syntax Call
        = 
        ANY toEntry ANY num_Phases ANY type ANY callPhase+ ANY activity ANY entryreceives ANY entrysends
 ;
syntax EntryCall
        = 
        from_Entry: ANY
 ;
syntax ActivityCall
        = 
        fromActivity: ANY
 ;
syntax Date
        = 
        ANY day ANY month ANY year
 ;
syntax SchedulingType
        = FCFS: ()
        | preemptive_Priority: ()
        | head_of_line: ()
        | random: ()
 ;
syntax PhaseType
        = stochastic: ()
        | deterministic: ()
 ;
syntax CallType
        = synchronous: ()
        | asynchronous: ()
        | forwording: ()
 ;
syntax LinkType
        = and_Fork: ()
        | and_join: ()
        | basic: ()
        | or_Fork: ()
        | or_join: ()
 ;
syntax TaskType
        = a_reference: ()
        | non_reference: ()
 ;
