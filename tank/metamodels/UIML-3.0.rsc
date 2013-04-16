@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module UIML_3_0

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax UIML
        = 
        Header head Template templates+ Interface interfaces+ Peer peers+
 ;
syntax Header
        = 
        MetaData metas+
 ;
syntax MetaData
        = 
        String name String content
 ;
syntax Peer
        = 
        String id HowKind how ExportKind export Source source Presentation presentations+ Logic logics+
 ;
syntax Presentation
        = 
        String id HowKind how ExportKind export String base Source source DClass dClasses+
 ;
syntax Logic
        = 
        String id HowKind how ExportKind export Source source DComponent dComponents+
 ;
syntax DComponent
        = 
        String id HowKind how ExportKind export String mapsTo String location Source source DMethod dMethods+
 ;
syntax DClass
        = 
        String id HowKind how ExportKind export String mapsTo String mapsType Source source DMethod dMethods+ DProperty dProperties+ Event events+ Listener listeners+
 ;
syntax DProperty
        = 
        String id MapsTypeKind mapsType String mapsTo String returnType DMethod dMethods+ DParam dParams+
 ;
syntax DMethod
        = 
        String id HowKind how ExportKind export String mapsTo String returnType Source source DParam dParams+ Script script
 ;
syntax DParam
        = 
        String id String type String value
 ;
syntax Script
        = 
        String id String type HowKind how ExportKind export String value String source
 ;
syntax Listener
        = 
        String class String attacher
 ;
syntax UsedInTagKind
        = event: ()
        | listener: ()
        | part: ()
 ;
syntax MapsTypeKind
        = attribute: ()
        | getMethod: ()
        | setMethod: ()
        | method: ()
 ;
syntax ExtensibleElement
        = Peer
        | Presentation
        | Logic
        | DComponent
        | DClass
        | DMethod
        | Script
        | Interface
        | Structure
        | Part
        | Style
        | Property
        | Content
        | Behavior
        | Constant
        | Rule
        | Restructure
 ;
syntax Source
        = LocalSource
        | RemoteSource
 ;
syntax LocalSource
        = 
        source: ExtensibleElement
 ;
syntax RemoteSource
        = 
        location: String
 ;
syntax Interface
        = 
        String id HowKind how ExportKind export Source source Structure structure+ Style style+ Content content+ Behavior behavior+
 ;
syntax Structure
        = 
        String id HowKind how ExportKind export Source source Part parts+
 ;
syntax Part
        = 
        String id HowKind how ExportKind export String class String wherePart Source source Style style Content content Behavior behavior Part parts+ Repeat repeats+
 ;
syntax Style
        = 
        String id HowKind how ExportKind export Source source Property properties+
 ;
syntax Property
        = 
        String name HowKind how ExportKind export String values+ Part parts+ Event events+ Source source Constant constants+ Property properties+ Reference references+ Call calls+ Iterator iterators+
 ;
syntax Content
        = 
        String id HowKind how ExportKind export Source source Constant constants+
 ;
syntax Behavior
        = 
        String id HowKind how ExportKind export Source source Rule rules+
 ;
syntax Repeat
        = 
        Iterator iterator Part parts+
 ;
syntax Constant
        = 
        String id HowKind how ExportKind export String model String value Source source Constant constants+
 ;
syntax Reference
        = 
        constant: Constant
 ;
syntax Rule
        = 
        String id HowKind how ExportKind export Source source Condition condition Action action
 ;
syntax Condition
        = EventCondition
        | EqualCondition
        | OpCondition
 ;
syntax EventCondition
        = 
        event: Event
 ;
syntax EqualCondition
        = 
        equal: Equal
 ;
syntax OpCondition
        = 
        op: Operation
 ;
syntax Action
        = Action_1
        | Action_2
 ;
syntax Action_1
        = 
        Event event Property properties+ Call calls+ Restructure restructures+
 ;
syntax Action_2
        = 
        WhenTrue whenTrue WhenFalse whenFalse ByDefault byDefault
 ;
syntax Call
        = 
        String name Parameter params+
 ;
