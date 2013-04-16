@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module DotNET_SystemReflection

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Integer
        = 
        Integer
 ;
syntax String
        = 
        String
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax NamedElement
        = Assembly
        | Module
        | MemberInfo
        | ParameterInfo
 ;
syntax Assembly
        = 
        String location String imageRuntimeVersion String evidence String codeBase MethodInfo entryPoint Module modules+ Module manifestModule Assembly referencedAssembly+ ManifestResource manifest
 ;
syntax ManifestResource
        = 
        String content Assembly assembly
 ;
syntax Module
        = 
        String qualifiedName String scopeName Assembly assembly Type types+
 ;
syntax MemberInfo
        = PropertyInfo
        | FieldInfo
        | EventInfo
        | MethodBase
        | Type
 ;
syntax PropertyInfo
        = 
        Type propertyType PropertyAttributes attributes+
 ;
syntax FieldInfo
        = 
        Type fieldType FieldAttributes attributes+
 ;
syntax EventInfo
        = 
        Boolean isMulticast EventAttributes attributes Type eventHandlerType
 ;
syntax ParameterInfo
        = 
        String defaultValue Integer position ParameterAttributes attributes+ Type parameterType MethodBase member
 ;
syntax MethodBase
        = MethodInfo
        | ConstructorInfo
 ;
syntax MethodInfo
        = 
        returnType: Type
 ;
syntax ConstructorInfo
        = 
        MethodAttributes attributes+ ParameterInfo parameters+
 ;
syntax Type
        = 
        String namespace GenericParameterAttributes genericParameterAttributes+ TypeAttributes typeAttributes+ Type baseType Module module Type interfaces+ MemberInfo members+
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
