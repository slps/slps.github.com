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
        BusinessContact businessContacts+ BusinessService businessServices+ IdentifierBag identifierBag
 ;
syntax IdentifierBag
        = 
        ()
 ;
syntax TModel
        = 
        OverviewDocument overviewDocuments+ IdentifierBag identifierBag
 ;
syntax OverviewDocument
        = 
        ()
 ;
