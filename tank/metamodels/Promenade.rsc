@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Promenade

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
