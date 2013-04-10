@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Metrics

syntax Metric
        = 
        String name MetricValue values+
 ;
syntax MetricValue
        = StringMetricValue
        | BooleanMetricValue
        | IntegerMetricValue
        | DoubleMetricValue
 ;
syntax StringMetricValue
        = 
        value: String
 ;
syntax BooleanMetricValue
        = 
        value: Boolean
 ;
syntax IntegerMetricValue
        = 
        value: Integer
 ;
syntax DoubleMetricValue
        = 
        value: Double
 ;
