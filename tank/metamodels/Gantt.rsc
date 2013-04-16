@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Gantt

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Project
        = 
        String name String company Date viewDate Date viewIndex Integer ganttDividerLocation Integer ressourceDividerLocation String webLink Tasks tasks Ressource ressources+ Allocation allocations+
 ;
syntax Tasks
        = 
        String color Task tasks+
 ;
syntax Task
        = 
        String id String name Boolean meeting String color Boolean expand Integer complete Integer duration Integer priority Date start Depend depends+
 ;
syntax Depend
        = 
        String id Integer type Integer difference String hardness Task task
 ;
syntax Ressource
        = 
        String Id String name String fonction String contact String phone
 ;
syntax Date
        = 
        Integer year Integer month Integer day
 ;
syntax Allocation
        = 
        String taskId String ressourceId String name String function Boolean responsible Integer load
 ;
syntax Vacation
        = 
        ()
 ;
syntax Description
        = 
        ()
 ;
syntax Previous
        = 
        ()
 ;
syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
syntax Boolean
        = "true"
        | "false"
 ;
