@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module EXPRESS

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Express_metamodel::java::lang::void
        = 
        ()
 ;
syntax Express_metamodel::java::lang::int
        = 
        ()
 ;
syntax Express_metamodel::Rules::ONEOFConstraint
        = 
        ()
 ;
syntax Express_metamodel::Rules::SupertypeRule
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AEntityType Express_metamodel::Rules::SupertypeRule::named-supertype Rules/Express_metamodel%3A%3ARules%3A%3ASubtypeConstraint Express_metamodel::Rules::SupertypeRule::constraints+ MOF/Boolean assertsAbstract
 ;
syntax Express_metamodel::Rules::SubtypeConstraint
        = 
        Rules/Express_metamodel%3A%3ARules%3A%3AExtent Express_metamodel::Rules::SubtypeConstraint::constrained-subtypes+ Core/Express_metamodel%3A%3ACore%3A%3AExpression Express_metamodel::Rules::SubtypeConstraint::equivalent-rule Rules/Express_metamodel%3A%3ARules%3A%3ASupertypeRule Express_metamodel::Rules::SubtypeConstraint::collection
 ;
syntax Express_metamodel::Rules::Extent
        = 
        Rules/Express_metamodel%3A%3ARules%3A%3ASubtypeConstraint Express_metamodel::Rules::Extent::constraints+ Instances/Express_metamodel%3A%3AInstances%3A%3AEntityInstance Express_metamodel::Rules::Extent::content+ Instances/Express_metamodel%3A%3AInstances%3A%3APopulation Express_metamodel::Rules::Extent::within-population Rules/Express_metamodel%3A%3ARules%3A%3AGlobalRule Express_metamodel::Rules::Extent::constraint-rules+ Core/Express_metamodel%3A%3ACore%3A%3AEntityType Express_metamodel::Rules::Extent::for-type Core/Express_metamodel%3A%3ACore%3A%3AScopedId id
 ;
syntax Express_metamodel::Rules::TOTAL_OVERConstraint
        = 
        ()
 ;
syntax Express_metamodel::Rules::ANDConstraint
        = 
        ()
 ;
syntax Express_metamodel::Rules::GlobalRule
        = 
        Algorithms/Express_metamodel%3A%3AAlgorithms%3A%3AStatement Express_metamodel::Rules::GlobalRule::supporting-body Rules/Express_metamodel%3A%3ARules%3A%3AExtent Express_metamodel::Rules::GlobalRule::constrained-extents+ Rules/Express_metamodel%3A%3ARules%3A%3ANamedRule Express_metamodel::Rules::GlobalRule::contains-rules+
 ;
syntax Express_metamodel::Rules::NamedRule
        = 
        Rules/Express_metamodel%3A%3ARules%3A%3AGlobalRule Express_metamodel::Rules::NamedRule::namespace Core/Express_metamodel%3A%3ACore%3A%3AExpression Express_metamodel::Rules::NamedRule::asserts-expression MOF/Integer position
 ;
syntax Express_metamodel::Statements::ProcedureCall
        = 
        Algorithms/Express_metamodel%3A%3AAlgorithms%3A%3AProcedure Express_metamodel::Statements::ProcedureCall::invokes Expressions/Express_metamodel%3A%3AExpressions%3A%3AActualParameter Express_metamodel::Statements::ProcedureCall::actual-parameters+
 ;
syntax Express_metamodel::Statements::SkipStatement
        = 
        Express_metamodel::Statements::SkipStatement::in-block: Algorithms/Express_metamodel%3A%3AAlgorithms%3A%3AStatement
 ;
syntax Express_metamodel::Statements::AliasStatement
        = 
        Statements/Express_metamodel%3A%3AStatements%3A%3AVARExpression Express_metamodel::Statements::AliasStatement::binds-to-reference Algorithms/Express_metamodel%3A%3AAlgorithms%3A%3AStatement Express_metamodel::Statements::AliasStatement::body Statements/Express_metamodel%3A%3AStatements%3A%3AAliasVariable Express_metamodel::Statements::AliasStatement::alias-variable
 ;
syntax Express_metamodel::Statements::ControlVariable
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AExpression Express_metamodel::Statements::ControlVariable::bound-value Core/Express_metamodel%3A%3ACore%3A%3AExpression Express_metamodel::Statements::ControlVariable::initial-value Statements/Express_metamodel%3A%3AStatements%3A%3ARepeatStatement Express_metamodel::Statements::ControlVariable::namespace Core/Express_metamodel%3A%3ACore%3A%3AExpression Express_metamodel::Statements::ControlVariable::increment
 ;
syntax Express_metamodel::Statements::AliasVariable
        = 
        Statements/Express_metamodel%3A%3AStatements%3A%3AAliasStatement Express_metamodel::Statements::AliasVariable::namespace Statements/Express_metamodel%3A%3AStatements%3A%3AVARExpression Express_metamodel::Statements::AliasVariable::referent
 ;
syntax Express_metamodel::Statements::VARCell
        = 
        Algorithms/Express_metamodel%3A%3AAlgorithms%3A%3AVARVariable Express_metamodel::Statements::VARCell::refers-to Core/Identifier id
 ;
syntax Express_metamodel::Statements::NullStatement
        = 
        ()
 ;
