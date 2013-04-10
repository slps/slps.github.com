@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SCADE

syntax ListString
        = 
        value: String
 ;
syntax ListInteger
        = 
        value: Integer
 ;
syntax Model
        = 
        Boolean library String pathname Descriptor descriptor Project project FileRef fileRef StorageUnit storageUnitM+ ConstBlock enumsBlock Operator importedOperator+ Model client+ Model libraries+ Model allLibry+ Type typeM+ Model model CoverageFile coverageFileM CriterionFile criterionFileM Instance root Operator all+ MtcApplication application Reference reference+ Node tmpNode+ ConstBlock constBlockK Node node VarBlock varBlockK TypeBlock typeBlock NamedType refinement Implementation implementation Constant constant Constant allConstant GlobalVariable allvariable GlobalVariable variable ConstVar allConstVar ConstVar constVar ConstBlock constBlock VarBlock varBlock NamedType allNamedType NamedType namedType
 ;
syntax Implementation
        = 
        Model key NamedType namedTypeI+
 ;
syntax ConstBlock
        = 
        Model modelC Model keyC Model key Constant constant
 ;
syntax VarBlock
        = 
        GlobalVariable variable Model keyVB Model key
 ;
syntax GlobalVariable
        = 
        key: VarBlock
 ;
syntax TypeBlock
        = 
        NamedType type Model key
 ;
syntax Session
        = 
        Descriptor descriptor Model model Model loadsModel+ String DefinedIn Loader loader
 ;
syntax Descriptor
        = 
        String modelFileName String sernFileName String sernPersistAs String rnetFileName String rnetPersistAs Integer occBase Integer size Boolean nameVerify Boolean checked ListString libraryModels+ ListString annTypeFiles+ Model modelD
 ;
syntax StorageUnit
        = 
        String saoFileName String annFileName String persistAs Boolean loaded Boolean saoModified Boolean annModified FileRef fileRef Model modelS StorageElement element+
 ;
syntax StorageElement
        = 
        Block
 ;
syntax Object
        = Implementation
        | Descriptor
        | StorageUnit
        | Expression
        | Label
        | CompositeElement
        | Annotable
        | Edge
        | StateMachine
 ;
syntax Block
        = NodeBlock
        | ModelBlock
 ;
syntax NodeBlock
        = ParamBlock
        | EqBlock
        | node: Node
 ;
syntax ModelBlock
        = ConstBlock
        | VarBlock
        | TypeBlock
 ;
syntax Expression
        = ExprNull
        | ConstValue
        | ExprContact
        | ExprCall
        | ExprId
 ;
syntax Label
        = 
        expression: Expression
 ;
syntax ExprNull
        = 
        Label label ExprContact exprContactE ExprCall exprCallE ConstVar dependance ExprId subExprId+ ParamArray paramArray Constant constant Equation equationE Assertion assertionE
 ;
syntax ConstValue
        = 
        String value Object kind
 ;
syntax ExprContact
        = 
        ExprId boolAct Expression initValue+ ExprCall calledOpr
 ;
syntax ExprCall
        = 
        Integer numOcc Integer predefOpr Expression parameter+ ExprContact exprContactEC Operator operator
 ;
syntax Operator
        = Node
        | String category Boolean conversion Boolean state Integer index LocalVariable variable LocalVariable input+ LocalVariable output+ LocalVariable hidden+ EqBlock client+ Model modelO Model modelOp Criterion criterionO Instance intanceO+ Operator operator
 ;
syntax ExprId
        = 
        ExprContact exprContactEI ConstVar reference
 ;
syntax LocalVariable
        = 
        Boolean optional Boolean const Boolean probe Boolean pure String initValue Operator operatorI Operator operatorO Operator operatorH Node nodeL Node nodeI
 ;
syntax Node
        = 
        Object nodeKind EqBlock eqBlock ParamBlock paramBlock LocalVariable local+ LocalVariable internal+ Model key StateMachine stateMachine Model modelN
 ;
