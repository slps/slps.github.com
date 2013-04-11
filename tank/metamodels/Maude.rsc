@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Maude

syntax MaudeSpec
        = 
        MaudeTopEl els+ MaudeTopEl printableEls+
 ;
syntax MaudeTopEl
        = Theory
        | Module
        | View
 ;
syntax ModExpression
        = InstModExp
        | RenModExp
        | CompModExp
        | ModuleIdModExp
        | TheoryIdModExp
        | Parameter
 ;
syntax InstModExp
        = 
        ModExpression modExp View views+
 ;
syntax RenModExp
        = 
        ModExpression modExp RenMapping renamings+
 ;
syntax CompModExp
        = 
        modExps: ModExpression
 ;
syntax ModuleIdModExp
        = 
        module: Module
 ;
syntax TheoryIdModExp
        = 
        theory: Theory
 ;
syntax Parameter
        = 
        String label ModExpression modExp
 ;
syntax Theory
        = FTheory
        | STheory
 ;
syntax FTheory
        = 
        ModElement els+
 ;
syntax STheory
        = 
        ModElement els+
 ;
syntax Module
        = FModule
        | SModule
 ;
syntax FModule
        = 
        ModElement els+ Parameter params+
 ;
syntax SModule
        = 
        ModElement els+ Parameter params+
 ;
syntax ModElement
        = ModImportation
        | SubsortRel
        | Operation
        | Statement
        | Sort
 ;
syntax ModImportation
        = 
        ModExpression imports ImportationMode mode
 ;
syntax ImportationMode
        = protecting: ()
        | including: ()
        | extending: ()
 ;
syntax Type
        = Kind
        | Sort
 ;
syntax Sort
        = 
        SubsortRel subsortRels+ SubsortRel supersortRels+ Kind kind
 ;
syntax Kind
        = 
        Sort sorts+
 ;
syntax SubsortRel
        = 
        Sort subsorts+ Sort supersorts+
 ;
syntax Operation
        = 
        String name Type coarity Type arity+ String atts+
 ;
syntax Statement
        = Membership
        | Equation
        | Rule
 ;
syntax Membership
        = 
        Term term Sort sort
 ;
syntax Equation
        = 
        Term lhs Term rhs
 ;
syntax Rule
        = 
        Term lhs Term rhs
 ;
syntax Condition
        = EquationalCond
        | RewriteCond
 ;
syntax EquationalCond
        = MembershipCond
        | BooleanCond
        | MatchingCond
        | EqualCond
 ;
syntax RewriteCond
        = 
        rhs: Term
 ;
syntax MembershipCond
        = 
        rhs: Sort
 ;
syntax BooleanCond
        = 
        ()
 ;
syntax MatchingCond
        = 
        rhs: Term
 ;
syntax EqualCond
        = 
        rhs: Term
 ;
syntax Term
        = Constant
        | RecTerm
        | Variable
 ;
syntax Constant
        = 
        op: String
 ;
syntax RecTerm
        = 
        String op Term args+
 ;
syntax Variable
        = 
        name: String
 ;
syntax View
        = 
        ModExpression from ModExpression to ViewMapping els+
 ;
syntax ViewMapping
        = RenMapping
        | TermMapping
 ;
syntax RenMapping
        = SortMapping
        | OpTypedMapping
        | OpMapping
        | LabelMapping
 ;
syntax TermMapping
        = 
        Term from Term to
 ;
syntax SortMapping
        = 
        Sort from String to
 ;
syntax OpTypedMapping
        = 
        Operation from String to String atts+
 ;
syntax OpMapping
        = 
        Operation from String to
 ;
syntax LabelMapping
        = 
        String from String to
 ;
syntax String
        = 
        String
 ;
