@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Metrics

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
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
