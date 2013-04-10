@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Promenade

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
        ()
 ;
syntax Grouping
        = 
        ()
 ;
syntax Precedence
        = DynPrecedence
        | DerPrecedence
        | BasPrecedence
        | DerPrecedence deprecs+ ParBinding parbind+
 ;
syntax DynPrecedence
        = 
        ()
 ;
syntax DerPrecedence
        = 
        Precedence precs+ MetaTaskOccurence auxTasks+
 ;
syntax BasPrecedence
        = 
        ()
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