syntax Express_metamodel::Statements::AttributeCell
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AExplicitAttribute Express_metamodel::Statements::AttributeCell::refers-to Statements/Express_metamodel%3A%3AStatements%3A%3AVARExpression Express_metamodel::Statements::AttributeCell::base-entity Core/Identifier id
 ;
syntax Express_metamodel::Statements::StatementBlock
        = 
        Algorithms/Express_metamodel%3A%3AAlgorithms%3A%3AStatement Express_metamodel::Statements::StatementBlock::body-statements_Statement+ MOF/Boolean delimited
 ;
syntax Express_metamodel::Statements::CaseAction
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AExpression Express_metamodel::Statements::CaseAction::label-value+ Algorithms/Express_metamodel%3A%3AAlgorithms%3A%3AStatement Express_metamodel::Statements::CaseAction::action MOF/Boolean isDefault
 ;
syntax Express_metamodel::Statements::MemberCell
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AExpression Express_metamodel::Statements::MemberCell::index-value Statements/Express_metamodel%3A%3AStatements%3A%3AVARExpression Express_metamodel::Statements::MemberCell::base-aggregate
 ;
syntax Express_metamodel::Statements::RepeatStatement
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AExpression Express_metamodel::Statements::RepeatStatement::while-expression Algorithms/Express_metamodel%3A%3AAlgorithms%3A%3AStatement Express_metamodel::Statements::RepeatStatement::body Statements/Express_metamodel%3A%3AStatements%3A%3AControlVariable Express_metamodel::Statements::RepeatStatement::control-variable Core/Express_metamodel%3A%3ACore%3A%3AExpression Express_metamodel::Statements::RepeatStatement::until-expression
 ;
syntax Express_metamodel::Statements::GroupCell
        = 
        Statements/Express_metamodel%3A%3AStatements%3A%3AVARExpression Express_metamodel::Statements::GroupCell::base-entity Core/Express_metamodel%3A%3ACore%3A%3ASingleEntityType Express_metamodel::Statements::GroupCell::refers-to Core/Identifier id
 ;
syntax Express_metamodel::Statements::VariableCell
        = 
        Algorithms/Express_metamodel%3A%3AAlgorithms%3A%3AVariable Express_metamodel::Statements::VariableCell::refers-to Core/Identifier id
 ;
syntax Express_metamodel::Statements::CaseStatement
        = 
        Statements/Express_metamodel%3A%3AStatements%3A%3ACaseAction Express_metamodel::Statements::CaseStatement::cases+ Core/Express_metamodel%3A%3ACore%3A%3AExpression Express_metamodel::Statements::CaseStatement::selection-expression
 ;
syntax Express_metamodel::Statements::IfStatement
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AExpression Express_metamodel::Statements::IfStatement::if-condition Algorithms/Express_metamodel%3A%3AAlgorithms%3A%3AStatement Express_metamodel::Statements::IfStatement::else-actions Algorithms/Express_metamodel%3A%3AAlgorithms%3A%3AStatement Express_metamodel::Statements::IfStatement::then-actions
 ;
syntax Express_metamodel::Statements::EscapeStatement
        = 
        Express_metamodel::Statements::EscapeStatement::in-block: Algorithms/Express_metamodel%3A%3AAlgorithms%3A%3AStatement
 ;
syntax Express_metamodel::Statements::ReturnStatement
        = 
        Express_metamodel::Statements::ReturnStatement::return-value: Core/Express_metamodel%3A%3ACore%3A%3AExpression
 ;
syntax Express_metamodel::Statements::Assignment
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AExpression Express_metamodel::Statements::Assignment::assigned-value Statements/Express_metamodel%3A%3AStatements%3A%3AVARExpression Express_metamodel::Statements::Assignment::variable
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
syntax Express_metamodel::Expressions::RepeatCount
        = 
        Express_metamodel::Expressions::RepeatCount::derivation: Core/Express_metamodel%3A%3ACore%3A%3AExpression
 ;
syntax Express_metamodel::Expressions::EnumItemRef
        = 
        Instances/Express_metamodel%3A%3AInstances%3A%3AEnumerationItem Express_metamodel::Expressions::EnumItemRef::refers-to Core/Identifier id
 ;
syntax Express_metamodel::Expressions::Literal
        = 
        Express_metamodel::Expressions::Literal::refers-to: Instances/Express_metamodel%3A%3AInstances%3A%3ASimpleValue
 ;
syntax Express_metamodel::Expressions::BinaryIndex
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AExpression Express_metamodel::Expressions::BinaryIndex::first-bit Core/Express_metamodel%3A%3ACore%3A%3AExpression Express_metamodel::Expressions::BinaryIndex::last-bit
 ;
syntax Express_metamodel::Expressions::IndeterminateRef
        = 
        Express_metamodel::Expressions::IndeterminateRef::refers-to: Instances/Express_metamodel%3A%3AInstances%3A%3AIndeterminate
 ;
syntax Express_metamodel::Expressions::SELFRef
        = 
        ()
 ;
syntax Express_metamodel::Expressions::BinaryOperation
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AExpression Express_metamodel::Expressions::BinaryOperation::left-operand Core/Express_metamodel%3A%3ACore%3A%3AExpression Express_metamodel::Expressions::BinaryOperation::right-operand Expressions/BinaryOperator operator
 ;
