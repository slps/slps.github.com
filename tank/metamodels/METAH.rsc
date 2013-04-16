@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module METAH

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax METAHFile
        = 
        METAHEntry entries+
 ;
syntax METAHEntry
        = Package
        | PackageImplementation
        | ProcessDeclaration
        | ProcessImplementation
        | Connection
        | MacroDeclaration
        | MacroImplementation
 ;
syntax Package
        = 
        String packName Data data+
 ;
syntax PackageImplementation
        = 
        String implementationName String implements Attribute attributes+
 ;
syntax Data
        = 
        dataName: String
 ;
syntax Attribute
        = 
        String attName Integer attValue String attValueType String attType
 ;
syntax ProcessDeclaration
        = 
        String procDecName Port ports+
 ;
syntax ProcessImplementation
        = 
        String procImpName String declaration ProcessAttribute processAttributes+
 ;
syntax ProcessAttribute
        = 
        String attName Integer attValue String attValueType
 ;
syntax Process
        = 
        String procName String periodic String declaration String implementation
 ;
syntax Port
        = 
        String portName String portCom String portPackage String portType
 ;
syntax Connection
        = 
        String compSrc String portSrc String compDest String portDest
 ;
syntax MacroDeclaration
        = 
        String name Port ports+
 ;
syntax MacroImplementation
        = 
        String macroImpName String declaration Process process+ Connection connections+
 ;
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
