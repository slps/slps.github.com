@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module GeoTrans

syntax GeoTransfos
        = 
        ANY name ANY transfos+
 ;
syntax GeoTransfo
        = 
        ANY name ANY freeze ANY subGeoTransfos+ ANY superGeoTransfo ANY params+
 ;
syntax Param
        = 
        ANY name ANY param ANY geoTransfo
 ;
