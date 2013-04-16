@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MiningMart_ViewCaseRepresentation

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
syntax Case
        = 
        String name Boolean caseMode Parameter caseInput String documentation Step listOfStep+
 ;
syntax Step
        = LoopStep
        | MultiStep
        | String name String description Case belongsToCase Operator embedsOperator Step predecessors+ Step successors+
 ;
syntax LoopStep
        = 
        String name String description Case belongsToCase Operator embedsOperator Step predecessors+ Step successors+
 ;
syntax MultiStep
        = 
        iterationCondition: String
 ;
syntax Operator
        = FeatureConstruction
        | DataMinStep
        | TimeOperator
        | FeatureSelection
        | MultiRelFeatureConstr
        | RowSelection
 ;
syntax Parameter
        = 
        String name String place ParameterType parameterType Operator belongsToOperator
 ;
syntax ParameterType
        = Value: ()
        | Concept: ()
        | RelationShip: ()
        | FeatureAttribute: ()
 ;
syntax FeatureConstruction
        = Scaling
        | Discretization
        | scalingFactor: Integer
 ;
syntax DataMinStep
        = 
        Boolean loopable Integer numberOfInputParameters Integer numberOfOutputParameters Boolean manual String tool Parameter input+ Parameter output+ ExecutionElement realizes
 ;
syntax TimeOperator
        = 
        Boolean loopable Integer numberOfInputParameters Integer numberOfOutputParameters Boolean manual String tool Parameter input+ Parameter output+ ExecutionElement realizes
 ;
syntax FeatureSelection
        = 
        Boolean loopable Integer numberOfInputParameters Integer numberOfOutputParameters Boolean manual String tool Parameter input+ Parameter output+ ExecutionElement realizes
 ;
syntax MultiRelFeatureConstr
        = 
        Agregation
 ;
syntax RowSelection
        = Segmentation
        | Sampling
 ;
syntax Agregation
        = 
        ()
 ;
syntax Scaling
        = 
        scalingFactor: Integer
 ;
syntax Discretization
        = 
        scalingFactor: Integer
 ;
syntax Segmentation
        = 
        ()
 ;
syntax Sampling
        = 
        ()
 ;
syntax ExecutionElement
        = MSL_Tool
        | TransformationGroup
        | Transformation
        | DataObject source DataObject target
 ;
syntax DataObject
        = 
        ExecutionElement source ExecutionElement target
 ;
syntax MSL_Tool
        = 
        DataObject source DataObject target
 ;
syntax TransformationGroup
        = 
        Transformation transformation+
 ;
syntax Transformation
        = Function
        | StoredProcedure
        | SQLQuery
        | transformationGroup: TransformationGroup
 ;
syntax Function
        = 
        String nameOf String signature
 ;
syntax StoredProcedure
        = 
        String nameOf String signature
 ;
syntax SQLQuery
        = 
        transformationGroup: TransformationGroup
 ;
syntax ModelElement
        = Case
        | Step
        | Operator
        | Classifier
        | StructuralFeature
 ;
syntax Classifier
        = Class
        | DataType
 ;
syntax StructuralFeature
        = 
        Attribute
 ;
syntax Class
        = 
        String name Attribute attributes+
 ;
syntax DataType
        = 
        attribute: Attribute
 ;
syntax Attribute
        = 
        Class class DataType has
 ;
