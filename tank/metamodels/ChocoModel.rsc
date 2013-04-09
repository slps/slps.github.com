@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ChocoModel

syntax LocatedElement
        = 
        ()
 ;
syntax OpConstraint
        = eq: ()
        | and2: ()
        | or2: ()
        | gt: ()
        | ge: ()
        | lt: ()
        | le: ()
        | plus: ()
 ;
syntax Package
        = 
        ANY name ANY import+ ANY problem
 ;
syntax Import
        = 
        fqn: ANY
 ;
syntax ChocoProblem
        = 
        ANY name ANY elements+
 ;
syntax Element
        = 
        ()
 ;
syntax Expression
        = 
        ()
 ;
syntax ConstraintDef
        = 
        ANY op ANY left ANY right
 ;
syntax IntVar
        = 
        domain: ANY
 ;
syntax Domain
        = 
        ANY lower ANY upper
 ;
syntax IntConstant
        = 
        val: ANY
 ;
syntax SymbolicTerm
        = 
        term: ANY
 ;
syntax IntValue
        = 
        val: ANY
 ;
syntax IntExp
        = 
        ANY op ANY left ANY right
 ;
syntax Constraint
        = 
        ANY op ANY left ANY right
 ;
syntax PostConstraint
        = 
        ANY op ANY constraint
 ;
