@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module M

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
