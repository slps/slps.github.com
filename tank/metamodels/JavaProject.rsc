@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module JavaProject

syntax JavaProject
        = 
        ANY ownedPackageFragment+
 ;
syntax PackageFragment
        = 
        ANY ownedCompilationUnit+
 ;
syntax CompilationUnit
        = 
        ANY importDeclaration+ ANY ownedType+ ANY declaration
 ;
syntax ImportDeclaration
        = 
        ANY name
 ;
syntax Type
        = 
        ANY nestedType+ ANY ownedSuperType+ ANY elementName ANY member_kind ANY methods+ ANY fields+
 ;
syntax Field
        = 
        
 ;
syntax Method
        = 
        ANY returnType ANY parametersName+ ANY parametersType+
 ;
syntax JavaElement
        = 
        ()
 ;
syntax MEMBER_KIND
        = class: ()
        | enum: ()
        | interface: ()
        | Annotation: ()
 ;
syntax NamedElement
        = 
        ()
 ;
syntax PackageDeclaration
        = 
        ANY name
 ;
