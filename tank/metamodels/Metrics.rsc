@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Metrics

syntax Metric
        = 
        ANY name ANY values+
 ;
syntax MetricValue
        = 
        ()
 ;
syntax StringMetricValue
        = 
        value: ANY
 ;
syntax BooleanMetricValue
        = 
        value: ANY
 ;
syntax IntegerMetricValue
        = 
        value: ANY
 ;
syntax DoubleMetricValue
        = 
        value: ANY
 ;
