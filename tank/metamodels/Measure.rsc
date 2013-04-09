@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Measure

syntax ModelKind
        = KM3: ()
        | UML2: ()
 ;
syntax RootMeasureSet
        = 
        ANY modelType ANY categories+ ANY measureSets+
 ;
syntax Category
        = 
        ANY name ANY desc ANY metrics+ ANY root
 ;
syntax Metric
        = 
        ANY name ANY desc ANY preferredValue ANY category
 ;
syntax ElementKind
        = metamodel: ()
        | model: ()
        | package: ()
        | interface: ()
        | class: ()
 ;
syntax MeasureSet
        = 
        ANY elementName ANY elementType ANY measures+ ANY root ANY subsets+ ANY parent
 ;
syntax Measure
        = 
        ()
 ;
syntax IntegerMeasure
        = 
        value: ANY
 ;
syntax DoubleMeasure
        = 
        value: ANY
 ;
syntax PercentageMeasure
        = 
        value: ANY
 ;
