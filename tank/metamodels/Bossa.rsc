@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Bossa

syntax BossaProgramm
        = 
        scheduler: Scheduler
 ;
syntax Scheduler
        = NormalScheduler
        | VirtualScheduler
 ;
syntax NormalScheduler
        = 
        schedulerDecl: SchedulerDecl
 ;
syntax VirtualScheduler
        = 
        vschedulerDecl: VSchdulerDecl
 ;
syntax AbstractSchedulerDecl
        = SchedulerDecl
        | VSchdulerDecl
 ;
syntax SchedulerDecl
        = 
        processDef: ProcessDef
 ;
syntax VSchdulerDecl
        = 
        schedulerDef: SchedulerDef
 ;
syntax ConstDef
        = 
        String id Expression expr BossaTypeExpr bossaTypeExpr
 ;
syntax TypeDef
        = 
        enumRang: EnumRange
 ;
syntax EnumRange
        = 
        EnumDef enumDef RangeDef rangeDef
 ;
syntax EnumDef
        = 
        String theIds+
 ;
syntax BagId
        = 
        theValue: String
 ;
syntax RangeDef
        = 
        expr: Expression
 ;
syntax ProcessDef
        = 
        ProcessVarDecl processVarDecl+
 ;
syntax SchedulerDef
        = 
        ProcessVarDecl processVarDecl+
 ;
syntax ProcessVarDecl
        = Timer_ProcessVarDecl
        | System_ProcessVarDecl
        | Normal_ProcessVarDecl
        | String id ProcessDef processDef SchedulerDef schedulerDef
 ;
syntax Timer_ProcessVarDecl
        = 
        ()
 ;
syntax System_ProcessVarDecl
        = 
        Boolean system TypeExpr typeExpr
 ;
syntax Normal_ProcessVarDecl
        = 
        typeExpr: TypeExpr
 ;
syntax HandlerDef
        = 
        String id Scheduler scheduler OnHandlerDef onHandlerDef+
 ;
syntax InterfaceDef
        = 
        ComposantOfInterFunc composantOfInterFunc+ Scheduler scheduler
 ;
syntax FunctionDef
        = 
        ComposantOfInterFunc composantOfInterFunc+ Scheduler scheduler
 ;
syntax Expression
        = Integer_Expression
        | Id_Expression
        | State_Expression
        | True_Expression
        | False_Expression
        | Unop_Expression
        | Etoile_Expression
        | ExpId_Expression
        | Select_Expression
        | FnName_Expression
        | Empty_Expression
        | SRCOnSched_Expression
        | SchedulerOf_Expression
        | In_Expression
        | Parenthese_Expression
        | Binop_Expression
 ;
syntax Integer_Expression
        = 
        theValue: Integer
 ;
syntax Id_Expression
        = 
        id: String
 ;
syntax State_Expression
        = 
        theValue: String
 ;
syntax True_Expression
        = 
        ()
 ;
syntax False_Expression
        = 
        ()
 ;
syntax Unop_Expression
        = 
        Unop unop Expression expr
 ;
syntax Etoile_Expression
        = 
        expr: Expression
 ;
syntax ExpId_Expression
        = 
        String id Expression expr
 ;
syntax Select_Expression
        = 
        ()
 ;
syntax FnName_Expression
        = 
        Expression expr+
 ;
syntax Empty_Expression
        = 
        classState: ClassState
 ;
syntax SRCOnSched_Expression
        = 
        ()
 ;
syntax SchedulerOf_Expression
        = 
        expr: Expression
 ;
syntax In_Expression
        = 
        Boolean in Expression expr ClassState classState
 ;
syntax Parenthese_Expression
        = 
        expr: Expression
 ;
syntax Binop_Expression
        = 
        Id_Expression id_Expression Compo_Binop_Expression compo_Binop_Expression
 ;
syntax Compo_Binop_Expression
        = 
        Binop binop Id_Expression id_Expression
 ;
