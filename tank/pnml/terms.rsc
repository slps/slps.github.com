@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Terms

extend lang::std::Whitespace;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Declarations
        = 
        declarations: Declaration*
 ;
syntax Declaration_content
        = 
        String id String name
 ;
syntax Declaration
        = SortDeclaration
        | VariableDeclaration
        | OperatorDeclaration
 ;
syntax VariableDeclaration
        = 
        variabledecl: Declaration_content Sort
 ;
syntax SortDeclaration_content
        = 
        Declaration_content
 ;
syntax SortDeclaration
        = 
        NamedSort
 ;
syntax OperatorDeclaration_content
        = 
        Declaration_content
 ;
syntax OperatorDeclaration
        = 
        NamedOperator
 ;
syntax Variable
        = 
        variable: refvariable: String
 ;
syntax NamedSort
        = 
        namedsort: SortDeclaration_content Sort
 ;
syntax NamedOperator
        = 
        namedoperator: OperatorDeclaration_content VariableDeclaration* parameter Term def
 ;
syntax Term_content
        = 
        ()
 ;
syntax Term
        = Variable
        | Operator
 ;
syntax Sort_content
        = 
        ()
 ;
syntax Sort
        = BuiltInSort
        | MultisetSort
        | ProductSort
        | UserSort
 ;
syntax BuiltInSort
        = 
        ()
 ;
syntax MultisetSort
        = 
        multisetsort: Sort
 ;
syntax ProductSort
        = 
        productsort: Sort*
 ;
syntax UserSort
        = 
        usersort: declaration: String
 ;
syntax Operator_content
        = 
        Term subterm*
 ;
syntax Operator
        = BuiltInOperator
        | BuiltInConstant
        | MultisetOperator
        | Tuple
        | UserOperator
 ;
syntax BuiltInOperator_content
        = 
        Operator_content
 ;
syntax BuiltInOperator
        = 
        ()
 ;
syntax BuiltInConstant_content
        = 
        Operator_content
 ;
syntax BuiltInConstant
        = 
        ()
 ;
syntax MultisetOperator_content
        = 
        Operator_content
 ;
syntax MultisetOperator
        = 
        ()
 ;
syntax Tuple
        = 
        tuple: Operator_content
 ;
syntax UserOperator
        = 
        useroperator: String declaration Operator_content
 ;
