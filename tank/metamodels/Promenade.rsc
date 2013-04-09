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
        = 
        ANY deprecs+ ANY parbind+
 ;
syntax DynPrecedence
        = 
        ()
 ;
syntax DerPrecedence
        = 
        ANY precs+ ANY auxTasks+
 ;
syntax BasPrecedence
        = 
        ()
 ;
syntax MetaTaskOccurence
        = 
        ANY dprecs+ ANY taskCl+
 ;
syntax ParBinding
        = 
        ANY inclusion ANY precs+ ANY targetPar ANY sourcePar
 ;
syntax ParameterPrec
        = 
        ANY parbindsTar+ ANY parbindsSour+ ANY dstParams+ ANY orParams+
 ;
syntax ModelElement
        = 
        ANY dependencyUMLsupp ANY dependencyUMLcli
 ;
syntax DependancyUML
        = 
        ANY suppier+ ANY client+
 ;
syntax MetaTask
        = 
        ANY params+ ANY occurs+
 ;
syntax ParameterUML
        = 
        ANY task ANY doc+
 ;
syntax MetaDocument
        = 
        ANY params+
 ;