syntax ValDecl
        = Normal_ValDecl
        | System_ValDecl
        | Timer_ValDecl
        | String id AbstractSchedulerDecl abstractSchedulerDecl
 ;
syntax Normal_ValDecl
        = 
        nonProcType: NonProcType
 ;
syntax System_ValDecl
        = 
        nonProcType: NonProcType
 ;
syntax Timer_ValDecl
        = 
        ()
 ;
syntax FunDecl
        = 
        ParameterType parameterTypes NonProcType nonProcType AbstractSchedulerDecl abstractSchedulerDecl
 ;
syntax StateDef
        = 
        ClassNameStorage classNameStorage+ AbstractSchedulerDecl abstractSchedulerDecl
 ;
syntax ClassNameStorage
        = 
        String id ClassName className Storage storage
 ;
syntax OrderDef
        = 
        KeyCritDecls keyCritDecl CritDecls critDecls AbstractSchedulerDecl abstractSchedulerDecl
 ;
syntax AdmissionDef
        = 
        ValDef valDef+ AdmCrit admCrit AttachDetach attachDetach AbstractSchedulerDecl abstractSchedulerDecl
 ;
syntax TraceDef
        = 
        TraceEvent traceEvent TraceExpr traceExpr TraceTest traceTest AbstractSchedulerDecl abstractSchedulerDecl
 ;
syntax TypeExpr
        = 
        String id BossaTypeExpr bossaTypeExpr
 ;
syntax TypeOrVoid
        = 
        Boolean isVoid TypeExpr typeExpr
 ;
syntax ParameterType
        = 
        TypeExpr typeExpr+
 ;
syntax Storage
        = Process_Storage
        | Scheduler_Storage
        | Queue_Storage
 ;
syntax Process_Storage
        = 
        ()
 ;
syntax Scheduler_Storage
        = 
        stateVisibility: StateVisibility
 ;
syntax Queue_Storage
        = 
        StateVisibility stateVisibility QueueType queueType
 ;
syntax KeyCritDecls
        = 
        CompoKeyCritDecls compoKeyCritDecls+
 ;
syntax CompoKeyCritDecls
        = 
        critDecl: CritDecl
 ;
syntax CritDecls
        = 
        CritDecl critDecl+
 ;
syntax CritDecl
        = CritDeclWhithId
        | CritDeclWhithoutId
 ;
syntax CritDeclWhithId
        = 
        id: String
 ;
syntax CritDeclWhithoutId
        = 
        expr: Expression
 ;
syntax ValDef
        = 
        String id TypeExpr typeExpr Expression expr
 ;
syntax AdmCrit
        = 
        ParamVarDecl paramVarDecl+ Expression expr
 ;
syntax AttachDetach
        = 
        ProcParam procParam1 ProcParam procParam2 SeqStmt seqStmt1 SeqStmt seqStmt2
 ;
syntax ParamVarDecl
        = 
        String id TypeExpr typeExpr
 ;
syntax SeqStmt
        = 
        ValDef valDef+ Statment stmt+
 ;
syntax TraceEvent
        = 
        EventName eventName+
 ;
syntax TraceExpr
        = 
        String id+
 ;
syntax TraceTest
        = 
        expr: Expression
 ;
syntax ProcParam
        = 
        String id Boolean process Boolean scheduler
 ;
syntax Statment
        = IfStmt
        | ForStmt
        | ReturnStmt
        | SwitchStmt
        | AssignStmt
        | MoveStmt
        | DeferStmt
        | PrimStmt
        | ErrorStmt
        | BreakStmt
 ;
syntax IfStmt
        = 
        Expression expr SeqStmt seqStmt
 ;
syntax ForStmt
        = ForeachForStmt
        | ForEachIncreasingForStmt
        | ForEachDecreasingForStmt
 ;
syntax ForeachForStmt
        = 
        String id Boolean isIn ClassState classState+ SeqStmt seqStmt
 ;
