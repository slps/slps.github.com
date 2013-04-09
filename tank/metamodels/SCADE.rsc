@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module SCADE

syntax ListString
        = 
        value: ANY
 ;
syntax ListInteger
        = 
        value: ANY
 ;
syntax Model
        = 
        ANY library ANY pathname ANY descriptor ANY project ANY fileRef ANY storageUnitM+ ANY enumsBlock ANY importedOperator+ ANY client+ ANY libraries+ ANY allLibry+ ANY typeM+ ANY model ANY coverageFileM ANY criterionFileM ANY root ANY all+ ANY application ANY reference+ ANY tmpNode+ ANY constBlockK ANY node ANY varBlockK ANY typeBlock ANY refinement ANY implementation ANY constant ANY allConstant ANY allvariable ANY variable ANY allConstVar ANY constVar ANY constBlock ANY varBlock ANY allNamedType ANY namedType
 ;
syntax Implementation
        = 
        ANY key ANY namedTypeI+
 ;
syntax ConstBlock
        = 
        ANY modelC ANY keyC ANY key ANY constant
 ;
syntax VarBlock
        = 
        ANY variable ANY keyVB ANY key
 ;
syntax GlobalVariable
        = 
        key: ANY
 ;
syntax TypeBlock
        = 
        ANY type ANY key
 ;
syntax Session
        = 
        ANY descriptor ANY model ANY loadsModel+ ANY DefinedIn ANY loader
 ;
syntax Descriptor
        = 
        ANY modelFileName ANY sernFileName ANY sernPersistAs ANY rnetFileName ANY rnetPersistAs ANY occBase ANY size ANY nameVerify ANY checked ANY libraryModels+ ANY annTypeFiles+ ANY modelD
 ;
syntax StorageUnit
        = 
        ANY saoFileName ANY annFileName ANY persistAs ANY loaded ANY saoModified ANY annModified ANY fileRef ANY modelS ANY element+
 ;
syntax StorageElement
        = 
        ()
 ;
syntax Object
        = 
        ()
 ;
syntax Block
        = 
        ()
 ;
syntax NodeBlock
        = 
        node: ANY
 ;
syntax ModelBlock
        = 
        ()
 ;
syntax Expression
        = 
        ()
 ;
syntax Label
        = 
        expression: ANY
 ;
syntax ExprNull
        = 
        ANY label ANY exprContactE ANY exprCallE ANY dependance ANY subExprId+ ANY paramArray ANY constant ANY equationE ANY assertionE
 ;
syntax ConstValue
        = 
        ANY value ANY kind
 ;
syntax ExprContact
        = 
        ANY boolAct ANY initValue+ ANY calledOpr
 ;
syntax ExprCall
        = 
        ANY numOcc ANY predefOpr ANY parameter+ ANY exprContactEC ANY operator
 ;
syntax Operator
        = 
        ANY category ANY conversion ANY state ANY index ANY variable ANY input+ ANY output+ ANY hidden+ ANY client+ ANY modelO ANY modelOp ANY criterionO ANY intanceO+ ANY operator
 ;
syntax ExprId
        = 
        ANY exprContactEI ANY reference
 ;
syntax LocalVariable
        = 
        ANY optional ANY const ANY probe ANY pure ANY initValue ANY operatorI ANY operatorO ANY operatorH ANY nodeL ANY nodeI
 ;
syntax Node
        = 
        ANY nodeKind ANY eqBlock ANY paramBlock ANY local+ ANY internal+ ANY key ANY stateMachine ANY modelN
 ;
syntax ParamBlock
        = 
        ANY key ANY columnsSize+ ANY array+
 ;
syntax ParamArray
        = 
        ANY notes+ ANY paramBlock ANY operator ANY value+
 ;
syntax ConstVar
        = 
        ANY kind ANY type ANY client+
 ;
syntax Constant
        = 
        ANY imported ANY value ANY enumeration ANY key
 ;
syntax Variable
        = 
        ANY clock ANY definition+
 ;
syntax Type
        = 
        ()
 ;
syntax Table
        = 
        ANY size ANY typeT
 ;
syntax NamedType
        = 
        ANY kind ANY refinement+ ANY refined+ ANY to ANY from ANY implementation ANY definition ANY keyM ANY key
 ;
syntax Enumeration
        = 
        ANY value+
 ;
syntax Composite
        = 
        ()
 ;
syntax CompositeElement
        = 
        ANY typeC ANY key
 ;
syntax Structure
        = 
        ANY element
 ;
syntax Tuple
        = 
        ANY element
 ;
syntax EqBlock
        = 
        ANY equation+ ANY assertion ANY key ANY calledOperator+ ANY referencedId+
 ;
syntax Equation
        = 
        ANY rotation ANY symetrical ANY terminator ANY eqBlock ANY left+ ANY right ANY outEdge+ ANY position ANY size
 ;
syntax Assertion
        = 
        ANY key ANY expression ANY edge ANY position
 ;
