@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module UsiXML_task

syntax Task
        = 
        String id String name String category Integer frequency Integer importance Integer structurationLevel Integer complexityLevel Integer criticity Integer centrality String terminationValue String taskType String taskItem Task decompositionTasks+ Task decomposedTask BinaryOperator leftOperator BinaryOperator rightOperator UnaryOperator decoration
 ;
syntax Operator
        = BinaryOperator
        | UnaryOperator
 ;
syntax BinaryOperator
        = 
        BinaryType type Task leftTask Task rightTask
 ;
syntax UnaryOperator
        = FiniteInteration
        | UnaryType UnaryType Task decoratedTask
 ;
syntax FiniteInteration
        = 
        interation: Integer
 ;
syntax BinaryType
        = Enabling: ()
        | Disabling: ()
        | SuspendResume: ()
        | OrderIndependence: ()
        | IndependentConcurrency: ()
        | ConcurencyWithInformationPassing: ()
        | UnderterministicChoice: ()
        | EnablingWithInformationPassing: ()
 ;
syntax UnaryType
        = Optional: ()
        | Iteration: ()
        | finitIteration: ()
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
