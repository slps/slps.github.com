@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module BusinessProcessModel

syntax Namespace
        = 
        ()
 ;
syntax Task
        = 
        ()
 ;
syntax DataSet
        = 
        ()
 ;
syntax Parameter
        = 
        ()
 ;
syntax DataElement
        = 
        ()
 ;
syntax ModelElement
        = 
        ()
 ;
syntax Flow
        = 
        
 ;
syntax DataFlow
        = 
        ()
 ;
syntax ControlFlow
        = 
        ()
 ;
syntax ControlPoint
        = 
        ANY sink+
 ;
syntax Input
        = 
        ANY sink ANY source
 ;
syntax Output
        = 
        ANY sink ANY source
 ;
syntax OutputSet
        = 
        ANY containsOutput+
 ;
syntax InputSet
        = 
        ANY containsInput+
 ;
syntax Exception
        = 
        ()
 ;
syntax SimpleTask
        = 
        ANY containsDataSet ANY containsControlPoint+ ANY invoker+ ANY terminator+
 ;
syntax CoumpoundTask
        = 
        ANY containsTask+ ANY containsFlow+ ANY realizes
 ;
syntax MutliTask
        = 
        ()
 ;
syntax InvokerTask
        = 
        ANY invokes+
 ;
syntax TerminatorTask
        = 
        ANY terminates+
 ;
syntax ApplicationTask
        = 
        ()
 ;
syntax Decision
        = 
        ()
 ;
syntax Clock
        = 
        ()
 ;
syntax SendCommunication
        = 
        ()
 ;
syntax ReceiveCommunication
        = 
        ()
 ;
syntax BusinessProcess
        = 
        ()
 ;
