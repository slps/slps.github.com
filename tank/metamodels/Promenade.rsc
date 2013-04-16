@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Promenade

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
syntax Integer
        = 
        Integer
 ;
syntax Strong
        = 
        ()
 ;
syntax Start
        = 
        ()
 ;
syntax End
        = 
        ()
 ;
syntax FeedBack
        = 
        ()
 ;
syntax Weak
        = 
        Precedence precs+ MetaTaskOccurence auxTasks+
 ;
syntax Grouping
        = 
        Precedence precs+ MetaTaskOccurence auxTasks+
 ;
syntax Precedence
        = DynPrecedence
        | DerPrecedence
        | BasPrecedence
        | DerPrecedence deprecs+ ParBinding parbind+
 ;
syntax DynPrecedence
        = Strong
        | Start
        | End
        | FeedBack
        | Weak
        | Grouping
        | DerPrecedence deprecs+ ParBinding parbind+
 ;
syntax DerPrecedence
        = Weak
        | Grouping
        | Precedence precs+ MetaTaskOccurence auxTasks+
 ;
syntax BasPrecedence
        = Strong
        | Start
        | End
        | FeedBack
        | DerPrecedence deprecs+ ParBinding parbind+
 ;
syntax MetaTaskOccurence
        = 
        DerPrecedence dprecs+ MetaTask taskCl+
 ;
syntax ParBinding
        = 
        Boolean inclusion Precedence precs+ ParameterPrec targetPar ParameterPrec sourcePar
 ;
syntax ParameterPrec
        = 
        ParBinding parbindsTar+ ParBinding parbindsSour+ ParameterPrec dstParams+ ParameterPrec orParams+
 ;
syntax ModelElement
        = MetaTaskOccurence
        | MetaTask
        | DependancyUML dependencyUMLsupp DependancyUML dependencyUMLcli
 ;
syntax DependancyUML
        = 
        ModelElement suppier+ ModelElement client+
 ;
syntax MetaTask
        = 
        ParameterUML params+ MetaTaskOccurence occurs+
 ;
syntax ParameterUML
        = ParameterPrec
        | MetaTask task MetaDocument doc+
 ;
syntax MetaDocument
        = 
        ParameterUML params+
 ;
