@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module PtolemyII

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