syntax Express_metamodel::Expressions::AggregateInitializer
        = 
        Instances/Express_metamodel%3A%3AInstances%3A%3AGenericAggregate Express_metamodel::Expressions::AggregateInitializer::result-value Expressions/Express_metamodel%3A%3AExpressions%3A%3AMemberBinding Express_metamodel::Expressions::AggregateInitializer::bindings+
 ;
syntax Express_metamodel::Expressions::StringIndex
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AExpression Express_metamodel::Expressions::StringIndex::first-code Core/Express_metamodel%3A%3ACore%3A%3AExpression Express_metamodel::Expressions::StringIndex::last-code
 ;
syntax Express_metamodel::Expressions::PartialEntityConstructor
        = 
        Instances/Express_metamodel%3A%3AInstances%3A%3APartialEntityValue Express_metamodel::Expressions::PartialEntityConstructor::result-value Core/Express_metamodel%3A%3ACore%3A%3ASingleEntityType Express_metamodel::Expressions::PartialEntityConstructor::attribute-group Expressions/Express_metamodel%3A%3AExpressions%3A%3AAttributeBinding Express_metamodel::Expressions::PartialEntityConstructor::bindings+ Core/Identifier id
 ;
syntax Express_metamodel::Expressions::Coercion
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AExpression Express_metamodel::Expressions::Coercion::operand Core/Express_metamodel%3A%3ACore%3A%3AVariableType Express_metamodel::Expressions::Coercion::target-type
 ;
syntax Express_metamodel::Expressions::ActualParameter
        = 
        Statements/Express_metamodel%3A%3AStatements%3A%3AProcedureCall Express_metamodel::Expressions::ActualParameter::in-ProcedureCall Expressions/Express_metamodel%3A%3AExpressions%3A%3AFunctionCall Express_metamodel::Expressions::ActualParameter::in-FunctionCall Algorithms/Express_metamodel%3A%3AAlgorithms%3A%3AParameter Express_metamodel::Expressions::ActualParameter::formal-parameter Statements/Express_metamodel%3A%3AStatements%3A%3AVARExpression Express_metamodel::Expressions::ActualParameter::actual-referent Core/Express_metamodel%3A%3ACore%3A%3AExpression Express_metamodel::Expressions::ActualParameter::actual-value MOF/Integer position
 ;
syntax Express_metamodel::Expressions::ParameterRef
        = 
        Algorithms/Express_metamodel%3A%3AAlgorithms%3A%3AParameter Express_metamodel::Expressions::ParameterRef::refers-to Core/Identifier id
 ;
syntax Express_metamodel::Expressions::AttributeRef
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AAttribute Express_metamodel::Expressions::AttributeRef::refers-to Core/Identifier id
 ;
syntax Express_metamodel::Expressions::AggregateIndex
        = 
        Express_metamodel::Expressions::AggregateIndex::index-value: Core/Express_metamodel%3A%3ACore%3A%3AExpression
 ;
syntax Express_metamodel::Expressions::GroupRef
        = 
        Core/Express_metamodel%3A%3ACore%3A%3ASingleEntityType Express_metamodel::Expressions::GroupRef::refers-to Core/Identifier id
 ;
syntax Express_metamodel::Expressions::UnaryOperation
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AExpression Express_metamodel::Expressions::UnaryOperation::unary-operand Expressions/UnaryOperator operator
 ;
syntax Express_metamodel::Expressions::UsedInRef
        = 
        Express_metamodel::Expressions::UsedInRef::inverse-of: Core/Express_metamodel%3A%3ACore%3A%3AAttribute
 ;
syntax Express_metamodel::Expressions::ConstantRef
        = 
        Instances/Express_metamodel%3A%3AInstances%3A%3AConstant Express_metamodel::Expressions::ConstantRef::refers-to Core/Identifier id
 ;
syntax Express_metamodel::Expressions::QueryExpression
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AExpression Express_metamodel::Expressions::QueryExpression::select-condition Expressions/Express_metamodel%3A%3AExpressions%3A%3AQueryVariable Express_metamodel::Expressions::QueryExpression::query-variable Core/Express_metamodel%3A%3ACore%3A%3AExpression Express_metamodel::Expressions::QueryExpression::aggregate-operand
 ;
syntax Express_metamodel::Expressions::QueryVariable
        = 
        Express_metamodel::Expressions::QueryVariable::namespace: Expressions/Express_metamodel%3A%3AExpressions%3A%3AQueryExpression
 ;
syntax Express_metamodel::Expressions::AttributeBinding
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AExpression Express_metamodel::Expressions::AttributeBinding::attribute-value Instances/Express_metamodel%3A%3AInstances%3A%3AAttributeValue Express_metamodel::Expressions::AttributeBinding::to-value Core/Express_metamodel%3A%3ACore%3A%3AExplicitAttribute Express_metamodel::Expressions::AttributeBinding::attribute MOF/Integer position
 ;
syntax Express_metamodel::Expressions::FunctionCall
        = 
        Expressions/Express_metamodel%3A%3AExpressions%3A%3AActualParameter Express_metamodel::Expressions::FunctionCall::actual-parameters+ Algorithms/Express_metamodel%3A%3AAlgorithms%3A%3AFunction Express_metamodel::Expressions::FunctionCall::invokes-function Algorithms/Express_metamodel%3A%3AAlgorithms%3A%3AFunctionResult Express_metamodel::Expressions::FunctionCall::/returns-result
 ;