syntax ParamBlock
        = 
        Node key ListInteger columnsSize+ ParamArray array+
 ;
syntax ParamArray
        = 
        ListString notes+ ParamBlock paramBlock Operator operator Expression value+
 ;
syntax ConstVar
        = Constant
        | Variable
        | Object kind Type type EqBlock client+
 ;
syntax Constant
        = 
        Boolean imported Expression value Enumeration enumeration ConstBlock key
 ;
syntax Variable
        = GlobalVariable
        | LocalVariable
        | Variable clock Equation definition+
 ;
syntax Type
        = Table
        | NamedType
        | Enumeration
        | Composite
 ;
syntax Table
        = 
        Integer size Type typeT
 ;
syntax NamedType
        = 
        Object kind NamedType refinement+ NamedType refined+ Operator to Operator from Implementation implementation Type definition Model keyM TypeBlock key
 ;
syntax Enumeration
        = 
        Constant value+
 ;
syntax Composite
        = Structure
        | Tuple
 ;
syntax CompositeElement
        = 
        Type typeC Composite key
 ;
syntax Structure
        = 
        element: CompositeElement
 ;
syntax Tuple
        = 
        element: CompositeElement
 ;
syntax EqBlock
        = 
        Equation equation+ Assertion assertion Node key Operator calledOperator+ ConstVar referencedId+
 ;
syntax Equation
        = 
        Integer rotation Boolean symetrical Boolean terminator EqBlock eqBlock Variable left+ Expression right Edge outEdge+ RPoint position RSize size
 ;
syntax Assertion
        = 
        EqBlock key Expression expression Edge edge RPoint position
 ;
syntax Annotable
        = StorageElement
        | ParamArray
        | ConstVar
        | Type
        | Equation
        | Assertion
        | Project
 ;
syntax Prop
        = 
        String name ListString values+ Annotable entity Configuration configurationP
 ;
syntax Configuration
        = 
        String name Prop propC+ Project projectC
 ;
syntax Project
        = 
        String pathname Configuration configuration+ FileRef fileRef+ Element owner+
 ;
syntax Element
        = FileRef
        | Folder
 ;
syntax FileRef
        = 
        String pathname String persistAs String DefinedIn
 ;
syntax Folder
        = 
        String extensions Element element+
 ;
syntax Reference
        = TypeReference
        | OperatorReference
        | VariableReference
 ;
syntax TypeReference
        = 
        ()
 ;
syntax OperatorReference
        = 
        ()
 ;
syntax VariableReference
        = 
        ()
 ;
syntax Error
        = 
        ()
 ;
syntax Edge
        = 
        Integer leftVarIndex Integer labelOrientation Variable leftVar ExprId rightExpression Equation srcEquation Assertion assertion RPoint position+ Equation dstEquation
 ;
syntax RPoint
        = 
        ()
 ;
syntax RSize
        = 
        ()
 ;
syntax Entity
        = 
        StateObj
 ;
syntax StateObj
        = 
        GraphicalObject
 ;
syntax GraphicalObject
        = StInputOutput
        | Transition
        | State
        | InitialStPtr
 ;
syntax StInputOutput
        = StInitInput
        | StInput
        | StOutput
 ;
syntax StInitInput
        = 
        String name String type Boolean clock Boolean const Boolean optional
 ;
syntax StInput
        = 
        String name String type Boolean clock Boolean const Boolean optional
 ;
syntax StOutput
        = 
        String name String type Boolean clock Boolean const Boolean optional
 ;
syntax Transition
        = 
        String conditions Integer transKind State state1 State state2
 ;
syntax State
        = 
        String name Double cx Double cy Transition transition1+ Transition transition2+ StOutput stOutput
 ;
syntax InitialStPtr
        = 
        Double cx Double cy State state
 ;
syntax StateMachine
        = 
        InitialStPtr initialStPtr State state+ Transition transition+
 ;
