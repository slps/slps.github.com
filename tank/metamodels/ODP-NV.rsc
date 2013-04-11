@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ODP_NV

syntax Node
        = 
        String location Nucleus manager Capsule capsules+
 ;
syntax Nucleus
        = 
        EngineeringObject otherEngObjects+ BEO beos+
 ;
syntax Capsule
        = 
        EngineeringObject otherEngObjects+ CapsuleManager capsuleManager ClusterManager clusterManagers+ Cluster clusters+
 ;
syntax EngineeringObject
        = Nucleus
        | CapsuleManager
        | ClusterManager
        | BEO
        | Stub
        | Binder
        | ProtocolObject
        | Interceptor
        | ControllingObject
        | ControlledObject
        | nodeManager: Nucleus
 ;
syntax CapsuleManager
        = 
        ClusterManager cmClusterManagers+
 ;
syntax Cluster
        = 
        ClusterManager clusterManager BEO clusterBeos+
 ;
syntax ClusterManager
        = 
        Cluster clusters+ BEO clustermanagerBeos+ CapsuleManager capsuleManager
 ;
syntax BEO
        = 
        Nucleus beoNodeManager BEO locallyBoundObjects+ BEO localbinds+ ClusterManager beoManager Channel beoChannel+ Stub beoStub+
 ;
syntax Stub
        = 
        Channel stChannel Binder stBinder BEO stBeo
 ;
syntax Binder
        = 
        Channel bdChannel Stub chBinder ProtocolObject bdProtocolObject+
 ;
syntax ProtocolObject
        = 
        String type Channel poChannel Binder poBinder Interceptor poInterceptor+ ProtocolObject poBoundProtocolObject+
 ;
syntax Interceptor
        = 
        Channel intChannel ProtocolObject intProtocolObject
 ;
syntax Channel
        = ClientServerChannel
        | Stub chStub Binder chBinder ProtocolObject chPObject Interceptor chInterceptor+ BEO chEndPoint
 ;
syntax ClientServerChannel
        = 
        Stub chStub Binder chBinder ProtocolObject chPObject Interceptor chInterceptor+ BEO chEndPoint
 ;
syntax ControllingObject
        = SecurityAuthority
        | ManagementAuthority
        | AddressingAuthority
        | NamingAuthority
        | Domain coDomain+
 ;
syntax SecurityAuthority
        = 
        Domain coDomain+
 ;
syntax ManagementAuthority
        = 
        Domain coDomain+
 ;
syntax AddressingAuthority
        = 
        Domain coDomain+
 ;
syntax NamingAuthority
        = 
        Domain coDomain+
 ;
syntax ControlledObject
        = 
        Domain cdoDomain+
 ;
syntax Domain
        = SecurityDomain
        | ManagementDomain
        | AddressingDomain
        | NamingDomain
        | Domain parentDomain Domain subDomain+ ControllingObject domControllingObject ControlledObject domMember+
 ;
syntax SecurityDomain
        = 
        Domain parentDomain Domain subDomain+ ControllingObject domControllingObject ControlledObject domMember+
 ;
syntax ManagementDomain
        = 
        Domain parentDomain Domain subDomain+ ControllingObject domControllingObject ControlledObject domMember+
 ;
syntax AddressingDomain
        = 
        Domain parentDomain Domain subDomain+ ControllingObject domControllingObject ControlledObject domMember+
 ;
syntax NamingDomain
        = 
        EngineeringInterfaceReferenceManagementDomain
 ;
syntax EngineeringInterfaceReferenceManagementDomain
        = 
        EngineeringInterfaceReference eirmdReference+ EngineeringInterfaceReferenceManagementPolicy eirmdManagementPolicy
 ;
syntax EngineeringInterfaceReferenceManagementPolicy
        = 
        EngineeringInterfaceReferenceManagementDomain eirmpManagementDomain+
 ;
syntax EngineeringInterfaceReference
        = 
        eirManagementDomain: EngineeringInterfaceReferenceManagementDomain
 ;
syntax String
        = 
        String
 ;
