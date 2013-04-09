@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Gantt

syntax Project
        = 
        ANY name ANY company ANY viewDate ANY viewIndex ANY ganttDividerLocation ANY ressourceDividerLocation ANY webLink ANY tasks ANY ressources+ ANY allocations+
 ;
syntax Tasks
        = 
        ANY color ANY tasks+
 ;
syntax Task
        = 
        ANY id ANY name ANY meeting ANY color ANY expand ANY complete ANY duration ANY priority ANY start ANY depends+
 ;
syntax Depend
        = 
        ANY id ANY type ANY difference ANY hardness ANY task
 ;
syntax Ressource
        = 
        ANY Id ANY name ANY fonction ANY contact ANY phone
 ;
syntax Date
        = 
        ANY year ANY month ANY day
 ;
syntax Allocation
        = 
        ANY taskId ANY ressourceId ANY name ANY function ANY responsible ANY load
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
