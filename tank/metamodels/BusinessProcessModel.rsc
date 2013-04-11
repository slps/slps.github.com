@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module BusinessProcessModel

syntax Namespace
        = Task
        | DataSet
 ;
syntax Task
        = SimpleTask
        | CoumpoundTask
 ;
syntax DataSet
        = OutputSet
        | InputSet
 ;
syntax Parameter
        = 
        DataElement
 ;
syntax DataElement
        = Input
        | Output
 ;
syntax ModelElement
        = Flow
        | ControlPoint
 ;
syntax Flow
        = DataFlow
        | ControlFlow
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
        ControlFlow sink+
 ;
syntax Input
        = 
        DataFlow sink DataFlow source
 ;
syntax Output
        = 
        Exception
 ;
syntax OutputSet
        = 
        Output containsOutput+
 ;
syntax InputSet
        = 
        Input containsInput+
 ;
syntax Exception
        = 
        ()
 ;
syntax SimpleTask
        = InvokerTask
        | TerminatorTask
        | ApplicationTask
 ;
syntax CoumpoundTask
        = MutliTask
        | Task containsTask+ Flow containsFlow+ BusinessProcess realizes
 ;
syntax MutliTask
        = 
        Task containsTask+ Flow containsFlow+ BusinessProcess realizes
 ;
syntax InvokerTask
        = 
        Task invokes+
 ;
syntax TerminatorTask
        = 
        Task terminates+
 ;
syntax ApplicationTask
        = Decision
        | Clock
        | SendCommunication
        | ReceiveCommunication
        | BusinessProcess
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
