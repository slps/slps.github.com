@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module ODP_NV

syntax Node
        = 
        ANY location ANY manager ANY capsules+
 ;
syntax Nucleus
        = 
        ANY otherEngObjects+ ANY beos+
 ;
syntax Capsule
        = 
        ANY otherEngObjects+ ANY capsuleManager ANY clusterManagers+ ANY clusters+
 ;
syntax EngineeringObject
        = 
        nodeManager: ANY
 ;
syntax CapsuleManager
        = 
        ANY cmClusterManagers+
 ;
syntax Cluster
        = 
        ANY clusterManager ANY clusterBeos+
 ;
syntax ClusterManager
        = 
        ANY clusters+ ANY clustermanagerBeos+ ANY capsuleManager
 ;
syntax BEO
        = 
        ANY beoNodeManager ANY locallyBoundObjects+ ANY localbinds+ ANY beoManager ANY beoChannel+ ANY beoStub+
 ;
syntax Stub
        = 
        ANY stChannel ANY stBinder ANY stBeo
 ;
syntax Binder
        = 
        ANY bdChannel ANY chBinder ANY bdProtocolObject+
 ;
syntax ProtocolObject
        = 
        ANY type ANY poChannel ANY poBinder ANY poInterceptor+ ANY poBoundProtocolObject+
 ;
syntax Interceptor
        = 
        ANY intChannel ANY intProtocolObject
 ;
syntax Channel
        = 
        ANY chStub ANY chBinder ANY chPObject ANY chInterceptor+ ANY chEndPoint
 ;
syntax ClientServerChannel
        = 
        ()
 ;
syntax ControllingObject
        = 
        ANY coDomain+
 ;
syntax SecurityAuthority
        = 
        ()
 ;
syntax ManagementAuthority
        = 
        ()
 ;
syntax AddressingAuthority
        = 
        ()
 ;
syntax NamingAuthority
        = 
        ()
 ;
syntax ControlledObject
        = 
        ANY cdoDomain+
 ;
syntax Domain
        = 
        ANY parentDomain ANY subDomain+ ANY domControllingObject ANY domMember+
 ;
syntax SecurityDomain
        = 
        ()
 ;
syntax ManagementDomain
        = 
        ()
 ;
syntax AddressingDomain
        = 
        ()
 ;
syntax NamingDomain
        = 
        ()
 ;
syntax EngineeringInterfaceReferenceManagementDomain
        = 
        ANY eirmdReference+ ANY eirmdManagementPolicy
 ;
syntax EngineeringInterfaceReferenceManagementPolicy
        = 
        ANY eirmpManagementDomain+
 ;
syntax EngineeringInterfaceReference
        = 
        eirManagementDomain: ANY
 ;
