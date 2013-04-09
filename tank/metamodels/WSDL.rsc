@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module WSDL

syntax Port
        = 
        ANY name ANY service ANY binding
 ;
syntax Service
        = 
        ANY name ANY ports+
 ;
syntax Param
        = 
        ANY name ANY message
 ;
syntax Input
        = 
        operation: ANY
 ;
syntax Output
        = 
        operation: ANY
 ;
syntax PortType
        = 
        ANY name ANY operations+ ANY bindings+
 ;
syntax Operation
        = 
        ANY name ANY input ANY output ANY type ANY faults+
 ;
syntax StartWithExtensions
        = 
        ()
 ;
syntax Binding
        = 
        ANY name ANY ports+ ANY type ANY operations+
 ;
syntax BindingFault
        = 
        ANY operation ANY binding
 ;
syntax BindingOperation
        = 
        ANY name ANY bind ANY binding ANY input ANY output ANY faults+
 ;
syntax Fault
        = 
        ANY name ANY operation ANY message
 ;
syntax Message
        = 
        ANY name ANY params+ ANY faults+ ANY parts+
 ;
syntax Part
        = 
        ANY name ANY message
 ;
