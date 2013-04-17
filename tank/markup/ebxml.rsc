@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Ebxml

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
        guardCondition: String
 ;
syntax Success
        = 
        guardCondition: String
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
syntax Boolean
        = "true"
        | "false"
 ;
syntax String
        = 
        String
 ;
