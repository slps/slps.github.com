@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module PtolemyII

syntax EDataType
        = 
        value: ANY
 ;
syntax NamedObject
        = 
        name: ANY
 ;
syntax Attribute
        = 
        ANY att_container ANY value
 ;
syntax Entity
        = 
        ANY attributes+ ANY parameters+ ANY ports+
 ;
syntax Port
        = 
        ANY po_container ANY links+
 ;
syntax Relation
        = 
        ANY ports+
 ;
syntax Director
        = 
        ca_container: ANY
 ;
syntax Parameter
        = 
        ANY pa_container ANY dataType
 ;
syntax ComponentPort
        = 
        ()
 ;
syntax ComponentRelation
        = 
        re_container: ANY
 ;
syntax ComponentEntity
        = 
        ce_container: ANY
 ;
syntax AtomicActor
        = 
        ()
 ;
syntax CompositeEntity
        = 
        ANY containees+ ANY relations+
 ;
syntax WorkSpace
        = 
        ()
 ;
syntax CompositeActor
        = 
        directors: ANY
 ;
