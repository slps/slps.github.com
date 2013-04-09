@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module XMorphLanguage_abstractSyntax

syntax VarScope
        = 
        ()
 ;
syntax AbstractVar
        = 
        ()
 ;
syntax VarUse
        = 
        var: ANY
 ;
syntax MOF::Property
        = 
        part: ANY
 ;
syntax Key
        = 
        ANY property+ ANY transformation
 ;
syntax PatternScope
        = 
        ()
 ;
syntax PatternDefn
        = 
        ANY scope ANY parameter+ ANY body
 ;
syntax TRule
        = 
        ANY superseded+ ANY superseder+ ANY transformation ANY extended+ ANY extender+ ANY term ANY tgt+
 ;
syntax Transformation
        = 
        ANY keys+ ANY tRule+
 ;
syntax Query
        = 
        ANY term ANY parameter+
 ;
syntax Term
        = 
        ()
 ;
syntax TRuleVar
        = 
        ANY superseder+ ANY superseded+ ANY extended+ ANY extender+
 ;
syntax PatternVar
        = 
        ANY query ANY patternDefn
 ;
syntax ExtentVar
        = 
        src: ANY
 ;
syntax CompoundTerm
        = 
        ()
 ;
syntax AndTerm
        = 
        ANY term+
 ;
syntax OrTerm
        = 
        ANY term+
 ;
syntax NotTerm
        = 
        ANY term+
 ;
syntax IfTerm
        = 
        ANY term+
 ;
syntax SimpleTerm
        = 
        ()
 ;
syntax TrackingUse
        = 
        ANY featureNames ANY tracking
 ;
syntax MOF::Class
        = 
        ANY tracking+
 ;
syntax PatternUse
        = 
        ANY tRuleST ANY arg+
 ;
syntax MofTerm
        = 
        ()
 ;
syntax Condition
        = 
        reason: ANY
 ;
syntax MofInstance
        = 
        ANY isExactly ANY typeName ANY instance
 ;
syntax MofOrder
        = 
        ANY lesser ANY instance ANY greater
 ;
syntax Expression
        = 
        ()
 ;
syntax CoumpoundExpr
        = 
        ()
 ;
syntax CollectionExpr
        = 
        ANY unique ANY ordered
 ;
syntax FunctionExpr
        = 
        function: ANY
 ;
syntax FeatureExpr
        = 
        ANY collect ANY featureName
 ;
syntax InstanceRef
        = 
        obj: ANY
 ;
syntax MOF::Object
        = 
        obj: ANY
 ;
syntax SimpleExpr
        = 
        ()
 ;
syntax StringConstant
        = 
        ANY representation
 ;
syntax IntConstant
        = 
        ANY representation
 ;
syntax BooleanConstant
        = 
        ANY representation
 ;
syntax EnumConstant
        = 
        ANY representation
 ;
