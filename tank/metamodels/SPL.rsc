@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SPL

syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax LocatedElement
        = Program
        | Service
        | Session
        | MethodName
        | Branch
        | TypeExpression
        | Declaration
        | StructureProperty
        | FunctionCall
        | Statement
        | SelectMember
        | Expression
        | MessageField
        | Constant
        | Response
 ;
syntax Program
        = 
        service: Service
 ;
syntax Service
        = 
        String name Declaration declarations+ Session sessions+
 ;
syntax Session
        = Registration
        | Dialog
        | Event
        | Method
 ;
syntax Registration
        = 
        Declaration declarations+ Session sessions+
 ;
syntax Dialog
        = 
        Declaration declarations+ Method methods+
 ;
syntax Event
        = 
        String eventId Declaration declarations+ Method methods+
 ;
syntax Method
        = 
        TypeExpression type Direction direction MethodName methodName Argument arguments+ Statement statements+ Branch branches+
 ;
syntax Argument
        = 
        TypeExpression type Expression initExp
 ;
syntax MethodName
        = SIPMethodName
        | ControlMethodName
 ;
syntax SIPMethodName
        = 
        name: SIPMethod
 ;
syntax ControlMethodName
        = 
        name: ControlMethod
 ;
syntax Branch
        = DefaultBranch
        | NamedBranch
        | Statement statements+
 ;
syntax DefaultBranch
        = 
        Statement statements+
 ;
syntax NamedBranch
        = 
        String name+
 ;
syntax TypeExpression
        = SimpleType
        | SequenceType
        | DefinedType
 ;
syntax SimpleType
        = 
        type: PrimitiveType
 ;
syntax SequenceType
        = 
        Modifier modifier PrimitiveType type Integer size
 ;
syntax DefinedType
        = 
        typeName: String
 ;
syntax Declaration
        = VariableDeclaration
        | FunctionDeclaration
        | StructureDeclaration
 ;
syntax VariableDeclaration
        = Argument
        | WhenHeader
        | TypeExpression type Expression initExp
 ;
syntax FunctionDeclaration
        = RemoteFunctionDeclaration
        | LocalFunctionDeclaration
 ;
syntax RemoteFunctionDeclaration
        = 
        functionLocation: FunctionLocation
 ;
syntax LocalFunctionDeclaration
        = 
        Statement statements+
 ;
syntax StructureDeclaration
        = 
        Argument properties+
 ;
syntax StructureProperty
        = 
        String name TypeExpression type
 ;
syntax FunctionCall
        = 
        FunctionDeclaration function Expression parameters+
 ;
syntax Statement
        = CompoundStat
        | SetStat
        | DeclarationStat
        | ReturnStat
        | IfStat
        | WhenStat
        | ForeachStat
        | SelectStat
        | FunctionCallStat
        | ContinueStat
        | BreakStat
        | PushStat
 ;
syntax CompoundStat
        = 
        Statement statements+
 ;
syntax SetStat
        = 
        Place target Expression setValue
 ;
syntax DeclarationStat
        = 
        declaration: Declaration
 ;
syntax ReturnStat
        = 
        Expression returnedValue NamedBranch branch
 ;
syntax IfStat
        = 
        Expression condition Statement thenStatements+ Statement elseStatements+
 ;
syntax WhenStat
        = 
        Variable idExp WhenHeader whenHeaders+ Statement statements+ Statement elseStatements+
 ;
syntax ForeachStat
        = 
        String iteratorName Expression sequenceExp Statement statements+
 ;
syntax SelectStat
        = 
        Expression matchedExp SelectCase selectCases+ SelectDefault selectDefault
 ;
syntax FunctionCallStat
        = 
        functionCall: FunctionCall
 ;
syntax ContinueStat
        = 
        ()
 ;
syntax BreakStat
        = 
        ()
 ;
syntax PushStat
        = 
        Place target Expression pushedValue
 ;
syntax WhenHeader
        = 
        String headerId Constant value
 ;
syntax SelectMember
        = SelectDefault
        | SelectCase
 ;
syntax SelectDefault
        = 
        Statement statements+
 ;
syntax SelectCase
        = 
        Constant values+
 ;
syntax Expression
        = ConstantExp
        | OperatorExp
        | ForwardExp
        | WithExp
        | BlockExp
        | ReasonExp
        | BODYExp
        | RequestURIExp
        | PopExp
        | FunctionCallExp
        | Place
 ;
syntax ConstantExp
        = 
        value: Constant
 ;
syntax OperatorExp
        = 
        String opName Expression leftExp Expression rightExp
 ;
syntax ForwardExp
        = 
        Boolean isParallel Expression exp
 ;
syntax WithExp
        = 
        Expression exp MessageField msgFields+
 ;
syntax BlockExp
        = 
        exp: Expression
 ;
syntax ReasonExp
        = 
        ()
 ;
syntax BODYExp
        = 
        ()
 ;
syntax RequestURIExp
        = 
        ()
 ;
syntax PopExp
        = 
        source: Place
 ;
syntax FunctionCallExp
        = 
        functionCall: FunctionCall
 ;
syntax Place
        = SIPHeaderPlace
        | VariablePlace
 ;
syntax SIPHeaderPlace
        = 
        header: SIPHeader
 ;
syntax VariablePlace
        = PropertyCallPlace
        | Variable
 ;
syntax PropertyCallPlace
        = 
        String propName VariablePlace source
 ;
syntax Variable
        = 
        source: Declaration
 ;
syntax MessageField
        = ReasonMessageField
        | HeadedMessageField
 ;
syntax ReasonMessageField
        = 
        exp: Expression
 ;
syntax HeadedMessageField
        = 
        headerId: String
 ;
syntax Constant
        = BooleanConstant
        | IntegerConstant
        | StringConstant
        | URIConstant
        | SequenceConstant
        | ResponseConstant
 ;
syntax BooleanConstant
        = 
        value: Boolean
 ;
syntax IntegerConstant
        = 
        value: Integer
 ;
syntax StringConstant
        = 
        value: String
 ;
syntax URIConstant
        = 
        uri: String
 ;
syntax SequenceConstant
        = 
        Constant values+
 ;
syntax ResponseConstant
        = 
        response: Response
 ;
syntax Response
        = SuccessResponse
        | ErrorResponse
 ;
syntax SuccessResponse
        = 
        successKind: SuccessKind
 ;
syntax ErrorResponse
        = ClientErrorResponse
        | GlobalErrorResponse
        | RedirectionErrorResponse
        | ServerErrorResponse
 ;
syntax ClientErrorResponse
        = 
        errorKind: ClientErrorKind
 ;
syntax GlobalErrorResponse
        = 
        errorKind: GlobalErrorKind
 ;
syntax RedirectionErrorResponse
        = 
        errorKind: RedirectionErrorKind
 ;
syntax ServerErrorResponse
        = 
        errorKind: ServerErrorKind
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