syntax Express_metamodel::Expressions::MemberBinding
        = 
        Expressions/Express_metamodel%3A%3AExpressions%3A%3ARepeatCount Express_metamodel::Expressions::MemberBinding::repetition Instances/Express_metamodel%3A%3AInstances%3A%3AListMember Express_metamodel::Expressions::MemberBinding::to-slot+ Core/Express_metamodel%3A%3ACore%3A%3AExpression Express_metamodel::Expressions::MemberBinding::member-value MOF/Integer position
 ;
syntax Express_metamodel::Expressions::ExtentRef
        = 
        Core/Express_metamodel%3A%3ACore%3A%3ANamedType Express_metamodel::Expressions::ExtentRef::refers-to Core/Identifier id
 ;
syntax Express_metamodel::Expressions::VariableRef
        = 
        Algorithms/Express_metamodel%3A%3AAlgorithms%3A%3ANamedVariable Express_metamodel::Expressions::VariableRef::refers-to Core/Identifier id
 ;
syntax Express_metamodel::Core::SingleEntityType
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AExplicitAttribute Express_metamodel::Core::SingleEntityType::declares_ExplicitAttribute+ Core/Express_metamodel%3A%3ACore%3A%3AAttribute Express_metamodel::Core::SingleEntityType::declares_Attribute+ Core/Express_metamodel%3A%3ACore%3A%3AEntityType Express_metamodel::Core::SingleEntityType::declared-in Core/Express_metamodel%3A%3ACore%3A%3APartialEntityType Express_metamodel::Core::SingleEntityType::equivalent Core/Express_metamodel%3A%3ACore%3A%3AScopedId id
 ;
syntax Express_metamodel::Core::AGGREGATEType
        = 
        Core/Express_metamodel%3A%3ACore%3A%3ASizeConstraint Express_metamodel::Core::AGGREGATEType::upper-bound Core/Express_metamodel%3A%3ACore%3A%3AParameterType Express_metamodel::Core::AGGREGATEType::member-type Algorithms/Express_metamodel%3A%3AAlgorithms%3A%3AActualStructureConstraint Express_metamodel::Core::AGGREGATEType::constraint Core/Express_metamodel%3A%3ACore%3A%3ASizeConstraint Express_metamodel::Core::AGGREGATEType::lower-bound
 ;
syntax Express_metamodel::Core::GeneralBAGType
        = 
        ()
 ;
syntax Express_metamodel::Core::DomainRule
        = 
        Core/Express_metamodel%3A%3ACore%3A%3ANamedType Express_metamodel::Core::DomainRule::domain MOF/Integer position
 ;
syntax Express_metamodel::Core::Expression
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AInstance Express_metamodel::Core::Expression::evaluation Core/Express_metamodel%3A%3ACore%3A%3AScope Express_metamodel::Core::Expression::interpretation-context Core/Express_metamodel%3A%3ACore%3A%3ADataType Express_metamodel::Core::Expression::data-type Core/ExpressText text
 ;
syntax Express_metamodel::Core::InverseAttribute
        = 
        Core/Express_metamodel%3A%3ACore%3A%3ADomainRole Express_metamodel::Core::InverseAttribute::models-role Core/Express_metamodel%3A%3ACore%3A%3AInvertibleAttribute Express_metamodel::Core::InverseAttribute::explicit MOF/Boolean isUnique
 ;
syntax Express_metamodel::Core::EnumerationType
        = 
        Instances/Express_metamodel%3A%3AInstances%3A%3AEnumerationItem Express_metamodel::Core::EnumerationType::values+ Instances/Express_metamodel%3A%3AInstances%3A%3AEnumerationItem Express_metamodel::Core::EnumerationType::declared-items+ Core/Express_metamodel%3A%3ACore%3A%3AEnumerationType Express_metamodel::Core::EnumerationType::extension+ Core/Express_metamodel%3A%3ACore%3A%3AEnumerationType Express_metamodel::Core::EnumerationType::base MOF/Boolean isExtensible
 ;
syntax Express_metamodel::Core::ArrayBound
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AExpression Express_metamodel::Core::ArrayBound::bound-expression MOF/Integer bound
 ;
syntax Express_metamodel::Core::GeneralSETType
        = 
        ()
 ;
syntax Express_metamodel::Core::LISTType
        = 
        ()
 ;
syntax Express_metamodel::Core::Redeclaration
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AExpression Express_metamodel::Core::Redeclaration::derivation Core/Express_metamodel%3A%3ACore%3A%3AAttributeType Express_metamodel::Core::Redeclaration::restricted-type Core/Express_metamodel%3A%3ACore%3A%3ARedeclaration Express_metamodel::Core::Redeclaration::refines Core/Express_metamodel%3A%3ACore%3A%3ASizeConstraint Express_metamodel::Core::Redeclaration::upper-bound Core/Express_metamodel%3A%3ACore%3A%3ASizeConstraint Express_metamodel::Core::Redeclaration::lower-bound Core/Express_metamodel%3A%3ACore%3A%3AEntityType Express_metamodel::Core::Redeclaration::scope Core/Express_metamodel%3A%3ACore%3A%3AAttribute Express_metamodel::Core::Redeclaration::original-attribute Core/Express_metamodel%3A%3ACore%3A%3ARole Express_metamodel::Core::Redeclaration::refined-role MOF/Integer position MOF/Boolean isMandatory Core/Express_metamodel%3A%3ACore%3A%3AScopedId alias
 ;
