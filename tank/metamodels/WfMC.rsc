@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module WfMC

syntax WorkflowProcessDefinition
        = 
        ANY participantSpecificatons+ ANY revelantDatas+ ANY applicationDeclarations+ ANY processActivities+ ANY transitionInformations+
 ;
syntax WorkflowApplicationDeclaration
        = 
        ANY processDefinition ANY processActivities+ ANY revelantDatas+
 ;
syntax WorkflowRelevantData
        = 
        ANY processDefinition ANY applicationDeclarations+ ANY processActivities+ ANY participantSpecifications+ ANY transitionInformations+
 ;
syntax WorkflowParticipantSpecification
        = 
        ANY processDefinition ANY revelantDatas+ ANY processActivities+
 ;
syntax WorkflowProcessActivity
        = 
        ANY processDefinition ANY applicationDeclarations+ ANY revelantDatas+ ANY participantSpecifications+ ANY to_transitionInformation ANY from_transitionInformation
 ;
syntax TransitionInformation
        = 
        ANY processDefinition ANY revelantDatas+ ANY to_processActivity ANY from_processActivity
 ;
