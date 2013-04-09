@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module EbXML

syntax MultyPartyCollaboration
        = 
        ANY partners+
 ;
syntax BusinessPartnerRole
        = 
        ANY collaboration ANY transition ANY performers+
 ;
syntax Performs
        = 
        ANY performedBy ANY collaboration ANY role
 ;
syntax AuthorizedRole
        = 
        ANY isInitiator ANY performers+
 ;
syntax Transaction
        = 
        ANY onInitiation ANY conditionGuard ANY conditionExpression ANY from ANY to
 ;
syntax BinaryCollaboration
        = 
        ANY pattern ANY timeToPerform ANY preCondition ANY postCondition ANY beginsWhen ANY endsWhen ANY roles+ ANY transitions+ ANY states+
 ;
syntax BusinessState
        = 
        ()
 ;
syntax Start
        = 
        ANY collaboration ANY from ANY to
 ;
syntax Fork
        = 
        waitForAll: ANY
 ;
syntax Join
        = 
        ANY collaboration ANY from ANY to
 ;
syntax CompletionState
        = 
        guardCondition: ANY
 ;
syntax Failure
        = 
        ()
 ;
syntax Success
        = 
        ()
 ;
syntax BusinessActivity
        = 
        ()
 ;
syntax BusinessTransactionActivity
        = 
        ANY timeToPerform ANY isConcurrent ANY isLegallyBinding ANY use
 ;
syntax CollaborationActivity
        = 
        use: ANY
 ;
syntax BusinessTransaction
        = 
        ANY pattern ANY isGuaranteedDeliveryRequired ANY preCondition ANY postCondition ANY beginsWhen ANY endsWhen ANY requester ANY responder
 ;
syntax BusinessAction
        = 
        ()
 ;
syntax RequestingBusinessActivity
        = 
        ANY timeToAcknowledgeAcceptance ANY transaction ANY documentEnvelope
 ;
syntax RespondingBusinessActivity
        = 
        ANY transaction ANY documentEnvelope
 ;
syntax DocumentSecurity
        = 
        ()
 ;
syntax DocumentEnvelope
        = 
        ANY isPositiveResponse ANY requesting ANY responding ANY attachements+ ANY document
 ;
syntax Attachment
        = 
        ANY mimeType ANY specification ANY version ANY envelope ANY document
 ;
syntax BusinessDocument
        = 
        ANY specificationLocation ANY specificationElement ANY conditionExpression ANY envelopes+ ANY attachments+
 ;
