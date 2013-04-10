@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ChocoModel

syntax LocatedElement
        = Package
        | Import
        | ChocoProblem
        | Element
        | Domain
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
        String name Import import+ ChocoProblem problem
 ;
syntax Import
        = 
        fqn: String
 ;
syntax ChocoProblem
        = 
        String name Element elements+
 ;
syntax Element
        = Expression
        | PostConstraint
 ;
syntax Expression
        = ConstraintDef
        | IntVar
        | IntConstant
        | SymbolicTerm
        | IntValue
        | IntExp
        | Constraint
 ;
syntax ConstraintDef
        = 
        OpConstraint op Expression left Expression right
 ;
syntax IntVar
        = 
        domain: Domain
 ;
syntax Domain
        = 
        Integer lower Integer upper
 ;
syntax IntConstant
        = 
        val: Integer
 ;
syntax SymbolicTerm
        = 
        term: Expression
 ;
syntax IntValue
        = 
        val: Integer
 ;
syntax IntExp
        = 
        OpConstraint op Expression left Expression right
 ;
syntax Constraint
        = 
        OpConstraint op Expression left Expression right
 ;
syntax PostConstraint
        = 
        OpConstraint op ConstraintDef constraint
 ;
