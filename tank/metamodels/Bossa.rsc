@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Bossa

syntax BossaProgramm
        = 
        scheduler: ANY
 ;
syntax Scheduler
        = 
        ()
 ;
syntax NormalScheduler
        = 
        schedulerDecl: ANY
 ;
syntax VirtualScheduler
        = 
        vschedulerDecl: ANY
 ;
syntax AbstractSchedulerDecl
        = 
        ()
 ;
syntax SchedulerDecl
        = 
        processDef: ANY
 ;
syntax VSchdulerDecl
        = 
        schedulerDef: ANY
 ;
syntax ConstDef
        = 
        ANY id ANY expr ANY bossaTypeExpr
 ;
syntax TypeDef
        = 
        enumRang: ANY
 ;
syntax EnumRange
        = 
        ANY enumDef ANY rangeDef
 ;
syntax EnumDef
        = 
        ANY theIds+
 ;
syntax BagId
        = 
        theValue: ANY
 ;
syntax RangeDef
        = 
        expr: ANY
 ;
syntax ProcessDef
        = 
        ANY processVarDecl+
 ;
syntax SchedulerDef
        = 
        ANY processVarDecl+
 ;
syntax ProcessVarDecl
        = 
        ANY id ANY processDef ANY schedulerDef
 ;
syntax Timer_ProcessVarDecl
        = 
        ()
 ;
syntax System_ProcessVarDecl
        = 
        ANY system ANY typeExpr
 ;
syntax Normal_ProcessVarDecl
        = 
        typeExpr: ANY
 ;
syntax HandlerDef
        = 
        ANY id ANY scheduler ANY onHandlerDef+
 ;
syntax InterfaceDef
        = 
        ANY composantOfInterFunc+ ANY scheduler
 ;
syntax FunctionDef
        = 
        ANY composantOfInterFunc+ ANY scheduler
 ;
syntax Expression
        = 
        ()
 ;
syntax Integer_Expression
        = 
        theValue: ANY
 ;
syntax Id_Expression
        = 
        id: ANY
 ;
syntax State_Expression
        = 
        theValue: ANY
 ;
syntax True_Expression
        = 
        
 ;
syntax False_Expression
        = 
        
 ;
syntax Unop_Expression
        = 
        ANY unop ANY expr
 ;
syntax Etoile_Expression
        = 
        expr: ANY
 ;
syntax ExpId_Expression
        = 
        ANY id ANY expr
 ;
syntax Select_Expression
        = 
        
 ;
syntax FnName_Expression
        = 
        ANY expr+
 ;
syntax Empty_Expression
        = 
        classState: ANY
 ;
syntax SRCOnSched_Expression
        = 
        
 ;
syntax SchedulerOf_Expression
        = 
        expr: ANY
 ;
syntax In_Expression
        = 
        ANY in ANY expr ANY classState
 ;
syntax Parenthese_Expression
        = 
        expr: ANY
 ;
syntax Binop_Expression
        = 
        ANY id_Expression ANY compo_Binop_Expression
 ;
syntax Compo_Binop_Expression
        = 
        ANY binop ANY id_Expression
 ;
syntax ValDecl
        = 
        ANY id ANY abstractSchedulerDecl
 ;
syntax Normal_ValDecl
        = 
        nonProcType: ANY
 ;
syntax System_ValDecl
        = 
        nonProcType: ANY
 ;
syntax Timer_ValDecl
        = 
        ()
 ;
syntax FunDecl
        = 
        ANY parameterTypes ANY nonProcType ANY abstractSchedulerDecl
 ;
syntax StateDef
        = 
        ANY classNameStorage+ ANY abstractSchedulerDecl
 ;
syntax ClassNameStorage
        = 
        ANY id ANY className ANY storage
 ;
syntax OrderDef
        = 
        ANY keyCritDecl ANY critDecls ANY abstractSchedulerDecl
 ;
syntax AdmissionDef
        = 
        ANY valDef+ ANY admCrit ANY attachDetach ANY abstractSchedulerDecl
 ;
syntax TraceDef
        = 
        ANY traceEvent ANY traceExpr ANY traceTest ANY abstractSchedulerDecl
 ;
syntax TypeExpr
        = 
        ANY id ANY bossaTypeExpr
 ;
syntax TypeOrVoid
        = 
        ANY isVoid ANY typeExpr
 ;
syntax ParameterType
        = 
        ANY typeExpr+
 ;
syntax Storage
        = 
        ()
 ;
syntax Process_Storage
        = 
        
 ;
syntax Scheduler_Storage
        = 
        stateVisibility: ANY
 ;
syntax Queue_Storage
        = 
        ANY stateVisibility ANY queueType
 ;
syntax KeyCritDecls
        = 
        ANY compoKeyCritDecls+
 ;
