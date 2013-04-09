@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module EAI

syntax FCMSource
        = 
        ()
 ;
syntax EAISource
        = 
        ANY resources+
 ;
syntax FCMSink
        = 
        ()
 ;
syntax EAISink
        = 
        ANY resources+
 ;
syntax EAIResource
        = 
        ()
 ;
syntax EAIQueue
        = 
        ANY maxLength ANY name
 ;