syntax Parameter
        = PropertyParameter
        | ReferenceParameter
        | CallParameter
        | OperationParameter
        | EventParameter
        | ConstantParameter
        | IteratorParameter
 ;
syntax PropertyParameter
        = 
        property: Property
 ;
syntax ReferenceParameter
        = 
        reference: Reference
 ;
syntax CallParameter
        = 
        call: Call
 ;
syntax OperationParameter
        = 
        op: Operation
 ;
syntax EventParameter
        = 
        event: Event
 ;
syntax ConstantParameter
        = 
        constant: Constant
 ;
syntax IteratorParameter
        = 
        iterator: Iterator
 ;
syntax Iterator
        = ConstantIterator
        | PropertyIterator
        | CallIterator
        | TextIterator
 ;
syntax ConstantIterator
        = 
        constant: Constant
 ;
syntax PropertyIterator
        = 
        property: Property
 ;
syntax CallIterator
        = 
        call: Call
 ;
syntax TextIterator
        = 
        value: Integer
 ;
syntax Event
        = 
        String class Part parts+
 ;
syntax Equal
        = EqualToConstant
        | EqualToProperty
        | EqualToReference
        | EqualToOperation
 ;
syntax EqualToConstant
        = 
        constant: Constant
 ;
syntax EqualToProperty
        = 
        property: Property
 ;
syntax EqualToReference
        = 
        reference: Reference
 ;
syntax EqualToOperation
        = 
        op: Operation
 ;
syntax Operation
        = 
        String name Constant constants+ Property properties+ Reference references+ Call calls+ Operation ops+ Event events+
 ;
syntax Restructure
        = 
        HowKind how Part atPart Part wherePart Source source Template template
 ;
syntax Branch
        = WhenTrue
        | WhenFalse
        | ByDefault
        | Property properties+ Call calls+ Restructure restructure Operation op Equal equal Event event
 ;
syntax WhenTrue
        = 
        Property properties+ Call calls+ Restructure restructure Operation op Equal equal Event event
 ;
syntax WhenFalse
        = 
        Property properties+ Call calls+ Restructure restructure Operation op Equal equal Event event
 ;
syntax ByDefault
        = 
        Property properties+ Call calls+ Restructure restructure Operation op Equal equal Event event
 ;
syntax HowKind
        = append: ()
        | cascade: ()
        | replace: ()
        | union: ()
        | delete: ()
 ;
syntax ExportKind
        = hidden: ()
        | optional: ()
        | required: ()
 ;
syntax WhereKind
        = first: ()
        | last: ()
        | before: ()
        | after: ()
 ;
syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
syntax Template
        = BehaviorTemplate
        | DClassTemplate
        | DComponentTemplate
        | ConstantTemplate
        | ContentTemplate
        | InterfaceTemplate
        | LogicTemplate
        | PartTemplate
        | PeerTemplate
        | PresentationTemplate
        | PropertyTemplate
        | RestructureTemplate
        | RuleTemplate
        | ScriptTemplate
        | StructureTemplate
        | StyleTemplate
 ;
syntax BehaviorTemplate
        = 
        behavior: Behavior
 ;
syntax DClassTemplate
        = 
        dClass: DClass
 ;
syntax DComponentTemplate
        = 
        dComponent: DComponent
 ;
syntax ConstantTemplate
        = 
        constant: Constant
 ;
syntax ContentTemplate
        = 
        content: Content
 ;
syntax InterfaceTemplate
        = 
        interface: Interface
 ;
syntax LogicTemplate
        = 
        logic: Logic
 ;
syntax PartTemplate
        = 
        part: Part
 ;
syntax PeerTemplate
        = 
        peer: Peer
 ;
syntax PresentationTemplate
        = 
        presentation: Presentation
 ;
syntax PropertyTemplate
        = 
        property: Property
 ;
syntax RestructureTemplate
        = 
        restructure: Restructure
 ;
syntax RuleTemplate
        = 
        rule: Rule
 ;
syntax ScriptTemplate
        = 
        script: Script
 ;
syntax StructureTemplate
        = 
        structure: Structure
 ;
syntax StyleTemplate
        = 
        style: Style
 ;