syntax Base
        = 
        StateBase
 ;
syntax StateBase
        = 
        DefineIn: String
 ;
syntax AnnNote
        = 
        String name Boolean modified AnnNoteType annNoteType Annotable annotable AnnAttValue annAttValue+
 ;
syntax AnnAttValue
        = AnnAttIntValue
        | AnnAttBoolValue
        | AnnAttCharValue
        | AnnAttRealValue
        | AnnAttStringValue
 ;
syntax AnnNoteType
        = 
        String name AnnAttDefinition annAttDefinition AnnAttGroup annAttGroup AnnotSchema key
 ;
syntax AnnAttDefinition
        = 
        String name Integer type AnnAttGroup annAttGroup AnnNoteType key AnnProperty annProperty
 ;
syntax AnnAttIntValue
        = 
        value: Integer
 ;
syntax AnnAttBoolValue
        = 
        value: Boolean
 ;
syntax AnnAttCharValue
        = 
        value: Char
 ;
syntax AnnAttRealValue
        = 
        value: Double
 ;
syntax AnnAttStringValue
        = AnnAttFileValue
        | AnnAttDateValue
        | AnnAttOidValue
        | AnnAttEnumValue
        | value: String
 ;
syntax AnnAttFileValue
        = 
        ()
 ;
syntax AnnAttDateValue
        = 
        ()
 ;
syntax AnnAttOidValue
        = 
        ()
 ;
syntax AnnAttEnumValue
        = 
        ()
 ;
syntax AnnProperty
        = AnnPropertyInt
        | AnnPropertyBool
        | AnnPropertyChar
        | AnnPropertyReal
        | AnnPropertyString
        | AnnPropertyEnum
        | String name Integer type AnnAttDefinition key
 ;
syntax AnnPropertyInt
        = 
        value: Integer
 ;
syntax AnnPropertyBool
        = 
        value: Boolean
 ;
syntax AnnPropertyChar
        = 
        value: Char
 ;
syntax AnnPropertyReal
        = 
        value: Double
 ;
syntax AnnPropertyString
        = 
        value: String
 ;
syntax AnnPropertyEnum
        = 
        value: Object
 ;
syntax AnnotSchema
        = 
        String pathname AnnNoteType annNoteType AnnCategory annCategory
 ;
syntax AnnCategory
        = 
        String name AnnotSchema key Annotability anootability+
 ;
syntax Annotability
        = 
        Integer minCardinality Integer maxCardinality Boolean defaultNote AnnNoteType annNoteType
 ;
syntax AnnAttGroup
        = 
        String name AnnNoteType key
 ;
syntax File
        = CoverageFile
        | CriterionFile
 ;
syntax MtcApplication
        = 
        CoverageFile coverageFileCov+ CriterionFile criterionFileCri+ Model modelM
 ;
syntax CoverageFile
        = 
        Record record Model modelCov MtcApplication application Record recordCov
 ;
syntax CriterionFile
        = 
        MtcApplication application Model modelCri Criterion criterionC+
 ;
syntax MtcEntity
        = Element
        | File
        | HistoryEntry
        | Criterion
        | Instance
        | Result
        | Record
 ;
syntax HistoryEntry
        = 
        file: File
 ;
syntax Criterion
        = 
        String ident String name String description CriterionFile criterionFileC Operator operatorC Element element+
 ;
syntax Instance
        = 
        Integer index String occ Model modelI Operator operatorI AssociationClass associationClassI Instance caller Instance called+ Instance origin Instance related+
 ;
syntax AssociationClass
        = 
        Result resultA Record recordA+ Instance instanceA+
 ;
syntax Result
        = 
        Integer elementCount AssociationClass associationClassRs Record record
 ;
syntax Record
        = 
        String creator String name String date String author String description CoverageFile key AssociationClass associationClassRc CoverageFile coverageFileR Result result+
 ;
syntax Loader
        = 
        Descriptor descriptor Session session
 ;
