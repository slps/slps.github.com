@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ACG

syntax LocatedElement
        = 
        ()
 ;
syntax ACG
        = 
        ANY metamodel ANY startsWith ANY elements+
 ;
syntax ACGElement
        = 
        ()
 ;
syntax Function
        = 
        ANY context ANY name ANY parameters+ ANY body
 ;
syntax Attribute
        = 
        ANY context ANY name ANY body
 ;
syntax Parameter
        = 
        ()
 ;
syntax Node
        = 
        ()
 ;
syntax ASMNode
        = 
        name: ANY
 ;
syntax CodeNode
        = 
        ANY element ANY mode ANY guard
 ;
syntax SimpleNode
        = 
        ANY element ANY mode ANY guard
 ;
syntax StatementBlock
        = 
        ()
 ;
syntax Statement
        = 
        ()
 ;
syntax CompoundStat
        = 
        ()
 ;
syntax ForEachStat
        = 
        ANY iterator ANY collection
 ;
syntax OnceStat
        = 
        
 ;
syntax VariableStat
        = 
        ANY definition ANY name
 ;
syntax OperationStat
        = 
        ANY context ANY name
 ;
syntax ConditionalStat
        = 
        ANY condition ANY elseStatements+
 ;
syntax LetStat
        = 
        ANY variable ANY value
 ;
syntax AnalyzeStat
        = 
        ANY target ANY mode
 ;
syntax ReportStat
        = 
        ANY severity ANY message
 ;
syntax Severity
        = critic: ()
        | error: ()
        | warning: ()
 ;
syntax FieldStat
        = 
        ANY name ANY type
 ;
syntax ParamStat
        = 
        ANY name ANY type
 ;
syntax EmitStat
        = 
        ()
 ;
syntax LabelStat
        = 
        ANY name ANY id
 ;
syntax NewStat
        = 
        
 ;
syntax DupStat
        = 
        
 ;
syntax DupX1Stat
        = 
        
 ;
syntax PopStat
        = 
        
 ;
syntax SwapStat
        = 
        
 ;
syntax IterateStat
        = 
        
 ;
syntax EndIterateStat
        = 
        
 ;
syntax GetAsmStat
        = 
        
 ;
syntax FindMEStat
        = 
        
 ;
syntax PushTStat
        = 
        
 ;
syntax PushFStat
        = 
        
 ;
syntax EmitWithOperandStat
        = 
        ()
 ;
syntax PushStat
        = 
        ANY operand
 ;
syntax PushIStat
        = 
        ANY operand
 ;
syntax PushDStat
        = 
        ANY operand
 ;
syntax LoadStat
        = 
        ANY operand
 ;
syntax StoreStat
        = 
        ANY operand
 ;
syntax CallStat
        = 
        ANY operand
 ;
syntax PCallStat
        = 
        ANY operand
 ;
syntax SuperCallStat
        = 
        ANY operand
 ;
syntax GetStat
        = 
        ANY operand
 ;
syntax SetStat
        = 
        ANY operand
 ;
syntax EmitWithLabelRefStat
        = 
        ()
 ;
syntax IfStat
        = 
        ANY label
 ;
syntax GotoStat
        = 
        ANY label
 ;
syntax VariableDecl
        = 
        name: ANY
 ;
syntax Expression
        = 
        ()
 ;
syntax VariableExp
        = 
        variable: ANY
 ;
syntax SelfExp
        = 
        
 ;
syntax LastExp
        = 
        
 ;
syntax IfExp
        = 
        ANY condition ANY thenExp ANY elseExp
 ;
syntax IsAExp
        = 
        ANY source ANY type
 ;
syntax LetExp
        = 
        ANY variable ANY value ANY in
 ;
syntax PropertyCallExp
        = 
        ()
 ;
syntax NavigationExp
        = 
        ANY source ANY name
 ;
syntax IteratorExp
        = 
        ANY iterator ANY body
 ;
syntax OperationCallExp
        = 
        ANY arguments+
 ;
syntax OperatorCallExp
        = 
        ()
 ;
syntax LiteralExp
        = 
        ()
 ;
syntax OclUndefinedExp
        = 
        
 ;
syntax CollectionExp
        = 
        ()
 ;
syntax SequenceExp
        = 
        ANY elements+
 ;
syntax BooleanExp
        = 
        value: ANY
 ;
syntax IntegerExp
        = 
        value: ANY
 ;
syntax StringExp
        = 
        value: ANY
 ;
