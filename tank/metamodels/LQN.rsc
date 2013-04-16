@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module LQN

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
syntax LQN
        = 
        String name String comment String author Date created_On Date modified_On Task task+ Processor processor+
 ;
syntax Task
        = 
        String name TaskType type Integer priority Integer mutliplicity Integer replicas Entry entry+ Processor processor LQN lqn Activity activity+
 ;
syntax Processor
        = 
        String name SchedulingType scheduling Integer mutliplicity Integer replicas Integer spped Task task LQN lqn
 ;
syntax Entry
        = 
        String name Integer num_Phase Integer arrival_Rate Task contained_In Entry replay_To Call callreceives Call callsends Phase phase+ Activity activity Task task
 ;
syntax Phase
        = 
        Integer number PhaseType type Integer think_Time Integer execution_Demand Integer COV Entry entry Activity activity
 ;
syntax Activity
        = 
        String name Integer arrival_Rate Task contained_In Entry replay_To Link linkPrecedes+ Link linkfollows+ Call call+ Phase phase Entry entry Task task
 ;
syntax Link
        = 
        LinkType type Integer mean_Links Activity fromActivity Activity toActivity Activity activityPrecedes Activity activityfollows
 ;
syntax CallPhase
        = 
        Integer mean_Calls Phase refers_To Call call+
 ;
syntax Call
        = EntryCall
        | ActivityCall
        | Entry toEntry Integer num_Phases CallType type CallPhase callPhase+ Activity activity Entry entryreceives Entry entrysends
 ;
syntax EntryCall
        = 
        from_Entry: Entry
 ;
syntax ActivityCall
        = 
        fromActivity: Activity
 ;
syntax Date
        = 
        String day String month String year
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
