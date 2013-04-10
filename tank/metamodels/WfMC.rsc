@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module WfMC

syntax WorkflowProcessDefinition
        = 
        WorkflowParticipantSpecification participantSpecificatons+ WorkflowRelevantData revelantDatas+ WorkflowApplicationDeclaration applicationDeclarations+ WorkflowProcessActivity processActivities+ TransitionInformation transitionInformations+
 ;
syntax WorkflowApplicationDeclaration
        = 
        WorkflowProcessDefinition processDefinition WorkflowProcessActivity processActivities+ WorkflowRelevantData revelantDatas+
 ;
syntax WorkflowRelevantData
        = 
        WorkflowProcessDefinition processDefinition WorkflowApplicationDeclaration applicationDeclarations+ WorkflowProcessActivity processActivities+ WorkflowParticipantSpecification participantSpecifications+ TransitionInformation transitionInformations+
 ;
syntax WorkflowParticipantSpecification
        = 
        WorkflowProcessDefinition processDefinition WorkflowRelevantData revelantDatas+ WorkflowProcessActivity processActivities+
 ;
syntax WorkflowProcessActivity
        = 
        WorkflowProcessDefinition processDefinition WorkflowApplicationDeclaration applicationDeclarations+ WorkflowRelevantData revelantDatas+ WorkflowParticipantSpecification participantSpecifications+ TransitionInformation to_transitionInformation TransitionInformation from_transitionInformation
 ;
syntax TransitionInformation
        = 
        WorkflowProcessDefinition processDefinition WorkflowRelevantData revelantDatas+ WorkflowProcessActivity to_processActivity WorkflowProcessActivity from_processActivity
 ;
