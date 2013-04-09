@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MiningMart_ViewCaseRepresentation

syntax Case
        = 
        ANY name ANY caseMode ANY caseInput ANY documentation ANY listOfStep+
 ;
syntax Step
        = 
        ANY name ANY description ANY belongsToCase ANY embedsOperator ANY predecessors+ ANY successors+
 ;
syntax LoopStep
        = 
        ()
 ;
syntax MultiStep
        = 
        iterationCondition: ANY
 ;
syntax Operator
        = 
        ()
 ;
syntax Parameter
        = 
        ANY name ANY place ANY parameterType ANY belongsToOperator
 ;
syntax ParameterType
        = Value: ()
        | Concept: ()
        | RelationShip: ()
        | FeatureAttribute: ()
 ;
syntax FeatureConstruction
        = 
        scalingFactor: ANY
 ;
syntax DataMinStep
        = 
        ANY loopable ANY numberOfInputParameters ANY numberOfOutputParameters ANY manual ANY tool ANY input+ ANY output+ ANY realizes
 ;
syntax TimeOperator
        = 
        ANY loopable ANY numberOfInputParameters ANY numberOfOutputParameters ANY manual ANY tool ANY input+ ANY output+ ANY realizes
 ;
syntax FeatureSelection
        = 
        ANY loopable ANY numberOfInputParameters ANY numberOfOutputParameters ANY manual ANY tool ANY input+ ANY output+ ANY realizes
 ;
syntax MultiRelFeatureConstr
        = 
        ANY loopable ANY numberOfInputParameters ANY numberOfOutputParameters ANY manual ANY tool ANY input+ ANY output+ ANY realizes
 ;
syntax RowSelection
        = 
        ANY loopable ANY numberOfInputParameters ANY numberOfOutputParameters ANY manual ANY tool ANY input+ ANY output+ ANY realizes
 ;
syntax Agregation
        = 
        ()
 ;
syntax Scaling
        = 
        ()
 ;
syntax Discretization
        = 
        ()
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
        = 
        ANY source ANY target
 ;
syntax DataObject
        = 
        ANY source ANY target
 ;
syntax MSL_Tool
        = 
        ()
 ;
syntax TransformationGroup
        = 
        ANY transformation+
 ;
syntax Transformation
        = 
        transformationGroup: ANY
 ;
syntax Function
        = 
        ANY nameOf ANY signature
 ;
syntax StoredProcedure
        = 
        ANY nameOf ANY signature
 ;
syntax SQLQuery
        = 
        ()
 ;
syntax ModelElement
        = 
        ()
 ;
syntax Classifier
        = 
        ()
 ;
syntax StructuralFeature
        = 
        ()
 ;
syntax Class
        = 
        ANY name ANY attributes+
 ;
syntax DataType
        = 
        attribute: ANY
 ;
syntax Attribute
        = 
        ANY class ANY has
 ;
