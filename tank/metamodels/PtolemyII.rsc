@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module PtolemyII

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
        ()
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
        ()
 ;
syntax CompositeEntity
        = WorkSpace
        | CompositeActor
        | ComponentEntity containees+ ComponentRelation relations+
 ;
syntax WorkSpace
        = 
        ()
 ;
syntax CompositeActor
        = 
        directors: Director
 ;
