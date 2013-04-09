@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Maude

syntax MaudeSpec
        = 
        ANY els+ ANY printableEls+
 ;
syntax MaudeTopEl
        = 
        ()
 ;
syntax ModExpression
        = 
        ()
 ;
syntax InstModExp
        = 
        ANY modExp ANY views+
 ;
syntax RenModExp
        = 
        ANY modExp ANY renamings+
 ;
syntax CompModExp
        = 
        modExps: ANY
 ;
syntax ModuleIdModExp
        = 
        module: ANY
 ;
syntax TheoryIdModExp
        = 
        theory: ANY
 ;
syntax Parameter
        = 
        ANY label ANY modExp
 ;
syntax Theory
        = 
        ()
 ;
syntax FTheory
        = 
        ANY els+
 ;
syntax STheory
        = 
        ANY els+
 ;
syntax Module
        = 
        ()
 ;
syntax FModule
        = 
        ANY els+ ANY params+
 ;
syntax SModule
        = 
        ANY els+ ANY params+
 ;
syntax ModElement
        = 
        ()
 ;
syntax ModImportation
        = 
        ANY imports ANY mode
 ;
syntax ImportationMode
        = protecting: ()
        | including: ()
        | extending: ()
 ;
syntax Type
        = 
        ()
 ;
syntax Sort
        = 
        ANY subsortRels+ ANY supersortRels+ ANY kind
 ;
syntax Kind
        = 
        ANY sorts+
 ;
syntax SubsortRel
        = 
        ANY subsorts+ ANY supersorts+
 ;
syntax Operation
        = 
        ANY name ANY coarity ANY arity+ ANY atts+
 ;
syntax Statement
        = 
        ()
 ;
syntax Membership
        = 
        ANY term ANY sort
 ;
syntax Equation
        = 
        ANY lhs ANY rhs
 ;
syntax Rule
        = 
        ANY lhs ANY rhs
 ;
syntax Condition
        = 
        ()
 ;
syntax EquationalCond
        = 
        ()
 ;
syntax RewriteCond
        = 
        rhs: ANY
 ;
syntax MembershipCond
        = 
        rhs: ANY
 ;
syntax BooleanCond
        = 
        
 ;
syntax MatchingCond
        = 
        rhs: ANY
 ;
syntax EqualCond
        = 
        rhs: ANY
 ;
syntax Term
        = 
        ()
 ;
syntax Constant
        = 
        op: ANY
 ;
syntax RecTerm
        = 
        ANY op ANY args+
 ;
syntax Variable
        = 
        name: ANY
 ;
syntax View
        = 
        ANY from ANY to ANY els+
 ;
syntax ViewMapping
        = 
        ()
 ;
syntax RenMapping
        = 
        ()
 ;
syntax TermMapping
        = 
        ANY from ANY to
 ;
syntax SortMapping
        = 
        ANY from ANY to
 ;
syntax OpTypedMapping
        = 
        ANY from ANY to ANY atts+
 ;
syntax OpMapping
        = 
        ANY from ANY to
 ;
syntax LabelMapping
        = 
        ANY from ANY to
 ;
