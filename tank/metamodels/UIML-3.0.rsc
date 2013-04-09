@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module UIML_3_0

syntax UIML
        = 
        ANY head ANY templates+ ANY interfaces+ ANY peers+
 ;
syntax Header
        = 
        ANY metas+
 ;
syntax MetaData
        = 
        ANY name ANY content
 ;
syntax Peer
        = 
        ANY id ANY how ANY export ANY source ANY presentations+ ANY logics+
 ;
syntax Presentation
        = 
        ANY id ANY how ANY export ANY base ANY source ANY dClasses+
 ;
syntax Logic
        = 
        ANY id ANY how ANY export ANY source ANY dComponents+
 ;
syntax DComponent
        = 
        ANY id ANY how ANY export ANY mapsTo ANY location ANY source ANY dMethods+
 ;
syntax DClass
        = 
        ANY id ANY how ANY export ANY mapsTo ANY mapsType ANY source ANY dMethods+ ANY dProperties+ ANY events+ ANY listeners+
 ;
syntax DProperty
        = 
        ANY id ANY mapsType ANY mapsTo ANY returnType ANY dMethods+ ANY dParams+
 ;
syntax DMethod
        = 
        ANY id ANY how ANY export ANY mapsTo ANY returnType ANY source ANY dParams+ ANY script
 ;
syntax DParam
        = 
        ANY id ANY type ANY value
 ;
syntax Script
        = 
        ANY id ANY type ANY how ANY export ANY value ANY source
 ;
syntax Listener
        = 
        ANY class ANY attacher
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
        = 
        ()
 ;
syntax Source
        = 
        ()
 ;
syntax LocalSource
        = 
        source: ANY
 ;
syntax RemoteSource
        = 
        location: ANY
 ;
syntax Interface
        = 
        ANY id ANY how ANY export ANY source ANY structure+ ANY style+ ANY content+ ANY behavior+
 ;
syntax Structure
        = 
        ANY id ANY how ANY export ANY source ANY parts+
 ;
syntax Part
        = 
        ANY id ANY how ANY export ANY class ANY wherePart ANY source ANY style ANY content ANY behavior ANY parts+ ANY repeats+
 ;
syntax Style
        = 
        ANY id ANY how ANY export ANY source ANY properties+
 ;
syntax Property
        = 
        ANY name ANY how ANY export ANY values+ ANY parts+ ANY events+ ANY source ANY constants+ ANY properties+ ANY references+ ANY calls+ ANY iterators+
 ;
syntax Content
        = 
        ANY id ANY how ANY export ANY source ANY constants+
 ;
syntax Behavior
        = 
        ANY id ANY how ANY export ANY source ANY rules+
 ;
syntax Repeat
        = 
        ANY iterator ANY parts+
 ;
syntax Constant
        = 
        ANY id ANY how ANY export ANY model ANY value ANY source ANY constants+
 ;
syntax Reference
        = 
        constant: ANY
 ;
syntax Rule
        = 
        ANY id ANY how ANY export ANY source ANY condition ANY action
 ;
syntax Condition
        = 
        ()
 ;
syntax EventCondition
        = 
        event: ANY
 ;
syntax EqualCondition
        = 
        equal: ANY
 ;
syntax OpCondition
        = 
        op: ANY
 ;
syntax Action
        = 
        ()
 ;
syntax Action_1
        = 
        ANY event ANY properties+ ANY calls+ ANY restructures+
 ;
syntax Action_2
        = 
        ANY whenTrue ANY whenFalse ANY byDefault
 ;
syntax Call
        = 
        ANY name ANY params+
 ;
syntax Parameter
        = 
        ()
 ;
syntax PropertyParameter
        = 
        property: ANY
 ;
syntax ReferenceParameter
        = 
        reference: ANY
 ;
syntax CallParameter
        = 
        call: ANY
 ;
syntax OperationParameter
        = 
        op: ANY
 ;
syntax EventParameter
        = 
        event: ANY
 ;
syntax ConstantParameter
        = 
        constant: ANY
 ;
syntax IteratorParameter
        = 
        iterator: ANY
 ;
syntax Iterator
        = 
        ()
 ;
syntax ConstantIterator
        = 
        constant: ANY
 ;
syntax PropertyIterator
        = 
        property: ANY
 ;
syntax CallIterator
        = 
        call: ANY
 ;
syntax TextIterator
        = 
        value: ANY
 ;
syntax Event
        = 
        ANY class ANY parts+
 ;
syntax Equal
        = 
        ()
 ;
syntax EqualToConstant
        = 
        constant: ANY
 ;
syntax EqualToProperty
        = 
        property: ANY
 ;
syntax EqualToReference
        = 
        reference: ANY
 ;
syntax EqualToOperation
        = 
        op: ANY
 ;
syntax Operation
        = 
        ANY name ANY constants+ ANY properties+ ANY references+ ANY calls+ ANY ops+ ANY events+
 ;
syntax Restructure
        = 
        ANY how ANY atPart ANY wherePart ANY source ANY template
 ;
syntax Branch
        = 
        ANY properties+ ANY calls+ ANY restructure ANY op ANY equal ANY event
 ;
syntax WhenTrue
        = 
        ()
 ;
syntax WhenFalse
        = 
        ()
 ;
syntax ByDefault
        = 
        ()
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
syntax Template
        = 
        ()
 ;
syntax BehaviorTemplate
        = 
        behavior: ANY
 ;
syntax DClassTemplate
        = 
        dClass: ANY
 ;
syntax DComponentTemplate
        = 
        dComponent: ANY
 ;
syntax ConstantTemplate
        = 
        constant: ANY
 ;
syntax ContentTemplate
        = 
        content: ANY
 ;
syntax InterfaceTemplate
        = 
        interface: ANY
 ;
syntax LogicTemplate
        = 
        logic: ANY
 ;
syntax PartTemplate
        = 
        part: ANY
 ;
syntax PeerTemplate
        = 
        peer: ANY
 ;
syntax PresentationTemplate
        = 
        presentation: ANY
 ;
syntax PropertyTemplate
        = 
        property: ANY
 ;
syntax RestructureTemplate
        = 
        restructure: ANY
 ;
syntax RuleTemplate
        = 
        rule: ANY
 ;
syntax ScriptTemplate
        = 
        script: ANY
 ;
syntax StructureTemplate
        = 
        structure: ANY
 ;
syntax StyleTemplate
        = 
        style: ANY
 ;
