@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Pnml_partitions

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax SortDeclaration
        = 
        Partition
 ;
syntax OperatorDeclaration
        = 
        PartitionElement
 ;
syntax BuiltInOperator
        = 
        PartitionOperator
 ;
syntax Partition
        = 
        partition: SortDeclaration_content Sort PartitionElement+
 ;
syntax PartitionElement
        = 
        partitionelement: OperatorDeclaration_content Term+
 ;
syntax PartitionOperator_content
        = 
        BuiltInOperator_content
 ;
syntax PartitionOperator
        = PartitionLessThan
        | PartitionGreaterThan
        | PartitionElementOf
 ;
syntax PartitionLessThan
        = 
        ltp: PartitionOperator_content
 ;
syntax PartitionGreaterThan
        = 
        gtp: PartitionOperator_content
 ;
syntax PartitionElementOf
        = 
        partitionelementof: String refpartition PartitionOperator_content
 ;
