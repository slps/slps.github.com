@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module UsiXML_task

syntax Task
        = 
        ANY id ANY name ANY category ANY frequency ANY importance ANY structurationLevel ANY complexityLevel ANY criticity ANY centrality ANY terminationValue ANY taskType ANY taskItem ANY decompositionTasks+ ANY decomposedTask ANY leftOperator ANY rightOperator ANY decoration
 ;
syntax Operator
        = 
        ()
 ;
syntax BinaryOperator
        = 
        ANY type ANY leftTask ANY rightTask
 ;
syntax UnaryOperator
        = 
        ANY UnaryType ANY decoratedTask
 ;
syntax FiniteInteration
        = 
        interation: ANY
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
