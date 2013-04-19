@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Xbgf_adt

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax XBGFSequence
        = 
        XBGFCommand*
 ;
syntax XBGFCommand
        = abridge: p: BGFProduction
        | abstractize: p: BGFProduction
        | addH: p: BGFProduction
        | addV: p: BGFProduction
        | addC: p: BGFProduction
        | anonymize: p: BGFProduction
        | appear: p: BGFProduction
        | bypass: ()
        | chain: p: BGFProduction
        | clone: String x String y XBGFScope w
        | concatT: String* xs String y XBGFScope w
        | concretize: p: BGFProduction
        | deanonymize: p: BGFProduction
        | define: ps: BGFProduction*
        | designate: p: BGFProduction
        | detour: p: BGFProduction
        | deyaccify: x: String
        | disappear: p: BGFProduction
        | distribute: w: XBGFScope
        | downgrade: BGFProduction p1 BGFProduction p2
        | eliminate: x: String
        | equate: String x String y
        | extract: BGFProduction p XBGFScope w
        | factor: BGFExpression e1 BGFExpression e2 XBGFScope w
        | fold: String x XBGFScope w
        | horizontal: w: XBGFScope
        | importG: ps: BGFProduction*
        | inject: p: BGFProduction
        | inline: x: String
        | introduce: ps: BGFProduction*
        | iterate: p: BGFProduction
        | lassoc: p: BGFProduction
        | massage: BGFExpression e1 BGFExpression e2 XBGFScope w
        | narrow: BGFExpression e1 BGFExpression e2 XBGFScope w
        | permute: p: BGFProduction
        | project: p: BGFProduction
        | rassoc: p: BGFProduction
        | redefine: ps: BGFProduction*
        | removeH: p: BGFProduction
        | removeV: p: BGFProduction
        | renameL: String x String y
        | renameN: String x String y
        | renameS: String x String y XBGFScope w
        | renameT: String x String y
        | replace: BGFExpression e1 BGFExpression e2 XBGFScope w
        | reroot: xs: String*
        | splitN: String x BGFProduction* ps XBGFScope w
        | splitT: String x String* ys XBGFScope w
        | unchain: p: BGFProduction
        | undefine: xs: String*
        | unfold: String x XBGFScope w
        | unite: String x String y
        | unlabel: x: String
        | upgrade: BGFProduction p1 BGFProduction p2
        | vertical: w: XBGFScope
        | widen: BGFExpression e1 BGFExpression e2 XBGFScope w
        | yaccify: ps: BGFProduction*
        | atomic: steps: XBGFCommand*
        | strip: a: String
 ;
syntax XBGFScope
        = globally: ()
        | nowhere: ()
        | inlabel: l: String
        | notinlabel: l: String
        | innt: x: String
        | notinnt: x: String
        | comboscope: XBGFScope w1 XBGFScope w2
 ;

public void main()
{
	registerLanguage("Xbgf_adt", "ext", XBGFSequence(str input, loc org) {return parse(#XBGFSequence, input, org);});
	println("Language registered.");
}
