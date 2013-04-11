@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module EAI

syntax FCMSource
        = 
        EAISource
 ;
syntax EAISource
        = 
        EAIResource resources+
 ;
syntax FCMSink
        = 
        EAISink
 ;
syntax EAISink
        = 
        EAIResource resources+
 ;
syntax EAIResource
        = 
        EAIQueue
 ;
syntax EAIQueue
        = 
        Integer maxLength String name
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
