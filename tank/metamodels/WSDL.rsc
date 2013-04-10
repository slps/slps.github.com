@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module WSDL

syntax Port
        = 
        String name Service service Binding binding
 ;
syntax Service
        = 
        String name Port ports+
 ;
syntax Param
        = Input
        | Output
        | String name Message message
 ;
syntax Input
        = 
        operation: Operation
 ;
syntax Output
        = 
        operation: Operation
 ;
syntax PortType
        = 
        String name Operation operations+ Binding bindings+
 ;
syntax Operation
        = 
        String name Input input Output output PortType type Fault faults+
 ;
syntax StartWithExtensions
        = Binding
        | BindingFault
        | BindingOperation
 ;
syntax Binding
        = 
        String name Port ports+ PortType type BindingOperation operations+
 ;
syntax BindingFault
        = 
        BindingOperation operation Fault binding
 ;
syntax BindingOperation
        = 
        String name Binding bind Operation binding StartWithExtensions input StartWithExtensions output BindingFault faults+
 ;
syntax Fault
        = 
        String name Operation operation Message message
 ;
syntax Message
        = 
        String name Param params+ Fault faults+ Part parts+
 ;
syntax Part
        = 
        String name Message message
 ;
