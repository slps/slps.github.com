@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Project

syntax JavaProject
        = 
        PackageFragment ownedPackageFragment+
 ;
syntax PackageFragment
        = 
        CompilationUnit ownedCompilationUnit+
 ;
syntax CompilationUnit
        = 
        ImportDeclaration importDeclaration+ Type ownedType+ PackageDeclaration declaration
 ;
syntax ImportDeclaration
        = 
        name: String
 ;
syntax Type
        = 
        Type nestedType+ Type ownedSuperType+ String elementName MEMBER_KIND member_kind Method methods+ Field fields+
 ;
syntax Field
        = 
        ()
 ;
syntax Method
        = 
        String returnType String parametersName+ String parametersType+
 ;
syntax JavaElement
        = Type
        | Field
        | Method
 ;
syntax MEMBER_KIND
        = class: ()
        | enum: ()
        | interface: ()
        | Annotation: ()
 ;
syntax NamedElement
        = JavaProject
        | PackageFragment
        | CompilationUnit
        | ImportDeclaration
        | JavaElement
        | PackageDeclaration
 ;
syntax PackageDeclaration
        = 
        name: String
 ;
syntax String
        = 
        String
 ;
