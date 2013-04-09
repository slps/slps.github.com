@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module METAH

syntax METAHFile
        = 
        ANY entries+
 ;
syntax METAHEntry
        = 
        ()
 ;
syntax Package
        = 
        ANY packName ANY data+
 ;
syntax PackageImplementation
        = 
        ANY implementationName ANY implements ANY attributes+
 ;
syntax Data
        = 
        dataName: ANY
 ;
syntax Attribute
        = 
        ANY attName ANY attValue ANY attValueType ANY attType
 ;
syntax ProcessDeclaration
        = 
        ANY procDecName ANY ports+
 ;
syntax ProcessImplementation
        = 
        ANY procImpName ANY declaration ANY processAttributes+
 ;
syntax ProcessAttribute
        = 
        ANY attName ANY attValue ANY attValueType
 ;
syntax Process
        = 
        ANY procName ANY periodic ANY declaration ANY implementation
 ;
syntax Port
        = 
        ANY portName ANY portCom ANY portPackage ANY portType
 ;
syntax Connection
        = 
        ANY compSrc ANY portSrc ANY compDest ANY portDest
 ;
syntax MacroDeclaration
        = 
        ANY name ANY ports+
 ;
syntax MacroImplementation
        = 
        ANY macroImpName ANY declaration ANY process+ ANY connections+
 ;
