@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module MiningMart_ViewDataRepresentation

syntax ModelElement
        = 
        ()
 ;
syntax Classifier
        = 
        ()
 ;
syntax StructuralFeature
        = 
        ()
 ;
syntax Class
        = 
        ANY name ANY attributes+
 ;
syntax DataType
        = 
        attribute: ANY
 ;
syntax Attribute
        = 
        ANY class ANY has
 ;
syntax Column
        = 
        ANY name ANY dataType ANY keys+ ANY belongsToColumnSet ANY corespondsToBaseAttribute
 ;
syntax ColumnSet
        = 
        ANY number ANY file ANY dbConnectString ANY user ANY hasColumn+ ANY hasKey+ ANY correspondsToConcept ANY correspondsToRelationShip
 ;
syntax ColumnStatistics
        = 
        ANY unique ANY missing ANY min ANY max ANY average ANY standarDeviation ANY distributionValue ANY distributionCount ANY distributionMin ANY distributionMax ANY forColumn
 ;
syntax ColumnSetStatistics
        = 
        ANY allNumber ANY ordinalNumber ANY nominalNumber ANY timeNumber ANY forColumnSet
 ;
syntax Snapshot
        = 
        ()
 ;
syntax Table
        = 
        ()
 ;
syntax View
        = 
        ()
 ;
syntax Key
        = 
        ANY isUsedForIndex ANY hasColumn+ ANY isAssociatedToColumnSet
 ;
syntax ForeignKey
        = 
        ANY isConnectionTo ANY correspondsToRelationShip
 ;
syntax PrimaryKey
        = 
        ()
 ;
syntax Concept
        = 
        ANY subConceptRestriction ANY isA ANY FromConcept ANY ToConcept ANY correspondsToColumnSet
 ;
syntax RelationShip
        = 
        ANY name ANY subRelationShipRestriction ANY defined ANY isA ANY correspondsToForeignKey+ ANY correspondsToColumnSet ANY FromConcept ANY ToConcept
 ;
syntax FeatureAttribute
        = 
        ANY name ANY relevanceForMining ANY attributeType ANY belongsToConcept ANY correspondsToColumns+
 ;
syntax BaseAttribute
        = 
        ANY isPartMultiColumnFeature ANY domainDataType
 ;
syntax MultiColumnFeature
        = 
        ANY consitsOfBaseAttributes+
 ;
syntax Value
        = 
        ANY name ANY domainDataType ANY belongsToUserInput+
 ;
syntax UserInput
        = 
        ANY containsValues+
 ;
syntax Ordinal
        = 
        ()
 ;
syntax Scalar
        = 
        ()
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
        = 
        ()
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
        ANY name ANY restrictionForRelationShip ANY restrictionForConcept ANY restrictionToConcept ANY min ANY max ANY belongsToConcept
 ;
syntax DomainDataType
        = 
        baseAttributeD: ANY
 ;
syntax Nominal
        = 
        ()
 ;
syntax Parameter
        = 
        ()
 ;