syntax CompoKeyCritDecls
        = 
        critDecl: ANY
 ;
syntax CritDecls
        = 
        ANY critDecl+
 ;
syntax CritDecl
        = 
        ()
 ;
syntax CritDeclWhithId
        = 
        id: ANY
 ;
syntax CritDeclWhithoutId
        = 
        expr: ANY
 ;
syntax ValDef
        = 
        ANY id ANY typeExpr ANY expr
 ;
syntax AdmCrit
        = 
        ANY paramVarDecl+ ANY expr
 ;
syntax AttachDetach
        = 
        ANY procParam1 ANY procParam2 ANY seqStmt1 ANY seqStmt2
 ;
syntax ParamVarDecl
        = 
        ANY id ANY typeExpr
 ;
syntax SeqStmt
        = 
        ANY valDef+ ANY stmt+
 ;
syntax TraceEvent
        = 
        ANY eventName+
 ;
syntax TraceExpr
        = 
        ANY id+
 ;
syntax TraceTest
        = 
        expr: ANY
 ;
syntax ProcParam
        = 
        ANY id ANY process ANY scheduler
 ;
syntax Statment
        = 
        ()
 ;
syntax IfStmt
        = 
        ANY expr ANY seqStmt
 ;
syntax ForStmt
        = 
        ()
 ;
syntax ForeachForStmt
        = 
        ANY id ANY isIn ANY classState+ ANY seqStmt
 ;
syntax ForEachIncreasingForStmt
        = 
        ANY id ANY seqStmt
 ;
syntax ForEachDecreasingForStmt
        = 
        ANY id ANY seqStmt
 ;
syntax ReturnStmt
        = 
        expr: ANY
 ;
syntax SwitchStmt
        = 
        ANY locExpr ANY composantOfSwitchStmt+
 ;
syntax AssignStmt
        = 
        ANY locExpr ANY assignUnop ANY assignBinop ANY expr
 ;
syntax MoveStmt
        = 
        ()
 ;
syntax NormalMoveStmt
        = 
        stateRef: ANY
 ;
syntax ForwardMoveStmt
        = 
        ANY isHead ANY isTail ANY moveExpr
 ;
syntax StateRef
        = 
        stateRef: ANY
 ;
syntax DeferStmt
        = 
        deferStmt: ANY
 ;
syntax PrimStmt
        = 
        ANY expr+
 ;
syntax ErrorStmt
        = 
        errorType: ANY
 ;
syntax BreakStmt
        = 
        
 ;
syntax LocExpr
        = 
        ANY stateName ANY id+
 ;
syntax MoveExpr
        = 
        ()
 ;
syntax Select_MoveExpr
        = 
        
 ;
syntax SatateName_MoveExpr
        = 
        
 ;
syntax ID_MoveExpr
        = 
        id: ANY
 ;
syntax IDSource_MoveExpr
        = 
        id: ANY
 ;
syntax IDTarget_MoveExpr
        = 
        id: ANY
 ;
syntax ClassState
        = 
        ANY state ANY className
 ;
syntax OnHandlerDef
        = 
        ANY eventName+ ANY seqStmt
 ;
syntax EventName
        = 
        ANY eventNameLeft ANY eventNameRight
 ;
syntax ComposantOfSwitchStmt
        = 
        ANY classState+ ANY seqStmt
 ;
syntax ComposantOfInterFunc
        = 
        ANY id ANY typeOrVoid ANY paramVarDecl+ ANY seqStmt
 ;
syntax BossaTypeExpr
        = 
        bossaTypeExpr: ANY
 ;
syntax QueueType
        = 
        ()
 ;
syntax Normal_QueueType
        = 
        
 ;
syntax Fifo_QueueType
        = 
        
 ;
syntax Lifo_QueueType
        = 
        
 ;
syntax Critop
        = 
        ANY lowest ANY highest
 ;
syntax StateVisibility
        = 
        ANY public ANY private
 ;
syntax ClassName
        = 
        className: ANY
 ;
syntax NonProcType
        = 
        ANY system ANY struct ANY id ANY nonProcType
 ;
syntax Unop
        = 
        ANY plus ANY minus ANY excl ANY tild
 ;
syntax Binop
        = 
        ANY plus ANY minus ANY star ANY slash ANY percentage ANY doubleAnd ANY doubleVerticalBar ANY and ANY eq ANY ne ANY lt ANY gt ANY le ANY ge ANY doubleLt ANY doubleGt
 ;
syntax AssignUnop
        = 
        ANY doublePlus ANY doubleMoins
 ;
syntax AssignBinop
        = 
        ANY affect ANY plusEqual ANY moinsEqual ANY starEqual ANY slashEqual ANY percentageEqual ANY andEqual ANY orEqual ANY doubleLtEqual ANY doubleGtEqual
 ;