syntax ForEachIncreasingForStmt
        = 
        String id SeqStmt seqStmt
 ;
syntax ForEachDecreasingForStmt
        = 
        String id SeqStmt seqStmt
 ;
syntax ReturnStmt
        = 
        expr: Expression
 ;
syntax SwitchStmt
        = 
        LocExpr locExpr ComposantOfSwitchStmt composantOfSwitchStmt+
 ;
syntax AssignStmt
        = 
        LocExpr locExpr AssignUnop assignUnop AssignBinop assignBinop Expression expr
 ;
syntax MoveStmt
        = NormalMoveStmt
        | ForwardMoveStmt
 ;
syntax NormalMoveStmt
        = 
        stateRef: StateRef
 ;
syntax ForwardMoveStmt
        = 
        Boolean isHead Boolean isTail MoveExpr moveExpr
 ;
syntax StateRef
        = 
        stateRef: String
 ;
syntax DeferStmt
        = 
        deferStmt: String
 ;
syntax PrimStmt
        = 
        Expression expr+
 ;
syntax ErrorStmt
        = 
        errorType: String
 ;
syntax BreakStmt
        = 
        ()
 ;
syntax LocExpr
        = 
        String stateName String id+
 ;
syntax MoveExpr
        = Select_MoveExpr
        | SatateName_MoveExpr
        | ID_MoveExpr
        | IDSource_MoveExpr
        | IDTarget_MoveExpr
 ;
syntax Select_MoveExpr
        = 
        ()
 ;
syntax SatateName_MoveExpr
        = 
        ()
 ;
syntax ID_MoveExpr
        = 
        id: String
 ;
syntax IDSource_MoveExpr
        = 
        id: String
 ;
syntax IDTarget_MoveExpr
        = 
        id: String
 ;
syntax ClassState
        = 
        Boolean state ClassName className
 ;
syntax OnHandlerDef
        = 
        EventName eventName+ SeqStmt seqStmt
 ;
syntax EventName
        = 
        String eventNameLeft String eventNameRight
 ;
syntax ComposantOfSwitchStmt
        = 
        ClassState classState+ SeqStmt seqStmt
 ;
syntax ComposantOfInterFunc
        = 
        String id TypeOrVoid typeOrVoid ParamVarDecl paramVarDecl+ SeqStmt seqStmt
 ;
syntax BossaTypeExpr
        = 
        bossaTypeExpr: String
 ;
syntax QueueType
        = Normal_QueueType
        | Fifo_QueueType
        | Lifo_QueueType
 ;
syntax Normal_QueueType
        = 
        ()
 ;
syntax Fifo_QueueType
        = 
        ()
 ;
syntax Lifo_QueueType
        = 
        ()
 ;
syntax Critop
        = 
        Boolean lowest Boolean highest
 ;
syntax StateVisibility
        = 
        Boolean public Boolean private
 ;
syntax ClassName
        = 
        className: String
 ;
syntax NonProcType
        = 
        Boolean system Boolean struct Boolean id String nonProcType
 ;
syntax Unop
        = 
        Boolean plus Boolean minus Boolean excl Boolean tild
 ;
syntax Binop
        = 
        Boolean plus Boolean minus Boolean star Boolean slash Boolean percentage Boolean doubleAnd Boolean doubleVerticalBar Boolean and Boolean eq Boolean ne Boolean lt Boolean gt Boolean le Boolean ge Boolean doubleLt Boolean doubleGt
 ;
syntax AssignUnop
        = 
        Boolean doublePlus Boolean doubleMoins
 ;
syntax AssignBinop
        = 
        Boolean affect Boolean plusEqual Boolean moinsEqual Boolean starEqual Boolean slashEqual Boolean percentageEqual Boolean andEqual Boolean orEqual Boolean doubleLtEqual Boolean doubleGtEqual
 ;
