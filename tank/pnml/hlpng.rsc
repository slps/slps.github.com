@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Hlpng

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Nettype_uri
        = type: "http://www.pnml.org/version-2009/grammar/pt-hlpng"
        | type: "http://www.pnml.org/version-2009/grammar/pnmlcoremodel"
 ;
syntax Operator
        = Equality
        | Inequality
        | BuiltInOperator
        | BuiltInConstant
        | MultisetOperator
        | Tuple
        | UserOperator
 ;
syntax BuiltInSort
        = Bool
        | Dot
        | ()
 ;
syntax BuiltInOperator
        = BooleanOperator
        | Cardinality
        | CardinalityOf
        | Contains
        | ()
 ;
syntax BuiltInConstant
        = BooleanConstant
        | DotConstant
        | ()
 ;
syntax Bool
        = 
        bool: ()
 ;
syntax BooleanOperator_content
        = 
        BuiltInOperator_content
 ;
syntax BooleanOperator
        = And
        | Or
        | Imply
        | Not
 ;
syntax And
        = 
        and: BooleanOperator_content
 ;
syntax Or
        = 
        or: BooleanOperator_content
 ;
syntax Not
        = 
        not: BooleanOperator_content
 ;
syntax Imply
        = 
        imply: BooleanOperator_content
 ;
syntax Equality
        = 
        equality: Operator_content
 ;
syntax Inequality
        = 
        inequality: Operator_content
 ;
syntax BooleanConstant
        = 
        booleanconstant: ("true" | "false") value BuiltInConstant_content
 ;
syntax Dot
        = 
        dot: ()
 ;
syntax DotConstant
        = 
        dotconstant: ()
 ;
syntax MultisetOperator
        = Add
        | All
        | NumberOf
        | Subtract
        | ScalarProduct
        | Empty
        | ()
 ;
syntax Add
        = 
        add: MultisetOperator_content
 ;
syntax Subtract
        = 
        subtract: MultisetOperator_content
 ;
syntax All
        = 
        all: MultisetOperator_content Sort
 ;
syntax Empty
        = 
        empty: MultisetOperator_content Sort
 ;
syntax ScalarProduct
        = 
        scalarproduct: MultisetOperator_content
 ;
syntax NumberOf
        = 
        numberof: MultisetOperator_content
 ;
syntax Cardinality
        = 
        cardinality: BuiltInOperator_content
 ;
syntax CardinalityOf
        = 
        cardinalityof: BuiltInOperator_content
 ;
syntax Contains
        = 
        contains: BuiltInOperator_content
 ;
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
syntax BuiltInOperator_content
        = 
        Operator_content
 ;
syntax BuiltInConstant_content
        = 
        Operator_content
 ;
syntax MultisetOperator_content
        = 
        Operator_content
 ;
syntax Tuple
        = 
        tuple: Operator_content
 ;
syntax UserOperator
        = 
        useroperator: String declaration Operator_content
 ;
syntax Pnml_element
        = 
        pnml: Pnml_content+
 ;
syntax Pnml_content
        = 
        Net_element
 ;
syntax Net_element
        = 
        net: Identifier_content Nettype_uri Name? Net_labels Page_content+ Toolspecific_element*
 ;
syntax Identifier_content
        = 
        id: String
 ;
syntax Net_labels
        = ()
        | HLDeclaration*
 ;
syntax Basicobject_content
        = 
        Name? Toolspecific_element*
 ;
syntax Page_content
        = 
        page: Identifier_content Basicobject_content Page_labels Netobject_content* Pagegraphics_content graphics?
 ;
syntax Netobject_content
        = Page_content
        | Place_content
        | Transition_content
        | Refplace_content
        | Reftrans_content
        | Arc_content
 ;
syntax Page_labels
        = ()
        | HLDeclaration*
 ;
syntax Place_content
        = 
        place: Identifier_content Basicobject_content Place_labels Node_content
 ;
syntax Place_labels
        = ()
        | Type? HLMarking?
 ;
syntax Transition_content
        = 
        transition: Identifier_content Basicobject_content Transition_labels Node_content
 ;
syntax Transition_labels
        = ()
        | Condition?
 ;
syntax Node_content
        = 
        Nodegraphics_content graphics?
 ;
syntax Reference
        = 
        ref: String
 ;
syntax Refplace_content
        = 
        referencePlace: Refnode_content
 ;
syntax Reftrans_content
        = 
        referenceTransition: Refnode_content
 ;
syntax Refnode_content
        = 
        Identifier_content Reference Basicobject_content Node_content
 ;
syntax Arc_content
        = 
        arc: Identifier_content String source String target Name? Arc_labels Edgegraphics_content graphics? Toolspecific_element*
 ;
syntax Arc_labels
        = ()
        | HLAnnotation?
 ;
syntax Pagegraphics_content
        = 
        Nodegraphics_content
 ;
syntax Nodegraphics_content
        = 
        Position_element Dimension_element? Fill_element? Line_element?
 ;
syntax Edgegraphics_content
        = 
        Position_element* Line_element?
 ;
syntax Simpletext_content
        = 
        String text?
 ;
syntax Annotationstandard_content
        = 
        Annotationgraphics_content graphics? Toolspecific_element*
 ;
syntax Simpletextlabel_content
        = 
        Simpletext_content Annotationstandard_content
 ;
syntax Name
        = 
        name: Simpletextlabel_content
 ;
syntax Annotationgraphics_content
        = 
        Offset_element Fill_element? Line_element? Font_element?
 ;
syntax Position_element
        = 
        position: Coordinate_attributes
 ;
syntax Offset_element
        = 
        offset: Coordinate_attributes
 ;
syntax Coordinate_attributes
        = 
        Integer x Integer y
 ;
syntax Dimension_element
        = 
        dimension: PositiveDecimal_content x PositiveDecimal_content y
 ;
syntax PositiveDecimal_content
        = 
        Integer
 ;
syntax Fill_element
        = 
        fill: Color_type color? Color_type gradient-color? ("vertical" | "horizontal" | "diagonal") gradient-rotation? String image?
 ;
syntax Line_element
        = 
        line: ("line" | "curve") shape? Color_type color? PositiveDecimal_content width? ("solid" | "dash" | "dot") style?
 ;
syntax Color_type
        = 
        String
 ;
syntax Font_element
        = 
        font: String family? String style? String weight? String size? ("underline" | "overline" | "line-through") decoration? ("left" | "center" | "right") align? Integer rotation?
 ;
syntax Toolspecific_element
        = 
        toolspecific: String tool String version AnyElement*
 ;
syntax AnyElement
        = 
        (ANY | String | AnyElement)*
 ;
syntax HLDeclaration
        = 
        declaration: Simpletextlabel_content Declarations structure?
 ;
syntax Type
        = 
        type: Simpletextlabel_content Sort structure?
 ;
syntax HLMarking
        = 
        hlinitialMarking: Simpletextlabel_content Term structure?
 ;
syntax Condition
        = 
        condition: Simpletextlabel_content Term structure?
 ;
syntax HLAnnotation
        = 
        hlinscription: Simpletextlabel_content Term structure?
 ;

public void main()
{
	registerLanguage("Hlpng", "ext", pnml.element(str input, loc org) {return parse(#pnml.element, input, org);});
	println("Language registered.");
}
