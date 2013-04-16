@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MiningMart_ViewDataRepresentation

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax ModelElement
        = RelationShip
        | Classifier
        | StructuralFeature
        | ColumnSetStatistics
        | Key
 ;
syntax Classifier
        = Class
        | DataType
 ;
syntax StructuralFeature
        = 
        Attribute
 ;
syntax Class
        = ColumnSet
        | UserInput
        | Concept
        | String name Attribute attributes+
 ;
syntax DataType
        = DomainDataType
        | attribute: Attribute
 ;
syntax Attribute
        = Column
        | FeatureAttribute
        | RoleRestriction
        | Value
        | Class class DataType has
 ;
syntax String
        = 
        String
 ;
syntax Integer
        = 
        Integer
 ;
syntax Boolean
        = "true"
        | "false"
 ;
syntax Column
        = 
        String name DataType dataType Key keys+ ColumnSet belongsToColumnSet BaseAttribute corespondsToBaseAttribute
 ;
syntax ColumnSet
        = Snapshot
        | Table
        | View
        | Integer number String file String dbConnectString String user Column hasColumn+ Key hasKey+ Concept correspondsToConcept RelationShip correspondsToRelationShip
 ;
syntax ColumnStatistics
        = 
        Integer unique Integer missing Integer min Integer max Integer average Integer standarDeviation String distributionValue Integer distributionCount Integer distributionMin Integer distributionMax Column forColumn
 ;
syntax ColumnSetStatistics
        = 
        Integer allNumber Integer ordinalNumber Integer nominalNumber Integer timeNumber ColumnSet forColumnSet
 ;
syntax Snapshot
        = 
        Integer number String file String dbConnectString String user Column hasColumn+ Key hasKey+ Concept correspondsToConcept RelationShip correspondsToRelationShip
 ;
syntax Table
        = 
        Integer number String file String dbConnectString String user Column hasColumn+ Key hasKey+ Concept correspondsToConcept RelationShip correspondsToRelationShip
 ;
syntax View
        = 
        Integer number String file String dbConnectString String user Column hasColumn+ Key hasKey+ Concept correspondsToConcept RelationShip correspondsToRelationShip
 ;
syntax Key
        = ForeignKey
        | PrimaryKey
        | Boolean isUsedForIndex Column hasColumn+ ColumnSet isAssociatedToColumnSet
 ;
syntax ForeignKey
        = 
        Table isConnectionTo RelationShip correspondsToRelationShip
 ;
syntax PrimaryKey
        = 
        Boolean isUsedForIndex Column hasColumn+ ColumnSet isAssociatedToColumnSet
 ;
syntax Concept
        = 
        String subConceptRestriction Concept isA RelationShip FromConcept RelationShip ToConcept ColumnSet correspondsToColumnSet
 ;
syntax RelationShip
        = 
        String name String subRelationShipRestriction String defined RelationShip isA ForeignKey correspondsToForeignKey+ ColumnSet correspondsToColumnSet Concept FromConcept Concept ToConcept
 ;
syntax FeatureAttribute
        = BaseAttribute
        | MultiColumnFeature
        | String name Boolean relevanceForMining DataType attributeType Concept belongsToConcept Column correspondsToColumns+
 ;
syntax BaseAttribute
        = 
        MultiColumnFeature isPartMultiColumnFeature DomainDataType domainDataType
 ;
syntax MultiColumnFeature
        = 
        BaseAttribute consitsOfBaseAttributes+
 ;
syntax Value
        = 
        String name DomainDataType domainDataType UserInput belongsToUserInput+
 ;
syntax UserInput
        = 
        Value containsValues+
 ;
syntax Ordinal
        = 
        Scalar
 ;
syntax Scalar
        = Time
        | Binary
 ;
syntax Time
        = 
        ()
 ;
syntax Binary
        = 
        ()
 ;
syntax Categorial
        = 
        ()
 ;
syntax KeyAttribute
        = TimeGroup
        | Spatial
 ;
syntax TimeGroup
        = 
        ()
 ;
syntax Spatial
        = 
        ()
 ;
syntax Constant
        = 
        ()
 ;
syntax RoleRestriction
        = 
        String name RelationShip restrictionForRelationShip Concept restrictionForConcept Concept restrictionToConcept Integer min Integer max Concept belongsToConcept
 ;
syntax DomainDataType
        = Ordinal
        | Nominal
        | baseAttributeD: BaseAttribute
 ;
syntax Nominal
        = Binary
        | Categorial
        | KeyAttribute
        | Constant
 ;
syntax Parameter
        = Concept
        | RelationShip
        | Value
        | ()
 ;
