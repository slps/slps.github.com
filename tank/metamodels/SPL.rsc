@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SPL

syntax LocatedElement
        = 
        ()
 ;
syntax Program
        = 
        service: ANY
 ;
syntax Service
        = 
        ANY name ANY declarations+ ANY sessions+
 ;
syntax Session
        = 
        ()
 ;
syntax Registration
        = 
        ANY declarations+ ANY sessions+
 ;
syntax Dialog
        = 
        ANY declarations+ ANY methods+
 ;
syntax Event
        = 
        ANY eventId ANY declarations+ ANY methods+
 ;
syntax Method
        = 
        ANY type ANY direction ANY methodName ANY arguments+ ANY statements+ ANY branches+
 ;
syntax Argument
        = 
        ()
 ;
syntax MethodName
        = 
        ()
 ;
syntax SIPMethodName
        = 
        name: ANY
 ;
syntax ControlMethodName
        = 
        name: ANY
 ;
syntax Branch
        = 
        ANY statements+
 ;
syntax DefaultBranch
        = 
        ()
 ;
syntax NamedBranch
        = 
        ANY name+
 ;
syntax TypeExpression
        = 
        ()
 ;
syntax SimpleType
        = 
        type: ANY
 ;
syntax SequenceType
        = 
        ANY modifier ANY type ANY size
 ;
syntax DefinedType
        = 
        typeName: ANY
 ;
syntax Declaration
        = 
        ()
 ;
syntax VariableDeclaration
        = 
        ANY type ANY initExp
 ;
syntax FunctionDeclaration
        = 
        ()
 ;
syntax RemoteFunctionDeclaration
        = 
        functionLocation: ANY
 ;
syntax LocalFunctionDeclaration
        = 
        ANY statements+
 ;
syntax StructureDeclaration
        = 
        ANY properties+
 ;
syntax StructureProperty
        = 
        ANY name ANY type
 ;
syntax FunctionCall
        = 
        ANY function ANY parameters+
 ;
syntax Statement
        = 
        ()
 ;
syntax CompoundStat
        = 
        ANY statements+
 ;
syntax SetStat
        = 
        ANY target ANY setValue
 ;
syntax DeclarationStat
        = 
        declaration: ANY
 ;
syntax ReturnStat
        = 
        ANY returnedValue ANY branch
 ;
syntax IfStat
        = 
        ANY condition ANY thenStatements+ ANY elseStatements+
 ;
syntax WhenStat
        = 
        ANY idExp ANY whenHeaders+ ANY statements+ ANY elseStatements+
 ;
syntax ForeachStat
        = 
        ANY iteratorName ANY sequenceExp ANY statements+
 ;
syntax SelectStat
        = 
        ANY matchedExp ANY selectCases+ ANY selectDefault
 ;
syntax FunctionCallStat
        = 
        functionCall: ANY
 ;
syntax ContinueStat
        = 
        
 ;
syntax BreakStat
        = 
        
 ;
syntax PushStat
        = 
        ANY target ANY pushedValue
 ;
syntax WhenHeader
        = 
        ANY headerId ANY value
 ;
syntax SelectMember
        = 
        ()
 ;
syntax SelectDefault
        = 
        ANY statements+
 ;
syntax SelectCase
        = 
        ANY values+
 ;
syntax Expression
        = 
        ()
 ;
syntax ConstantExp
        = 
        value: ANY
 ;
syntax OperatorExp
        = 
        ANY opName ANY leftExp ANY rightExp
 ;
syntax ForwardExp
        = 
        ANY isParallel ANY exp
 ;
syntax WithExp
        = 
        ANY exp ANY msgFields+
 ;
syntax BlockExp
        = 
        exp: ANY
 ;
syntax ReasonExp
        = 
        
 ;
syntax BODYExp
        = 
        
 ;
syntax RequestURIExp
        = 
        
 ;
syntax PopExp
        = 
        source: ANY
 ;
syntax FunctionCallExp
        = 
        functionCall: ANY
 ;
syntax Place
        = 
        ()
 ;
syntax SIPHeaderPlace
        = 
        header: ANY
 ;
syntax VariablePlace
        = 
        ()
 ;
syntax PropertyCallPlace
        = 
        ANY propName ANY source
 ;
syntax Variable
        = 
        source: ANY
 ;
syntax MessageField
        = 
        ()
 ;
syntax ReasonMessageField
        = 
        ANY exp
 ;
syntax HeadedMessageField
        = 
        headerId: ANY
 ;
syntax Constant
        = 
        ()
 ;
