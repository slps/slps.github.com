@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Measure

syntax ModelKind
        = KM3: ()
        | UML2: ()
 ;
syntax RootMeasureSet
        = 
        ModelKind modelType Category categories+ MeasureSet measureSets+
 ;
syntax Category
        = 
        String name String desc Metric metrics+ RootMeasureSet root
 ;
syntax Metric
        = 
        String name String desc String preferredValue Category category
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
        String elementName ElementKind elementType Measure measures+ RootMeasureSet root MeasureSet subsets+ MeasureSet parent
 ;
syntax Measure
        = IntegerMeasure
        | DoubleMeasure
        | PercentageMeasure
 ;
syntax IntegerMeasure
        = 
        value: Integer
 ;
syntax DoubleMeasure
        = 
        value: Double
 ;
syntax PercentageMeasure
        = 
        value: Double
 ;
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax Integer
        = 
        Integer
 ;
