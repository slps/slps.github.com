@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module PtolemyII

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax EDataType
        = 
        value: String
 ;
syntax NamedObject
        = Attribute
        | Entity
        | Port
        | Relation
        | Director
        | name: String
 ;
syntax Attribute
        = Parameter
        | ComponentEntity
        | Entity att_container String value
 ;
syntax Entity
        = 
        Attribute attributes+ Parameter parameters+ Port ports+
 ;
syntax Port
        = ComponentPort
        | Entity po_container Relation links+
 ;
syntax Relation
        = ComponentRelation
        | Port ports+
 ;
syntax Director
        = 
        ca_container: CompositeActor
 ;
syntax Parameter
        = 
        Entity pa_container EDataType dataType
 ;
syntax ComponentPort
        = 
        Entity po_container Relation links+
 ;
syntax ComponentRelation
        = 
        re_container: CompositeEntity
 ;
syntax ComponentEntity
        = AtomicActor
        | CompositeEntity
        | ce_container: CompositeEntity
 ;
syntax AtomicActor
        = 
        ce_container: CompositeEntity
 ;
syntax CompositeEntity
        = WorkSpace
        | CompositeActor
        | ComponentEntity containees+ ComponentRelation relations+
 ;
syntax WorkSpace
        = 
        ComponentEntity containees+ ComponentRelation relations+
 ;
syntax CompositeActor
        = 
        directors: Director
 ;