syntax BooleanConstant
        = 
        value: ANY
 ;
syntax IntegerConstant
        = 
        value: ANY
 ;
syntax StringConstant
        = 
        value: ANY
 ;
syntax URIConstant
        = 
        uri: ANY
 ;
syntax SequenceConstant
        = 
        ANY values+
 ;
syntax ResponseConstant
        = 
        response: ANY
 ;
syntax Response
        = 
        ()
 ;
syntax SuccessResponse
        = 
        successKind: ANY
 ;
syntax ErrorResponse
        = 
        
 ;
syntax ClientErrorResponse
        = 
        errorKind: ANY
 ;
syntax GlobalErrorResponse
        = 
        errorKind: ANY
 ;
syntax RedirectionErrorResponse
        = 
        errorKind: ANY
 ;
syntax ServerErrorResponse
        = 
        errorKind: ANY
 ;
syntax Direction
        = inout: ()
        | in: ()
        | out: ()
 ;
syntax SIPMethod
        = ACK: ()
        | BYE: ()
        | CANCEL: ()
        | INVITE: ()
        | NOTIFY: ()
        | OPTIONS: ()
        | REACK: ()
        | REGISTER: ()
        | REINVITE: ()
        | REREGISTER: ()
        | RESUBSCRIBE: ()
        | SUBSCRIBE: ()
 ;
syntax ControlMethod
        = deploy: ()
        | undeploy: ()
        | uninvite: ()
        | unregister: ()
        | unsubscribe: ()
 ;
syntax PrimitiveType
        = void: ()
        | bool: ()
        | int: ()
        | request: ()
        | response: ()
        | string: ()
        | time: ()
        | uri: ()
 ;
syntax Modifier
        = LIFO: ()
        | FIFO: ()
 ;
syntax FunctionLocation
        = remote: ()
        | local: ()
 ;
syntax SIPHeader
        = CALL_ID: ()
        | CONTACT: ()
        | CSEQ: ()
        | EVENT: ()
        | FROM: ()
        | MAX_FORWARDS: ()
        | SUBSCRIPTION_STATE: ()
        | TO: ()
        | VIA: ()
 ;
syntax SuccessKind
        = OK: ()
        | ACCEPTED: ()
 ;
syntax ClientErrorKind
        = ADDRESS_INCOMPLETE: ()
        | AMBIGUOUS: ()
        | BAD_EXTENSION: ()
        | BAD_REQUEST: ()
        | BUSY_HERE: ()
        | CALL_OR_TRANSACTION_DOES_NOT_EXIST: ()
        | EXTENSION_REQUIRED: ()
        | FORBIDDEN: ()
        | GONE: ()
        | INTERVAL_TOO_BRIEF: ()
        | LOOP_DETECTED: ()
        | METHOD_NOT_ALLOWED: ()
        | NOT_ACCEPTABLE_HERE: ()
        | NOT_ACCEPTABLE: ()
        | NOT_FOUND: ()
        | PAYMENT_REQUIRED: ()
        | PROXY_AUTHENTICATION_REQUIRED: ()
        | REQUESTURI_TOO_LONG: ()
        | REQUEST_ENTITY_TOO_LARGE: ()
        | REQUEST_PENDING: ()
        | REQUEST_TERMINATED: ()
        | REQUEST_TIMEOUT: ()
        | TEMPORARILY_UNAVAILABLE: ()
        | TOO_MANY_HOPS: ()
        | UNAUTHORIZED: ()
        | UNDECIPHERABLE: ()
        | UNSUPPORTED_MEDIA_TYPE: ()
        | UNSUPPORTED_URI_SCHEME: ()
 ;
syntax GlobalErrorKind
        = BUSY_EVERYWHERE: ()
        | DECLINE: ()
        | DOES_NOT_EXIST_ANYWHERE: ()
        | NOT_ACCEPTABLE: ()
 ;
syntax RedirectionErrorKind
        = ALTERNATIVE_SERVICE: ()
        | MOVED_PERMANENTLY: ()
        | MOVED_TEMPORARILY: ()
        | MULTIPLE_CHOICES: ()
        | USE_PROXY: ()
 ;
syntax ServerErrorKind
        = BAD_GATEWAY: ()
        | MESSAGE_TOO_LARGE: ()
        | NOT_IMPLEMENTED: ()
        | SERVER_INTERNAL_ERROR: ()
        | SERVER_TIMEOUT: ()
        | SERVICE_UNAVAILABLE: ()
        | VERSION_NOT_SUPPORTED: ()
 ;