syntax Annotable
        = 
        ()
 ;
syntax Prop
        = 
        ANY name ANY values+ ANY entity ANY configurationP
 ;
syntax Configuration
        = 
        ANY name ANY propC+ ANY projectC
 ;
syntax Project
        = 
        ANY pathname ANY configuration+ ANY fileRef+ ANY owner+
 ;
syntax Element
        = 
        ()
 ;
syntax FileRef
        = 
        ANY pathname ANY persistAs ANY DefinedIn
 ;
syntax Folder
        = 
        ANY extensions ANY element+
 ;
syntax Reference
        = 
        ()
 ;
syntax TypeReference
        = 
        
 ;
syntax OperatorReference
        = 
        
 ;
syntax VariableReference
        = 
        
 ;
syntax Error
        = 
        ()
 ;
syntax Edge
        = 
        ANY leftVarIndex ANY labelOrientation ANY leftVar ANY rightExpression ANY srcEquation ANY assertion ANY position+ ANY dstEquation
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
        ()
 ;
syntax StateObj
        = 
        ()
 ;
syntax GraphicalObject
        = 
        ()
 ;
syntax StInputOutput
        = 
        ()
 ;
syntax StInitInput
        = 
        ANY name ANY type ANY clock ANY const ANY optional
 ;
syntax StInput
        = 
        ANY name ANY type ANY clock ANY const ANY optional
 ;
syntax StOutput
        = 
        ANY name ANY type ANY clock ANY const ANY optional
 ;
syntax Transition
        = 
        ANY conditions ANY transKind ANY state1 ANY state2
 ;
syntax State
        = 
        ANY name ANY cx ANY cy ANY transition1+ ANY transition2+ ANY stOutput
 ;
syntax InitialStPtr
        = 
        ANY cx ANY cy ANY state
 ;
syntax StateMachine
        = 
        ANY initialStPtr ANY state+ ANY transition+
 ;
syntax Base
        = 
        ()
 ;
syntax StateBase
        = 
        ANY DefineIn
 ;
syntax AnnNote
        = 
        ANY name ANY modified ANY annNoteType ANY annotable ANY annAttValue+
 ;
syntax AnnAttValue
        = 
        ()
 ;
syntax AnnNoteType
        = 
        ANY name ANY annAttDefinition ANY annAttGroup ANY key
 ;
syntax AnnAttDefinition
        = 
        ANY name ANY type ANY annAttGroup ANY key ANY annProperty
 ;
syntax AnnAttIntValue
        = 
        value: ANY
 ;
syntax AnnAttBoolValue
        = 
        value: ANY
 ;
syntax AnnAttCharValue
        = 
        value: ANY
 ;
syntax AnnAttRealValue
        = 
        value: ANY
 ;
syntax AnnAttStringValue
        = 
        value: ANY
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
        = 
        ANY name ANY type ANY key
 ;
syntax AnnPropertyInt
        = 
        value: ANY
 ;
syntax AnnPropertyBool
        = 
        value: ANY
 ;
syntax AnnPropertyChar
        = 
        value: ANY
 ;
syntax AnnPropertyReal
        = 
        value: ANY
 ;
syntax AnnPropertyString
        = 
        value: ANY
 ;
syntax AnnPropertyEnum
        = 
        value: ANY
 ;
syntax AnnotSchema
        = 
        ANY pathname ANY annNoteType ANY annCategory
 ;
syntax AnnCategory
        = 
        ANY name ANY key ANY anootability+
 ;
syntax Annotability
        = 
        ANY minCardinality ANY maxCardinality ANY defaultNote ANY annNoteType
 ;
syntax AnnAttGroup
        = 
        ANY name ANY key
 ;
syntax File
        = 
        ()
 ;
syntax MtcApplication
        = 
        ANY coverageFileCov+ ANY criterionFileCri+ ANY modelM
 ;
syntax CoverageFile
        = 
        ANY record ANY modelCov ANY application ANY recordCov
 ;
syntax CriterionFile
        = 
        ANY application ANY modelCri ANY criterionC+
 ;
syntax MtcEntity
        = 
        ()
 ;
syntax HistoryEntry
        = 
        ANY file
 ;
syntax Criterion
        = 
        ANY ident ANY name ANY description ANY criterionFileC ANY operatorC ANY element+
 ;
syntax Instance
        = 
        ANY index ANY occ ANY modelI ANY operatorI ANY associationClassI ANY caller ANY called+ ANY origin ANY related+
 ;
syntax AssociationClass
        = 
        ANY resultA ANY recordA+ ANY instanceA+
 ;
syntax Result
        = 
        ANY elementCount ANY associationClassRs ANY record
 ;
syntax Record
        = 
        ANY creator ANY name ANY date ANY author ANY description ANY key ANY associationClassRc ANY coverageFileR ANY result+
 ;
syntax Loader
        = 
        ANY descriptor ANY session
 ;
