@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module BusinessProcessModel

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
