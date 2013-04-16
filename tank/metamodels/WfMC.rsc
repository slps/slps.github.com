@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module WfMC

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
syntax String
        = 
        String
 ;
