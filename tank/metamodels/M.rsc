@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module M

syntax IdentifiedElement
        = MElement
        | Field
        | Collection
        | ComputedValue
 ;
syntax MElement
        = Module
        | ModuleMember
 ;
syntax MElementReference
        = 
        String alias MElement referencedElement
 ;
syntax Module
        = 
        ImportDirective imports+ ExportDirective exports+ ModuleMember moduleMembers+
 ;
syntax ModuleMember
        = DerivedType
        | Language
        | Entity
 ;
syntax ImportDirective
        = 
        Module module MElementReference importedElements+
 ;
syntax ExportDirective
        = 
        Module module ModuleMember exportedElements+
 ;
syntax Value
        = NumericalValue
        | StringValue
        | BooleanValue
 ;
syntax NumericalValue
        = IntegerValue
        | DecimalValue
 ;
syntax StringValue
        = 
        value: String
 ;
syntax IntegerValue
        = 
        value: Integer
 ;
syntax DecimalValue
        = 
        value: Double
 ;
syntax BooleanValue
        = 
        value: Boolean
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
