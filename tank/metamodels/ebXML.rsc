@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module EbXML

syntax MultyPartyCollaboration
        = 
        BusinessPartnerRole partners+
 ;
syntax BusinessPartnerRole
        = 
        MultyPartyCollaboration collaboration Transaction transition Performs performers+
 ;
syntax Performs
        = 
        BusinessPartnerRole performedBy BinaryCollaboration collaboration AuthorizedRole role
 ;
syntax AuthorizedRole
        = 
        Boolean isInitiator Performs performers+
 ;
syntax Transaction
        = 
        String onInitiation String conditionGuard String conditionExpression BusinessState from BusinessState to
 ;
syntax BinaryCollaboration
        = 
        String pattern String timeToPerform String preCondition String postCondition String beginsWhen String endsWhen Performs roles+ Transaction transitions+ BusinessState states+
 ;
syntax BusinessState
        = Start
        | Fork
        | Join
        | CompletionState
        | BusinessActivity
 ;
syntax Start
        = 
        BinaryCollaboration collaboration AuthorizedRole from AuthorizedRole to
 ;
syntax Fork
        = 
        waitForAll: String
 ;
syntax Join
        = 
        BinaryCollaboration collaboration AuthorizedRole from AuthorizedRole to
 ;
syntax CompletionState
        = Failure
        | Success
        | guardCondition: String
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
        = BusinessTransactionActivity
        | CollaborationActivity
 ;
syntax BusinessTransactionActivity
        = 
        String timeToPerform Boolean isConcurrent Boolean isLegallyBinding BusinessTransaction use
 ;
syntax CollaborationActivity
        = 
        use: BinaryCollaboration
 ;
syntax BusinessTransaction
        = 
        String pattern Boolean isGuaranteedDeliveryRequired String preCondition String postCondition String beginsWhen String endsWhen RequestingBusinessActivity requester RespondingBusinessActivity responder
 ;
syntax BusinessAction
        = RequestingBusinessActivity
        | RespondingBusinessActivity
 ;
syntax RequestingBusinessActivity
        = 
        String timeToAcknowledgeAcceptance BusinessTransaction transaction DocumentEnvelope documentEnvelope
 ;
syntax RespondingBusinessActivity
        = 
        BusinessTransaction transaction DocumentEnvelope documentEnvelope
 ;
syntax DocumentSecurity
        = DocumentEnvelope
        | Attachment
 ;
syntax DocumentEnvelope
        = 
        Boolean isPositiveResponse RequestingBusinessActivity requesting RespondingBusinessActivity responding Attachment attachements+ BusinessDocument document
 ;
syntax Attachment
        = 
        String mimeType String specification String version DocumentEnvelope envelope BusinessDocument document
 ;
syntax BusinessDocument
        = 
        String specificationLocation String specificationElement String conditionExpression DocumentEnvelope envelopes+ Attachment attachments+
 ;
