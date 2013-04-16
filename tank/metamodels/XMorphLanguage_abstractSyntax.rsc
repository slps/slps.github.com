@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module XMorphLanguage_abstractSyntax

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax VarScope
        = PatternScope
        | PatternDefn
        | TRule
 ;
syntax AbstractVar
        = TRuleVar
        | PatternVar
        | ExtentVar
 ;
syntax VarUse
        = 
        var: AbstractVar
 ;
syntax MOF::Property
        = 
        part: Key
 ;
syntax Key
        = 
        MOF::Property property+ Transformation transformation
 ;
syntax PatternScope
        = Transformation
        | Query
 ;
syntax PatternDefn
        = 
        PatternScope scope PatternVar parameter+ Term body
 ;
syntax TRule
        = 
        TRule superseded+ TRule superseder+ Transformation transformation TRule extended+ TRule extender+ Term term SimpleTerm tgt+
 ;
syntax Transformation
        = 
        Key keys+ TRule tRule+
 ;
syntax Query
        = 
        Term term PatternVar parameter+
 ;
syntax Term
        = CompoundTerm
        | SimpleTerm
 ;
syntax TRuleVar
        = 
        TRuleVar superseder+ TRuleVar superseded+ TRuleVar extended+ TRuleVar extender+
 ;
syntax PatternVar
        = 
        Query query PatternDefn patternDefn
 ;
syntax ExtentVar
        = 
        src: Term
 ;
syntax CompoundTerm
        = AndTerm
        | OrTerm
        | NotTerm
        | IfTerm
 ;
syntax AndTerm
        = 
        Term term+
 ;
syntax OrTerm
        = 
        Term term+
 ;
syntax NotTerm
        = 
        Term term+
 ;
syntax IfTerm
        = 
        Term term+
 ;
syntax SimpleTerm
        = TrackingUse
        | PatternUse
        | MofTerm
        | Condition
 ;
syntax TrackingUse
        = 
        String featureNames MOF::Class tracking
 ;
syntax MOF::Class
        = 
        TrackingUse tracking+
 ;
syntax PatternUse
        = 
        TRule tRuleST Expression arg+
 ;
syntax MofTerm
        = MofInstance
        | MofOrder
 ;
syntax Condition
        = 
        reason: String
 ;
syntax MofInstance
        = 
        Boolean isExactly Expression typeName Expression instance
 ;
syntax MofOrder
        = 
        Expression lesser Expression instance Expression greater
 ;
syntax Expression
        = VarUse
        | CoumpoundExpr
        | InstanceRef
        | MOF::Object
        | SimpleExpr
 ;
syntax CoumpoundExpr
        = CollectionExpr
        | FunctionExpr
        | FeatureExpr
 ;
syntax CollectionExpr
        = 
        Boolean unique Boolean ordered
 ;
syntax FunctionExpr
        = 
        function: String
 ;
syntax FeatureExpr
        = 
        String collect String featureName
 ;
syntax InstanceRef
        = 
        obj: MOF::Object
 ;
syntax MOF::Object
        = 
        obj: InstanceRef
 ;
syntax SimpleExpr
        = StringConstant
        | IntConstant
        | BooleanConstant
        | EnumConstant
 ;
syntax StringConstant
        = 
        representation: String
 ;
syntax IntConstant
        = 
        representation: String
 ;
syntax BooleanConstant
        = 
        representation: String
 ;
syntax EnumConstant
        = 
        representation: String
 ;