syntax Express_metamodel::Core::EntityType
        = 
        Core/Express_metamodel%3A%3ACore%3A%3ARole Express_metamodel::Core::EntityType::plays-role+ Core/Express_metamodel%3A%3ACore%3A%3ARedeclaration Express_metamodel::Core::EntityType::redeclarations+ Core/Express_metamodel%3A%3ACore%3A%3AAttribute Express_metamodel::Core::EntityType::attributes+ Core/Express_metamodel%3A%3ACore%3A%3ARangeRole Express_metamodel::Core::EntityType::plays-range-role+ Core/Express_metamodel%3A%3ACore%3A%3ASingleEntityType Express_metamodel::Core::EntityType::declares Rules/Express_metamodel%3A%3ARules%3A%3AExtent Express_metamodel::Core::EntityType::extension+ Core/Express_metamodel%3A%3ACore%3A%3AInvertibleAttribute Express_metamodel::Core::EntityType::invertible_attributes+ Core/Express_metamodel%3A%3ACore%3A%3ADomainRole Express_metamodel::Core::EntityType::plays-domain-role+ Instances/Express_metamodel%3A%3AInstances%3A%3AEntityInstance Express_metamodel::Core::EntityType::instances+ Core/Express_metamodel%3A%3ACore%3A%3AUniqueRule Express_metamodel::Core::EntityType::unique-rules+ Core/Express_metamodel%3A%3ACore%3A%3AInvertibleAttribute Express_metamodel::Core::EntityType::used-in+ Core/Express_metamodel%3A%3ACore%3A%3AEntityType Express_metamodel::Core::EntityType::subtype-of+ MOF/Boolean isAbstract
 ;
syntax Express_metamodel::Core::PartialEntityType
        = 
        Core/Express_metamodel%3A%3ACore%3A%3ASingleEntityType Express_metamodel::Core::PartialEntityType::components+
 ;
syntax Express_metamodel::Core::Schema
        = 
        Core/Express_metamodel%3A%3ACore%3A%3ARemark Express_metamodel::Core::Schema::documentation+ Core/Express_metamodel%3A%3ACore%3A%3AInterfacedElement Express_metamodel::Core::Schema::interfaces+ Core/Express_metamodel%3A%3ACore%3A%3ASchemaElement Express_metamodel::Core::Schema::schema-elements+ Core/Express_metamodel%3A%3ACore%3A%3ASchemaElement Express_metamodel::Core::Schema::interfaced-elements+ Core/Identifier name Core/Identifier version
 ;
syntax Express_metamodel::Core::InvertibleAttribute
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AInverseAttribute Express_metamodel::Core::InvertibleAttribute::inverse+ Core/Express_metamodel%3A%3ACore%3A%3AEntityType Express_metamodel::Core::InvertibleAttribute::range-type+ Core/Express_metamodel%3A%3ACore%3A%3ARelationship Express_metamodel::Core::InvertibleAttribute::creates-relationship Core/Express_metamodel%3A%3ACore%3A%3AEntityType Express_metamodel::Core::InvertibleAttribute::referencing-type+ Core/Express_metamodel%3A%3ACore%3A%3ARangeRole Express_metamodel::Core::InvertibleAttribute::models-role
 ;
syntax Express_metamodel::Core::InterfacedElement
        = 
        Core/Express_metamodel%3A%3ACore%3A%3ASchema Express_metamodel::Core::InterfacedElement::interfacing-schema Core/Express_metamodel%3A%3ACore%3A%3ASchemaElement Express_metamodel::Core::InterfacedElement::refers-to MOF/Boolean isUSE Core/Express_metamodel%3A%3ACore%3A%3AScopedId interfacedId
 ;
syntax Express_metamodel::Core::NumericType
        = 
        ()
 ;
syntax Express_metamodel::Core::UniqueRule
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AEntityType Express_metamodel::Core::UniqueRule::domain Core/Express_metamodel%3A%3ACore%3A%3AAttribute Express_metamodel::Core::UniqueRule::key-component+ MOF/Integer position
 ;
syntax Express_metamodel::Core::DomainRole
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AInverseAttribute Express_metamodel::Core::DomainRole::range-view Core/Express_metamodel%3A%3ACore%3A%3AEntityType Express_metamodel::Core::DomainRole::domain Core/Express_metamodel%3A%3ACore%3A%3ARelationship Express_metamodel::Core::DomainRole::in-relationship Core/Express_metamodel%3A%3ACore%3A%3AScopedId id
 ;
syntax Express_metamodel::Core::GeneralLISTType
        = 
        ()
 ;
syntax Express_metamodel::Core::BAGType
        = 
        ()
 ;
syntax Express_metamodel::Core::RealType
        = 
        precision: MOF/Integer
 ;
syntax Express_metamodel::Core::LogicType
        = 
        ()
 ;
syntax Express_metamodel::Core::GenericType
        = 
        Algorithms/Express_metamodel%3A%3AAlgorithms%3A%3AActualTypeConstraint Express_metamodel::Core::GenericType::constraint MOF/Boolean isEntity
 ;
