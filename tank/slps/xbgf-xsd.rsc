@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Xbgf_xsd

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax Sequence
        = 
        (Transformation | Atomic)*
 ;
syntax Transformation
        = Folding_unfolding_transformation
        | Refactoring_transformation
        | Increasing_transformation
        | Decreasing_transformation
        | Concrete_revising_transformation
        | Abstract_revising_transformation
        | Decorative_transformation
        | Rename
        | Reroot
        | Strip
        | Dump
        | Bypass
 ;
syntax Folding_unfolding_transformation
        = Unfold
        | Fold
        | Inline
        | Extract
        | Abridge
        | Detour
        | Unchain
        | Chain
 ;
syntax Unfold
        = 
        Nonterminal nonterminal Scope in?
 ;
syntax Nonterminal
        = 
        String
 ;
syntax Scope
        = label: Label
        | nonterminal: Nonterminal
 ;
syntax Label
        = 
        String
 ;
syntax Fold
        = 
        Nonterminal nonterminal Scope in?
 ;
syntax Inline
        = 
        Nonterminal
 ;
syntax Extract
        = 
        Production Scope in?
 ;
syntax Production
        = 
        Label label? Nonterminal nonterminal Expression
 ;
syntax Expression
        = epsilon: ()
        | empty: ()
        | value: Value
        | any: ()
        | terminal: Terminal
        | nonterminal: Nonterminal
        | selectable: Selector selector Expression
        | marked: Expression
        | sequence: Expression+
        | choice: Expression+
        | allof: Expression+
        | not: Expression
        | optional: Expression
        | plus: Expression
        | star: Expression
        | seplistplus: Expression Expression
        | sepliststar: Expression Expression
 ;
syntax Value
        = int: ()
        | string: ()
 ;
syntax Terminal
        = 
        String
 ;
syntax Selector
        = 
        String
 ;
syntax Abridge
        = 
        Production
 ;
syntax Detour
        = 
        Production
 ;
syntax Unchain
        = 
        Production
 ;
syntax Chain
        = 
        Production
 ;
syntax Refactoring_transformation
        = Massage
        | Distribute
        | Factor
        | Deyaccify
        | Yaccify
        | Eliminate
        | Introduce
        | Import
        | Vertical
        | Horizontal
        | Equate
        | Rassoc
        | Lassoc
        | Iterate
        | SplitT
 ;
syntax Massage
        = 
        Expression Expression Scope in?
 ;
syntax Distribute
        = 
        Scope
 ;
syntax Factor
        = 
        Expression Expression Scope in?
 ;
syntax Deyaccify
        = 
        nonterminal: Nonterminal
 ;
syntax Yaccify
        = 
        Production+
 ;
syntax Eliminate
        = 
        nonterminal: Nonterminal
 ;
syntax Introduce
        = 
        Production+
 ;
syntax Import
        = 
        Production+
 ;
syntax Vertical
        = 
        Scope
 ;
syntax Horizontal
        = 
        nonterminal: Nonterminal
 ;
syntax Equate
        = 
        Nonterminal align Nonterminal with
 ;
syntax Rassoc
        = 
        Production
 ;
syntax Lassoc
        = 
        Production
 ;
syntax Iterate
        = 
        Production
 ;
syntax SplitT
        = 
        Terminal terminal Terminal terminal+ into Scope in?
 ;
syntax Increasing_transformation
        = Add
        | Appear
        | Widen
        | Upgrade
        | Unite
 ;
syntax Add
        = vertical: Production
        | horizontal: Production
 ;
syntax Appear
        = 
        Production
 ;
syntax Widen
        = 
        Expression Expression Scope in?
 ;
syntax Upgrade
        = 
        Production Production
 ;
syntax Unite
        = 
        Nonterminal add Nonterminal to
 ;
syntax Decreasing_transformation
        = Remove
        | Disappear
        | Narrow
        | Downgrade
        | Split
 ;
syntax Remove
        = vertical: Production
        | horizontal: Production
 ;
syntax Disappear
        = 
        Production
 ;
syntax Narrow
        = 
        Expression Expression Scope in?
 ;
syntax Downgrade
        = 
        Production Production
 ;
syntax Split
        = 
        Nonterminal nonterminal Production+ Scope*
 ;
syntax Concrete_revising_transformation
        = Abstractize
        | Concretize
        | Permute
 ;
syntax Abstractize
        = 
        Production
 ;
syntax Concretize
        = 
        Production
 ;
syntax Permute
        = 
        Production
 ;
syntax Abstract_revising_transformation
        = Define
        | Undefine
        | Redefine
        | Inject
        | Project
        | Replace
 ;
syntax Define
        = 
        Production+ String tag
 ;
syntax Undefine
        = 
        Nonterminal nonterminal+ String tag
 ;
syntax Redefine
        = 
        Production+ String tag
 ;
syntax Inject
        = 
        Production String tag
 ;
syntax Project
        = 
        Production String tag
 ;
syntax Replace
        = 
        Expression Expression Scope in? String tag
 ;
syntax Decorative_transformation
        = Designate
        | Unlabel
        | Deanonymize
        | Anonymize
 ;
syntax Designate
        = 
        Production
 ;
syntax Unlabel
        = 
        label: Label
 ;
syntax Deanonymize
        = 
        Production
 ;
syntax Anonymize
        = 
        Production
 ;
syntax Rename
        = label: Label from Label to
        | nonterminal: Nonterminal from Nonterminal to
        | selector: Label in? Selector from Selector to
        | terminal: Terminal from Terminal to
 ;
syntax Reroot
        = 
        Nonterminal root*
 ;
syntax Strip
        = label: Label
        | allLabels: ()
        | selector: Selector
        | allSelectors: ()
        | terminal: Terminal
        | allTerminals: ()
 ;
syntax Dump
        = 
        ()
 ;
syntax Bypass
        = 
        ()
 ;
syntax Atomic
        = 
        Transformation+
 ;

public void main()
{
	registerLanguage("Xbgf_xsd", "ext", sequence(str input, loc org) {return parse(#sequence, input, org);});
	println("Language registered.");
}
