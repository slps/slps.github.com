@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module GeoTrans

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
syntax GeoTransfos
        = 
        String name GeoTransfo transfos+
 ;
syntax GeoTransfo
        = 
        String name Boolean freeze GeoTransfo subGeoTransfos+ GeoTransfo superGeoTransfo Param params+
 ;
syntax Param
        = 
        String name Double param GeoTransfo geoTransfo
 ;