syntax Express_metamodel::Core::StringType
        = 
        Express_metamodel::Core::StringType::string-length-constraint: Core/Express_metamodel%3A%3ACore%3A%3ALengthConstraint
 ;
syntax Express_metamodel::Core::DerivedAttribute
        = 
        Express_metamodel::Core::DerivedAttribute::derivation: Core/Express_metamodel%3A%3ACore%3A%3AExpression
 ;
syntax Express_metamodel::Core::RangeRole
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AInvertibleAttribute Express_metamodel::Core::RangeRole::domain-view Core/Express_metamodel%3A%3ACore%3A%3ARelationship Express_metamodel::Core::RangeRole::in-relationship Core/Express_metamodel%3A%3ACore%3A%3AEntityType Express_metamodel::Core::RangeRole::range Core/Express_metamodel%3A%3ACore%3A%3AScopedId id
 ;
syntax Express_metamodel::Core::Remark
        = 
        Core/Express_metamodel%3A%3ACore%3A%3ASchema Express_metamodel::Core::Remark::describes-schema+ Core/Express_metamodel%3A%3ACore%3A%3AScope Express_metamodel::Core::Remark::appears-in Core/Express_metamodel%3A%3ACore%3A%3ANamedElement Express_metamodel::Core::Remark::describes-element+ MOF/Boolean isTagged MOF/Boolean isTail Core/ExpressText text
 ;
syntax Express_metamodel::Core::SizeConstraint
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AExpression Express_metamodel::Core::SizeConstraint::asserts MOF/Integer bound
 ;
syntax Express_metamodel::Core::SETType
        = 
        ()
 ;
syntax Express_metamodel::Core::SpecializedType
        = 
        Express_metamodel::Core::SpecializedType::underlying-type: Core/Express_metamodel%3A%3ACore%3A%3AConcreteType
 ;
syntax Express_metamodel::Core::GeneralARRAYType
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AArrayBound Express_metamodel::Core::GeneralARRAYType::hi-index Core/Express_metamodel%3A%3ACore%3A%3AArrayBound Express_metamodel::Core::GeneralARRAYType::lo-index MOF/Boolean isOptional
 ;
syntax Express_metamodel::Core::Relationship
        = 
        Core/Express_metamodel%3A%3ACore%3A%3ADomainRole Express_metamodel::Core::Relationship::domain Core/Express_metamodel%3A%3ACore%3A%3ARole Express_metamodel::Core::Relationship::roles Core/Express_metamodel%3A%3ACore%3A%3AInvertibleAttribute Express_metamodel::Core::Relationship::based-on Core/Express_metamodel%3A%3ACore%3A%3ARangeRole Express_metamodel::Core::Relationship::range
 ;
syntax Express_metamodel::Core::LengthConstraint
        = 
        MOF/Integer maxLength MOF/Boolean isFixed
 ;
syntax Express_metamodel::Core::BinaryType
        = 
        Express_metamodel::Core::BinaryType::binary-length-constraint: Core/Express_metamodel%3A%3ACore%3A%3ALengthConstraint
 ;
syntax Express_metamodel::Core::ScopedId
        = 
        Core/Identifier localName Core/Express_metamodel%3A%3ACore%3A%3AScope definingScope
 ;
syntax Express_metamodel::Core::SelectType
        = 
        Core/Express_metamodel%3A%3ACore%3A%3ANamedType Express_metamodel::Core::SelectType::allowed-types+ Core/Express_metamodel%3A%3ACore%3A%3ASelectType Express_metamodel::Core::SelectType::extension+ Core/Express_metamodel%3A%3ACore%3A%3ASelectType Express_metamodel::Core::SelectType::base Core/Express_metamodel%3A%3ACore%3A%3ANamedType Express_metamodel::Core::SelectType::select-list+ MOF/Boolean isExtensible MOF/Boolean isEntity
 ;
syntax Express_metamodel::Core::ExplicitAttribute
        = 
        Core/Express_metamodel%3A%3ACore%3A%3ASingleEntityType Express_metamodel::Core::ExplicitAttribute::of-entity MOF/Boolean isOptional
 ;
syntax Express_metamodel::Core::ARRAYType
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AArrayBound Express_metamodel::Core::ARRAYType::lo-index Core/Express_metamodel%3A%3ACore%3A%3AArrayBound Express_metamodel::Core::ARRAYType::hi-index MOF/Boolean isOptional
 ;
syntax Express_metamodel::Algorithms::ActualTypeConstraint
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AGenericType Express_metamodel::Algorithms::ActualTypeConstraint::matching-type Algorithms/Express_metamodel%3A%3AAlgorithms%3A%3AActualDataType Express_metamodel::Algorithms::ActualTypeConstraint::required-type Core/Identifier label
 ;
syntax Express_metamodel::Algorithms::FunctionResult
        = 
        Express_metamodel::Algorithms::FunctionResult::namespace: Algorithms/Express_metamodel%3A%3AAlgorithms%3A%3AFunction
 ;
syntax Express_metamodel::Algorithms::Function
        = 
        Express_metamodel::Algorithms::Function::result: Algorithms/Express_metamodel%3A%3AAlgorithms%3A%3AFunctionResult
 ;
