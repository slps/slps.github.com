@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MiningMart

syntax InOut
        = Input: ()
        | OutPut: ()
 ;
syntax LinkPackage
        = 
        InOut type CaseRepresentation/DataObject dataObject DataRepresentation/Value value DataRepresentation/Column column DataRepresentation/ColumnSet columnSet
 ;
