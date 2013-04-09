@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module UDDI_meta_model_fragment

syntax BusinessTemplate
        = 
        ()
 ;
syntax BusinessContact
        = 
        ()
 ;
syntax BusinessService
        = 
        ()
 ;
syntax BusinessEntity
        = 
        ANY businessContacts+ ANY businessServices+ ANY identifierBag
 ;
syntax IdentifierBag
        = 
        ()
 ;
syntax TModel
        = 
        ANY overviewDocuments+ ANY identifierBag
 ;
syntax OverviewDocument
        = 
        ()
 ;