syntax Express_metamodel::Algorithms::InParameter
        = 
        Express_metamodel::Algorithms::InParameter::variable: Algorithms/Express_metamodel%3A%3AAlgorithms%3A%3AInVariable
 ;
syntax Express_metamodel::Algorithms::LocalVariable
        = 
        Express_metamodel::Algorithms::LocalVariable::initial-value: Core/Express_metamodel%3A%3ACore%3A%3AExpression
 ;
syntax Express_metamodel::Algorithms::ActualStructure
        = 
        ()
 ;
syntax Express_metamodel::Algorithms::ActualGenericType
        = 
        Algorithms/Express_metamodel%3A%3AAlgorithms%3A%3AActualDataType Express_metamodel::Algorithms::ActualGenericType::refers-to MOF/Boolean isEntity Core/Identifier label
 ;
syntax Express_metamodel::Algorithms::Statement
        = 
        Statements/Express_metamodel%3A%3AStatements%3A%3AStatementBlock Express_metamodel::Algorithms::Statement::in-block Statements/Express_metamodel%3A%3AStatements%3A%3ASkipStatement Express_metamodel::Algorithms::Statement::body-statements_SkipStatement+ Statements/Express_metamodel%3A%3AStatements%3A%3AEscapeStatement Express_metamodel::Algorithms::Statement::body-statements_EscapeStatement+ Statements/Express_metamodel%3A%3AStatements%3A%3ARepeatStatement Express_metamodel::Algorithms::Statement::controlled-by Algorithms/Express_metamodel%3A%3AAlgorithms%3A%3AAlgorithm Express_metamodel::Algorithms::Statement::implements Core/ExpressText text
 ;
syntax Express_metamodel::Algorithms::InVariable
        = 
        Express_metamodel::Algorithms::InVariable::source: Algorithms/Express_metamodel%3A%3AAlgorithms%3A%3AInParameter
 ;
syntax Express_metamodel::Algorithms::Procedure
        = 
        ()
 ;
syntax Express_metamodel::Algorithms::ActualARRAYType
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AArrayBound Express_metamodel::Algorithms::ActualARRAYType::hi-index Core/Express_metamodel%3A%3ACore%3A%3AArrayBound Express_metamodel::Algorithms::ActualARRAYType::lo-index MOF/Boolean isOptional
 ;
syntax Express_metamodel::Algorithms::ActualSETType
        = 
        ()
 ;
syntax Express_metamodel::Algorithms::ActualAGGREGATEType
        = 
        Core/Express_metamodel%3A%3ACore%3A%3ASizeConstraint Express_metamodel::Algorithms::ActualAGGREGATEType::upper-bound Algorithms/Express_metamodel%3A%3AAlgorithms%3A%3AActualStructure Express_metamodel::Algorithms::ActualAGGREGATEType::refers-to Core/Express_metamodel%3A%3ACore%3A%3AVariableType Express_metamodel::Algorithms::ActualAGGREGATEType::member-type Core/Express_metamodel%3A%3ACore%3A%3ASizeConstraint Express_metamodel::Algorithms::ActualAGGREGATEType::lower-bound Core/Identifier label
 ;
syntax Express_metamodel::Algorithms::ActualStructureConstraint
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AAGGREGATEType Express_metamodel::Algorithms::ActualStructureConstraint::matching-structure Algorithms/Express_metamodel%3A%3AAlgorithms%3A%3AActualStructure Express_metamodel::Algorithms::ActualStructureConstraint::required-structure Core/Identifier label
 ;
syntax Express_metamodel::Algorithms::ActualLISTType
        = 
        ()
 ;
syntax Express_metamodel::Algorithms::VARParameter
        = 
        ()
 ;
syntax Express_metamodel::Algorithms::ActualDataType
        = 
        ()
 ;
syntax Express_metamodel::Algorithms::ActualBAGType
        = 
        ()
 ;
syntax Express_metamodel::Instances::AttributeValue
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AInstance Express_metamodel::Instances::AttributeValue::actual-value Core/Express_metamodel%3A%3ACore%3A%3AExplicitAttribute Express_metamodel::Instances::AttributeValue::attribute
 ;
syntax Express_metamodel::Instances::ARRAYValue
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AARRAYType Express_metamodel::Instances::ARRAYValue::of-type+ Instances/Express_metamodel%3A%3AInstances%3A%3AArrayMember Express_metamodel::Instances::ARRAYValue::member-slot+
 ;
syntax Express_metamodel::Instances::RoleName
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AAttribute Express_metamodel::Instances::RoleName::refers-to Core/Express_metamodel%3A%3ACore%3A%3AScopedId represents
 ;
syntax Express_metamodel::Instances::EntityInstance
        = 
        Instances/Express_metamodel%3A%3AInstances%3A%3AEntityValue Express_metamodel::Instances::EntityInstance::state Core/Express_metamodel%3A%3ACore%3A%3AEntityType Express_metamodel::Instances::EntityInstance::instance-of+ Instances/Express_metamodel%3A%3AInstances%3A%3APopulation Express_metamodel::Instances::EntityInstance::appears-in-population+ Instances/EntityName id
 ;
syntax Express_metamodel::Instances::IntegerValue
        = 
        ()
 ;
