@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module M

syntax IdentifiedElement
        = 
        ()
 ;
syntax MElement
        = 
        ()
 ;
syntax MElementReference
        = 
        ANY alias ANY referencedElement
 ;
syntax Module
        = 
        ANY imports+ ANY exports+ ANY moduleMembers+
 ;
syntax ModuleMember
        = 
        ()
 ;
syntax ImportDirective
        = 
        ANY module ANY importedElements+
 ;
syntax ExportDirective
        = 
        ANY module ANY exportedElements+
 ;
syntax Value
        = 
        ()
 ;
syntax NumericalValue
        = 
        ()
 ;
syntax StringValue
        = 
        value: ANY
 ;
syntax IntegerValue
        = 
        value: ANY
 ;
syntax DecimalValue
        = 
        value: ANY
 ;
syntax BooleanValue
        = 
        value: ANY
 ;
