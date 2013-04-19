@contributor{BGF2Rascal automated exporter - SLPS - http://github.com/grammarware/slps/wiki/BGF2Rascal}
module Cbgf_adt

extend lang::std::Whitespace;
import ParseTree;
import util::IDE;
import IO;

layout Standard = Whitespace* !>> [\u0009-\u000D \u0020 \u0085 \u00A0 \u1680 \u180E \u2000-\u200A \u2028 \u2029 \u202F \u205F \u3000];
syntax CBGFCommand
        = abridge_detour: p: BGFProduction
        | abstractize_concretize: p: BGFProduction
        | addH_removeH: p: BGFProduction
        | addV_removeV: p: BGFProduction
        | anonymize_deanonymize: p: BGFProduction
        | appear_disapper: p: BGFProduction
        | chain_unchain: p: BGFProduction
        | clone_equate: String x String y XBGFScope w
        | concatT_splitT: String y String* xs XBGFScope w
        | concretize_abstractize: p: BGFProduction
        | deanonymize_anonymize: p: BGFProduction
        | define_undefine: ps: BGFProduction*
        | designate_unlabel: p: BGFProduction
        | detour_abridge: p: BGFProduction
        | deyaccify_yaccify: ps: BGFProduction*
        | disappear_appear: p: BGFProduction
        | downgrade_upgrade: BGFProduction p1 BGFProduction p2
        | eliminate_introduce: ps: BGFProduction*
        | equate_clone: String x String y XBGFScope w
        | extract_inline: BGFProduction p XBGFScope w
        | factor_factor: BGFExpression e1 BGFExpression e2 XBGFScope w
        | fold_unfold: String x XBGFScope w
        | horizontal_vertical: w: XBGFScope
        | inject_project: p: BGFProduction
        | inline_extract: BGFProduction p XBGFScope w
        | introduce_eliminate: ps: BGFProduction*
        | iterate_assoc: p: BGFProduction
        | assoc_iterate: p: BGFProduction
        | massage_massage: BGFExpression e1 BGFExpression e2 XBGFScope w
        | narrow_widen: BGFExpression e1 BGFExpression e2 XBGFScope w
        | permute_permute: BGFProduction p1 BGFProduction p2
        | project_inject: p: BGFProduction
        | redefine_redefine: BGFProduction* ps1 BGFProduction* ps2
        | removeH_addH: p: BGFProduction
        | removeV_addV: p: BGFProduction
        | renameL_renameL: String x String y
        | renameN_renameN: String x String y
        | renameS_renameS: String x String y XBGFScope w
        | renameT_renameT: String x String y
        | replace_replace: BGFExpression e1 BGFExpression e2 XBGFScope w
        | reroot_reroot: String* xs1 String* xs2
        | splitN_unite: String x BGFProduction* ps XBGFScope w
        | splitT_concatT: String x String* ys XBGFScope w
        | unchain_chain: p: BGFProduction
        | undefine_define: ps: BGFProduction*
        | unfold_fold: String x XBGFScope w
        | unite_splitN: String x BGFProduction* ps XBGFScope w
        | unlabel_designate: p: BGFProduction
        | upgrade_downgrade: BGFProduction p1 BGFProduction p2
        | vertical_horizontal: w: XBGFScope
        | widen_narrow: BGFExpression e1 BGFExpression e2 XBGFScope w
        | yaccify_deyaccify: ps: BGFProduction*
 ;
syntax CBGFSequence
        = 
        CBGFCommand*
 ;

public void main()
{
	registerLanguage("Cbgf_adt", "ext", CBGFSequence(str input, loc org) {return parse(#CBGFSequence, input, org);});
	println("Language registered.");
}