syntax Express_metamodel::Instances::Constant
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AExpression Express_metamodel::Instances::Constant::value-expression Core/Express_metamodel%3A%3ACore%3A%3AInstance Express_metamodel::Instances::Constant::actual-value Core/Express_metamodel%3A%3ACore%3A%3AInstantiableType Express_metamodel::Instances::Constant::data-type
 ;
syntax Express_metamodel::Instances::LogicalValue
        = 
        ()
 ;
syntax Express_metamodel::Instances::ListMember
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AInstance Express_metamodel::Instances::ListMember::member-value MOF/Integer position
 ;
syntax Express_metamodel::Instances::BagMember
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AInstance Express_metamodel::Instances::BagMember::member-value MOF/Integer count
 ;
syntax Express_metamodel::Instances::SingleEntityValue
        = 
        Instances/Express_metamodel%3A%3AInstances%3A%3APartialEntityValue Express_metamodel::Instances::SingleEntityValue::equivalent Core/Express_metamodel%3A%3ACore%3A%3ASingleEntityType Express_metamodel::Instances::SingleEntityValue::of-type Instances/Express_metamodel%3A%3AInstances%3A%3AAttributeValue Express_metamodel::Instances::SingleEntityValue::properties+
 ;
syntax Express_metamodel::Instances::Indeterminate
        = 
        ()
 ;
syntax Express_metamodel::Instances::SingleLeafInstance
        = 
        Express_metamodel::Instances::SingleLeafInstance::characterizing-type: Core/Express_metamodel%3A%3ACore%3A%3AEntityType
 ;
syntax Express_metamodel::Instances::GenericAggregate
        = 
        ()
 ;
syntax Express_metamodel::Instances::BinaryValue
        = 
        ()
 ;
syntax Express_metamodel::Instances::SpecializedValue
        = 
        Core/Express_metamodel%3A%3ACore%3A%3ASpecializedType Express_metamodel::Instances::SpecializedValue::of-type Instances/Express_metamodel%3A%3AInstances%3A%3AConcreteValue Express_metamodel::Instances::SpecializedValue::fundamental-value
 ;
syntax Express_metamodel::Instances::BAGValue
        = 
        Instances/Express_metamodel%3A%3AInstances%3A%3ABagMember Express_metamodel::Instances::BAGValue::member-slot+ Core/Express_metamodel%3A%3ACore%3A%3ABAGType Express_metamodel::Instances::BAGValue::of-type+
 ;
syntax Express_metamodel::Instances::EnumerationItem
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AEnumerationType Express_metamodel::Instances::EnumerationItem::of-type+ Core/Express_metamodel%3A%3ACore%3A%3AEnumerationType Express_metamodel::Instances::EnumerationItem::declared-in MOF/Integer position
 ;
syntax Express_metamodel::Instances::EntityValue
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AEntityType Express_metamodel::Instances::EntityValue::corresponds to+ Instances/Express_metamodel%3A%3AInstances%3A%3AEntityInstance Express_metamodel::Instances::EntityValue::describes+
 ;
syntax Express_metamodel::Instances::SETValue
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AInstance Express_metamodel::Instances::SETValue::member-value+ Core/Express_metamodel%3A%3ACore%3A%3ASETType Express_metamodel::Instances::SETValue::of-type+
 ;
syntax Express_metamodel::Instances::ArrayMember
        = 
        Core/Express_metamodel%3A%3ACore%3A%3AInstance Express_metamodel::Instances::ArrayMember::member-value MOF/Integer index
 ;
syntax Express_metamodel::Instances::Population
        = 
        Instances/Express_metamodel%3A%3AInstances%3A%3AEntityInstance Express_metamodel::Instances::Population::composition_EntityInstance+ Core/Express_metamodel%3A%3ACore%3A%3AInstance Express_metamodel::Instances::Population::composition_Instance+ Core/Express_metamodel%3A%3ACore%3A%3ASchema Express_metamodel::Instances::Population::governing-schema+
 ;
syntax Express_metamodel::Instances::RealValue
        = 
        ()
 ;
syntax Express_metamodel::Instances::BooleanValue
        = 
        ()
 ;
syntax Express_metamodel::Instances::LISTValue
        = 
        Core/Express_metamodel%3A%3ACore%3A%3ALISTType Express_metamodel::Instances::LISTValue::of-type+ Instances/Express_metamodel%3A%3AInstances%3A%3AListMember Express_metamodel::Instances::LISTValue::member-slot+
 ;
syntax Express_metamodel::Instances::StringValue
        = 
        ()
 ;
syntax Express_metamodel::Instances::TypeName
        = 
        Core/Express_metamodel%3A%3ACore%3A%3ANamedType Express_metamodel::Instances::TypeName::refers-to Core/Express_metamodel%3A%3ACore%3A%3AScopedId represents
 ;
syntax Express_metamodel::Instances::PartialEntityValue
        = 
        Core/Express_metamodel%3A%3ACore%3A%3APartialEntityType Express_metamodel::Instances::PartialEntityValue::of-type Instances/Express_metamodel%3A%3AInstances%3A%3ASingleEntityValue Express_metamodel::Instances::PartialEntityValue::components+
 ;
syntax Express_metamodel::Instances::NumberValue
        = 
        ()
 ;
syntax Express_metamodel::Instances::MultiLeafInstance
        = 
        ()
 ;
