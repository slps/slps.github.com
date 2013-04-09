@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module DotNET_SystemReflection

syntax NamedElement
        = 
        ()
 ;
syntax Assembly
        = 
        ANY location ANY imageRuntimeVersion ANY evidence ANY codeBase ANY entryPoint ANY modules+ ANY manifestModule ANY referencedAssembly+ ANY manifest
 ;
syntax ManifestResource
        = 
        ANY content ANY assembly
 ;
syntax Module
        = 
        ANY qualifiedName ANY scopeName ANY assembly ANY types+
 ;
syntax MemberInfo
        = 
        ()
 ;
syntax PropertyInfo
        = 
        ANY propertyType ANY attributes+
 ;
syntax FieldInfo
        = 
        ANY fieldType ANY attributes+
 ;
syntax EventInfo
        = 
        ANY isMulticast ANY attributes ANY eventHandlerType
 ;
syntax ParameterInfo
        = 
        ANY defaultValue ANY position ANY attributes+ ANY parameterType ANY member
 ;
syntax MethodBase
        = 
        ()
 ;
syntax MethodInfo
        = 
        returnType: ANY
 ;
syntax ConstructorInfo
        = 
        ANY attributes+ ANY parameters+
 ;
syntax Type
        = 
        ANY namespace ANY genericParameterAttributes+ ANY typeAttributes+ ANY baseType ANY module ANY interfaces+ ANY members+
 ;
syntax EventAttributes
        = None: ()
        | ReservedMask: ()
        | RTSpecialName: ()
        | SpecialName: ()
 ;
syntax FieldAttributes
        = FieldAccessMask: ()
        | PrivateScope: ()
        | Private: ()
        | Assembly: ()
        | Family: ()
        | FamANDAssem: ()
        | FamORAssem: ()
        | Public: ()
        | Shared: ()
        | InitOnly: ()
        | Literal: ()
        | NotSerialized: ()
        | SpecialName: ()
        | PinvokeImpl: ()
        | ReservedMask: ()
        | RTSpecialName: ()
        | HasFieldMarshal: ()
        | HasDefault: ()
        | HasFieldRVA: ()
        | Static: ()
 ;
syntax GenericParameterAttributes
        = HasElementType: ()
        | Abstract: ()
        | AnsiClass: ()
        | AutoClass: ()
        | AutoLayout: ()
        | ByRef: ()
        | Class: ()
        | COMObject: ()
        | Contextful: ()
        | Enum: ()
        | ExplicitLayout: ()
        | Import: ()
        | Interface: ()
        | LayoutSequential: ()
        | MarshalByRef: ()
        | NestedAssembly: ()
        | NestedFamADNAssem: ()
        | NestedFamily: ()
        | NestedFamORAssem: ()
        | NestedPrivate: ()
        | NestedPublic: ()
        | NotPublic: ()
        | Pointer: ()
        | Primitive: ()
        | Public: ()
        | Sealed: ()
        | Serializable: ()
        | SpecialName: ()
        | UnicodeClass: ()
        | ValueType: ()
 ;
syntax MemberTypes
        = Constructor: ()
        | Event: ()
        | Field: ()
        | Method: ()
        | Property: ()
        | TypeInfo: ()
        | Custom: ()
        | NestedType: ()
        | All: ()
 ;
syntax MethodAttributes
        = Abstract: ()
        | Assembly: ()
        | ChekedAccessOnOverride: ()
        | FamADNAssem: ()
        | Family: ()
        | FamORAssem: ()
        | Final: ()
        | HasSecurity: ()
        | HideBySig: ()
        | MemberAccessMask: ()
        | NewSlot: ()
        | PInvokeImpl: ()
        | Private: ()
        | PrivateScope: ()
        | Public: ()
        | RequiredSecObject: ()
        | ReservedMask: ()
        | ReuseSlot: ()
        | RTSpecialName: ()
        | SpecialName: ()
        | Static: ()
        | UnmanagedExport: ()
        | Virtual: ()
        | VtableLayoutMask: ()
 ;
syntax ParameterAttributes
        = HasDefault: ()
        | HasDefaultMArshal: ()
        | In: ()
        | Lcid: ()
        | None: ()
        | Optional: ()
        | Out: ()
        | Reserved3: ()
        | Reserved4: ()
        | ReservedMask: ()
        | RetVal: ()
 ;
syntax PropertyAttributes
        = NotSupported: ()
        | Optional: ()
        | Read: ()
        | Required: ()
        | Write: ()
 ;
syntax TypeAttributes
        = Abstract: ()
        | AnsiClass: ()
        | AutoClass: ()
        | AutoLayout: ()
        | BeforFieldInit: ()
        | Class: ()
        | ClassSemanticsMask: ()
        | ExplicitLayout: ()
        | HasSecutity: ()
        | Import: ()
        | Interface: ()
        | LayoutMask: ()
        | NestedAssembly: ()
        | NestedFamADNAssem: ()
        | NestedFamily: ()
        | NestedFamORAssem: ()
        | NestedPrivate: ()
        | NestedPublic: ()
        | NotPublic: ()
        | Public: ()
        | ReservedMask: ()
        | RTSpecialName: ()
        | Sealed: ()
        | SequentialLayout: ()
        | Serializable: ()
        | SpecialName: ()
        | StringFormatMask: ()
        | UnicodeClass: ()
        | VisibilityMask: ()
 ;
