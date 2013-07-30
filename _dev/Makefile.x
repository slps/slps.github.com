all:
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/hats/abs/grammar.bgf > zoo/hats/abs.bgf
	_dev/format zoo hats/abs hats/abs
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/ada/kempe/grammar.bgf > zoo/ada/kempe.bgf
	_dev/format zoo ada/kempe ada/kempe
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/ada/laemmel-verhoef/grammar.bgf > zoo/ada/laemmel-verhoef.bgf
	_dev/format zoo ada/laemmel-verhoef ada/laemmel-verhoef
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/ada/lncs-2219/grammar.bgf > zoo/ada/lncs-2219.bgf
	_dev/format zoo ada/lncs-2219 ada/lncs-2219
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/ada/kellogg/grammar.bgf > zoo/ada/kellogg.bgf
	_dev/format zoo ada/kellogg ada/kellogg
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/ada/lncs-4348/grammar.bgf > zoo/ada/lncs-4348.bgf
	_dev/format zoo ada/lncs-4348 ada/lncs-4348
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/ada/cordy-hyaric/grammar.bgf > zoo/ada/cordy-hyaric.bgf
	_dev/format zoo ada/cordy-hyaric ada/cordy-hyaric
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/api2mol/abstract/grammar.bgf > zoo/api2mol/abstract.bgf
	_dev/format zoo api2mol/abstract api2mol/abstract
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/api2mol/concrete/grammar.bgf > zoo/api2mol/concrete.bgf
	_dev/format zoo api2mol/concrete api2mol/concrete
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/assembly/delphi/grammar.bgf > zoo/assembly/delphi.bgf
	_dev/format zoo assembly/delphi assembly/delphi
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/awk/bruneliere/grammar.bgf > zoo/awk/bruneliere.bgf
	_dev/format zoo awk/bruneliere awk/bruneliere
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/basic/vb6-cordy/grammar.bgf > zoo/basic/vb6-cordy.bgf
	_dev/format zoo basic/vb6-cordy basic/vb6-cordy
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/basic/vb-glineur/grammar.bgf > zoo/basic/vb-glineur.bgf
	_dev/format zoo basic/vb-glineur basic/vb-glineur
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/bibtex/bibtex-1/grammar.bgf > zoo/bibtex/bibtex-1.bgf
	_dev/format zoo bibtex/bibtex-1 bibtex/bibtex-1
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/bibtex/bibtex-1.1/grammar.bgf > zoo/bibtex/bibtex-1.1.bgf
	_dev/format zoo bibtex/bibtex-1.1 bibtex/bibtex-1.1
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/bibtex/bibtex-1.2/grammar.bgf > zoo/bibtex/bibtex-1.2.bgf
	_dev/format zoo bibtex/bibtex-1.2 bibtex/bibtex-1.2
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/bibtex/bql/grammar.bgf > zoo/bibtex/bql.bgf
	_dev/format zoo bibtex/bql bibtex/bql
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/c/ansi-sdf/grammar.bgf > zoo/c/ansi-sdf.bgf
	_dev/format zoo c/ansi-sdf c/ansi-sdf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/c/lankamp/grammar.bgf > zoo/c/lankamp.bgf
	_dev/format zoo c/lankamp c/lankamp
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/c/iso-9899-1999/grammar.bgf > zoo/c/iso-9899-1999.bgf
	_dev/format zoo c/iso-9899-1999 c/iso-9899-1999
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/c/iso-9899-tc2/grammar.bgf > zoo/c/iso-9899-tc2.bgf
	_dev/format zoo c/iso-9899-tc2 c/iso-9899-tc2
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/c/iso-9899-tc3/grammar.bgf > zoo/c/iso-9899-tc3.bgf
	_dev/format zoo c/iso-9899-tc3 c/iso-9899-tc3
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/c/cordy-malton/grammar.bgf > zoo/c/cordy-malton.bgf
	_dev/format zoo c/cordy-malton c/cordy-malton
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/c/malton-dahn/grammar.bgf > zoo/c/malton-dahn.bgf
	_dev/format zoo c/malton-dahn c/malton-dahn
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/c/cordy-malton-dahn/grammar.bgf > zoo/c/cordy-malton-dahn.bgf
	_dev/format zoo c/cordy-malton-dahn c/cordy-malton-dahn
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/c/antoniol/grammar.bgf > zoo/c/antoniol.bgf
	_dev/format zoo c/antoniol c/antoniol
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/c/bruneliere/grammar.bgf > zoo/c/bruneliere.bgf
	_dev/format zoo c/bruneliere c/bruneliere
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/cpp/iso-14882-1998/grammar.bgf > zoo/cpp/iso-14882-1998.bgf
	_dev/format zoo cpp/iso-14882-1998 cpp/iso-14882-1998
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/cpp/iso-n2723/grammar.bgf > zoo/cpp/iso-n2723.bgf
	_dev/format zoo cpp/iso-n2723 cpp/iso-n2723
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/cpp/elges-cordy/grammar.bgf > zoo/cpp/elges-cordy.bgf
	_dev/format zoo cpp/elges-cordy cpp/elges-cordy
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/cpp/bruneliere/grammar.bgf > zoo/cpp/bruneliere.bgf
	_dev/format zoo cpp/bruneliere cpp/bruneliere
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csharp/ecma-334-1/grammar.bgf > zoo/cs/csharp-ecma-334-1.bgf
	_dev/format zoo cs/csharp-ecma-334-1 csharp/ecma-334-1
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csharp/ecma-334-2/grammar.bgf > zoo/cs/csharp-ecma-334-2.bgf
	_dev/format zoo cs/csharp-ecma-334-2 csharp/ecma-334-2
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csharp/zaytsev/grammar.bgf > zoo/cs/csharp-zaytsev.bgf
	_dev/format zoo cs/csharp-zaytsev csharp/zaytsev
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csharp/iso-23270-2003/grammar.bgf > zoo/cs/csharp-iso-23270-2003.bgf
	_dev/format zoo cs/csharp-iso-23270-2003 csharp/iso-23270-2003
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csharp/msft-ls-1.0/grammar.bgf > zoo/cs/csharp-msft-ls-1.0.bgf
	_dev/format zoo cs/csharp-msft-ls-1.0 csharp/msft-ls-1.0
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csharp/msft-ls-1.2/grammar.bgf > zoo/cs/csharp-msft-ls-1.2.bgf
	_dev/format zoo cs/csharp-msft-ls-1.2 csharp/msft-ls-1.2
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csharp/ecma-334-3/grammar.bgf > zoo/cs/csharp-ecma-334-3.bgf
	_dev/format zoo cs/csharp-ecma-334-3 csharp/ecma-334-3
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csharp/ecma-334-4/grammar.bgf > zoo/cs/csharp-ecma-334-4.bgf
	_dev/format zoo cs/csharp-ecma-334-4 csharp/ecma-334-4
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csharp/iso-23270-2006/grammar.bgf > zoo/cs/csharp-iso-23270-2006.bgf
	_dev/format zoo cs/csharp-iso-23270-2006 csharp/iso-23270-2006
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csharp/msft-ls-3.0/grammar.bgf > zoo/cs/csharp-msft-ls-3.0.bgf
	_dev/format zoo cs/csharp-msft-ls-3.0 csharp/msft-ls-3.0
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csharp/cordy/grammar.bgf > zoo/cs/csharp-cordy.bgf
	_dev/format zoo cs/csharp-cordy csharp/cordy
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csharp/antoniol/grammar.bgf > zoo/cs/csharp-antoniol.bgf
	_dev/format zoo cs/csharp-antoniol csharp/antoniol
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csharp/msft-ls-4.0/grammar.bgf > zoo/cs/csharp-msft-ls-4.0.bgf
	_dev/format zoo cs/csharp-msft-ls-4.0 csharp/msft-ls-4.0
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csharp/bruneliere/grammar.bgf > zoo/cs/csharp-bruneliere.bgf
	_dev/format zoo cs/csharp-bruneliere csharp/bruneliere
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/conf/cocus/grammar.bgf > zoo/conf/cocus.bgf
	_dev/format zoo conf/cocus conf/cocus
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/conf/conferencereview/grammar.bgf > zoo/conf/conferencereview.bgf
	_dev/format zoo conf/conferencereview conf/conferencereview
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/conf/conftool/grammar.bgf > zoo/conf/conftool.bgf
	_dev/format zoo conf/conftool conf/conftool
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/conf/confious/grammar.bgf > zoo/conf/confious.bgf
	_dev/format zoo conf/confious conf/confious
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/conf/edas/grammar.bgf > zoo/conf/edas.bgf
	_dev/format zoo conf/edas conf/edas
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/conf/ekaw/grammar.bgf > zoo/conf/ekaw.bgf
	_dev/format zoo conf/ekaw conf/ekaw
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/conf/iasted/grammar.bgf > zoo/conf/iasted.bgf
	_dev/format zoo conf/iasted conf/iasted
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/conf/microarch/grammar.bgf > zoo/conf/microarch.bgf
	_dev/format zoo conf/microarch conf/microarch
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/conf/cmt/grammar.bgf > zoo/conf/cmt.bgf
	_dev/format zoo conf/cmt conf/cmt
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/conf/paperdyne/grammar.bgf > zoo/conf/paperdyne.bgf
	_dev/format zoo conf/paperdyne conf/paperdyne
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/conf/precisionconference/grammar.bgf > zoo/conf/precisionconference.bgf
	_dev/format zoo conf/precisionconference conf/precisionconference
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/conf/sigkdd/grammar.bgf > zoo/conf/sigkdd.bgf
	_dev/format zoo conf/sigkdd conf/sigkdd
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/conf/sofsem/grammar.bgf > zoo/conf/sofsem.bgf
	_dev/format zoo conf/sofsem conf/sofsem
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/conf/zakongroup/grammar.bgf > zoo/conf/zakongroup.bgf
	_dev/format zoo conf/zakongroup conf/zakongroup
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/dart/google/grammar.bgf > zoo/dart/google.bgf
	_dev/format zoo dart/google dart/google
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/dart/spec-0.01/grammar.bgf > zoo/dart/spec-0.01.bgf
	_dev/format zoo dart/spec-0.01 dart/spec-0.01
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/dart/spec-0.05/grammar.bgf > zoo/dart/spec-0.05.bgf
	_dev/format zoo dart/spec-0.05 dart/spec-0.05
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/develop/ant-ruchaud-brunel/grammar.bgf > zoo/develop/ant-ruchaud-brunel.bgf
	_dev/format zoo develop/ant-ruchaud-brunel develop/ant-ruchaud-brunel
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/develop/ant-bruneliere/grammar.bgf > zoo/develop/ant-bruneliere.bgf
	_dev/format zoo develop/ant-bruneliere develop/ant-bruneliere
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/develop/bugzilla/grammar.bgf > zoo/develop/bugzilla.bgf
	_dev/format zoo develop/bugzilla develop/bugzilla
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/develop/make/grammar.bgf > zoo/develop/make.bgf
	_dev/format zoo develop/make develop/make
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/develop/mantis/grammar.bgf > zoo/develop/mantis.bgf
	_dev/format zoo develop/mantis develop/mantis
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/develop/maven-maven/grammar.bgf > zoo/develop/maven-maven.bgf
	_dev/format zoo develop/maven-maven develop/maven-maven
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/develop/maven-project/grammar.bgf > zoo/develop/maven-project.bgf
	_dev/format zoo develop/maven-project develop/maven-project
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/develop/java-project/grammar.bgf > zoo/develop/java-project.bgf
	_dev/format zoo develop/java-project develop/java-project
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/develop/microsoft-project-bruneliere/grammar.bgf > zoo/develop/microsoft-project-bruneliere.bgf
	_dev/format zoo develop/microsoft-project-bruneliere develop/microsoft-project-bruneliere
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/develop/microsoft-project-touzet/grammar.bgf > zoo/develop/microsoft-project-touzet.bgf
	_dev/format zoo develop/microsoft-project-touzet develop/microsoft-project-touzet
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/dot/palies/grammar.bgf > zoo/dot/palies.bgf
	_dev/format zoo dot/palies dot/palies
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/dot/doux/grammar.bgf > zoo/dot/doux.bgf
	_dev/format zoo dot/doux dot/doux
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/dot/rascal-abstract/grammar.bgf > zoo/dot/rascal-abstract.bgf
	_dev/format zoo dot/rascal-abstract dot/rascal-abstract
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/dot/rascal-concrete/grammar.bgf > zoo/dot/rascal-concrete.bgf
	_dev/format zoo dot/rascal-concrete dot/rascal-concrete
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/dot/rascal-comment/grammar.bgf > zoo/dot/rascal-comment.bgf
	_dev/format zoo dot/rascal-comment dot/rascal-comment
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/asf-sdf/grammar.bgf > zoo/metasyntax/asf-sdf.bgf
	_dev/format zoo metasyntax/asf-sdf metasyntax/asf-sdf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/asfix-sdf/grammar.bgf > zoo/metasyntax/asfix-sdf.bgf
	_dev/format zoo metasyntax/asfix-sdf metasyntax/asfix-sdf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/aterms-sdf/grammar.bgf > zoo/metasyntax/aterms-sdf.bgf
	_dev/format zoo metasyntax/aterms-sdf metasyntax/aterms-sdf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/aterms-rascal/grammar.bgf > zoo/metasyntax/aterms-rascal.bgf
	_dev/format zoo metasyntax/aterms-rascal metasyntax/aterms-rascal
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/bnf-sdf/grammar.bgf > zoo/metasyntax/bnf-sdf.bgf
	_dev/format zoo metasyntax/bnf-sdf metasyntax/bnf-sdf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/box-sdf/grammar.bgf > zoo/metasyntax/box-sdf.bgf
	_dev/format zoo metasyntax/box-sdf metasyntax/box-sdf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/box-rascal/grammar.bgf > zoo/metasyntax/box-rascal.bgf
	_dev/format zoo metasyntax/box-rascal metasyntax/box-rascal
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/dtd/grammar.bgf > zoo/metasyntax/dtd.bgf
	_dev/format zoo metasyntax/dtd metasyntax/dtd
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/ebnf-bgf/grammar.bgf > zoo/metasyntax/ebnf-bgf.bgf
	_dev/format zoo metasyntax/ebnf-bgf metasyntax/ebnf-bgf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/ebnf-iso-1/grammar.bgf > zoo/metasyntax/ebnf-iso-1.bgf
	_dev/format zoo metasyntax/ebnf-iso-1 metasyntax/ebnf-iso-1
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/ebnf-iso-2/grammar.bgf > zoo/metasyntax/ebnf-iso-2.bgf
	_dev/format zoo metasyntax/ebnf-iso-2 metasyntax/ebnf-iso-2
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/ebnf-iso-3/grammar.bgf > zoo/metasyntax/ebnf-iso-3.bgf
	_dev/format zoo metasyntax/ebnf-iso-3 metasyntax/ebnf-iso-3
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/ebnf-sdf/grammar.bgf > zoo/metasyntax/ebnf-sdf.bgf
	_dev/format zoo metasyntax/ebnf-sdf metasyntax/ebnf-sdf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/lll-ldta/grammar.bgf > zoo/metasyntax/lll-ldta.bgf
	_dev/format zoo metasyntax/lll-ldta metasyntax/lll-ldta
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/lll-kort/grammar.bgf > zoo/metasyntax/lll-kort.bgf
	_dev/format zoo metasyntax/lll-kort metasyntax/lll-kort
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/pdg/grammar.bgf > zoo/metasyntax/pdg.bgf
	_dev/format zoo metasyntax/pdg metasyntax/pdg
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/rascal-new/grammar.bgf > zoo/metasyntax/rascal-new.bgf
	_dev/format zoo metasyntax/rascal-new metasyntax/rascal-new
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/rascal-types/grammar.bgf > zoo/metasyntax/rascal-types.bgf
	_dev/format zoo metasyntax/rascal-types metasyntax/rascal-types
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/rascal-adt-simple/grammar.bgf > zoo/metasyntax/rascal-adt-simple.bgf
	_dev/format zoo metasyntax/rascal-adt-simple metasyntax/rascal-adt-simple
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/relaxng/grammar.bgf > zoo/metasyntax/relaxng.bgf
	_dev/format zoo metasyntax/relaxng metasyntax/relaxng
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/sdf-sdf/grammar.bgf > zoo/metasyntax/sdf-sdf.bgf
	_dev/format zoo metasyntax/sdf-sdf metasyntax/sdf-sdf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/sdf-rascal/grammar.bgf > zoo/metasyntax/sdf-rascal.bgf
	_dev/format zoo metasyntax/sdf-rascal metasyntax/sdf-rascal
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/s-expressions/grammar.bgf > zoo/metasyntax/s-expressions.bgf
	_dev/format zoo metasyntax/s-expressions metasyntax/s-expressions
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/txl/grammar.bgf > zoo/metasyntax/txl.bgf
	_dev/format zoo metasyntax/txl metasyntax/txl
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/xsd/tennison/grammar.bgf > zoo/metasyntax/xsd-tennison.bgf
	_dev/format zoo metasyntax/xsd-tennison xsd/tennison
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/xsd/guyard/grammar.bgf > zoo/metasyntax/xsd-guyard.bgf
	_dev/format zoo metasyntax/xsd-guyard xsd/guyard
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/yacc-sdf/grammar.bgf > zoo/metasyntax/yacc-sdf.bgf
	_dev/format zoo metasyntax/yacc-sdf metasyntax/yacc-sdf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/yacc-txl/grammar.bgf > zoo/metasyntax/yacc-txl.bgf
	_dev/format zoo metasyntax/yacc-txl metasyntax/yacc-txl
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/eiffel/bezault/grammar.bgf > zoo/eiffel/bezault.bgf
	_dev/format zoo eiffel/bezault eiffel/bezault
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/eiffel/iso-25436-2006/grammar.bgf > zoo/eiffel/iso-25436-2006.bgf
	_dev/format zoo eiffel/iso-25436-2006 eiffel/iso-25436-2006
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/eiffel/cordy/grammar.bgf > zoo/eiffel/cordy.bgf
	_dev/format zoo eiffel/cordy eiffel/cordy
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/fl/antlr/grammar.bgf > zoo/fl/antlr.bgf
	_dev/format zoo fl/antlr fl/antlr
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/fl/dcg/grammar.bgf > zoo/fl/dcg.bgf
	_dev/format zoo fl/dcg fl/dcg
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/fl/python/grammar.bgf > zoo/fl/python.bgf
	_dev/format zoo fl/python fl/python
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/fl/concrete-rascal/grammar.bgf > zoo/fl/concrete-rascal.bgf
	_dev/format zoo fl/concrete-rascal fl/concrete-rascal
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/fl/sdf/grammar.bgf > zoo/fl/sdf.bgf
	_dev/format zoo fl/sdf fl/sdf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/fl/txl/grammar.bgf > zoo/fl/txl.bgf
	_dev/format zoo fl/txl fl/txl
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/fl/ecore/grammar.bgf > zoo/fl/ecore.bgf
	_dev/format zoo fl/ecore fl/ecore
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/fl/emf/grammar.bgf > zoo/fl/emf.bgf
	_dev/format zoo fl/emf fl/emf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/fl/abstract-rascal/grammar.bgf > zoo/fl/abstract-rascal.bgf
	_dev/format zoo fl/abstract-rascal fl/abstract-rascal
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/fl/xsd/grammar.bgf > zoo/fl/xsd.bgf
	_dev/format zoo fl/xsd fl/xsd
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/fl/om/grammar.bgf > zoo/fl/om.bgf
	_dev/format zoo fl/om fl/om
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/fl/jaxb/grammar.bgf > zoo/fl/jaxb.bgf
	_dev/format zoo fl/jaxb fl/jaxb
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/atom/dettrick/grammar.bgf > zoo/markup/atom-dettrick.bgf
	_dev/format zoo markup/atom-dettrick atom/dettrick
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/atom/touzet/grammar.bgf > zoo/markup/atom-touzet.bgf
	_dev/format zoo markup/atom-touzet atom/touzet
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/markup/cml/grammar.bgf > zoo/markup/cml.bgf
	_dev/format zoo markup/cml markup/cml
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/markup/cnf/grammar.bgf > zoo/markup/cnf.bgf
	_dev/format zoo markup/cnf markup/cnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csv/rascal-abstract/grammar.bgf > zoo/markup/csv-rascal-abstract.bgf
	_dev/format zoo markup/csv-rascal-abstract csv/rascal-abstract
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csv/rascal-concrete/grammar.bgf > zoo/markup/csv-rascal-concrete.bgf
	_dev/format zoo markup/csv-rascal-concrete csv/rascal-concrete
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/docbook/walsh/grammar.bgf > zoo/markup/docbook-walsh.bgf
	_dev/format zoo markup/docbook-walsh docbook/walsh
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/docbook/touzet/grammar.bgf > zoo/markup/docbook-touzet.bgf
	_dev/format zoo markup/docbook-touzet docbook/touzet
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/markup/ebxml/grammar.bgf > zoo/markup/ebxml.bgf
	_dev/format zoo markup/ebxml markup/ebxml
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/graphml/doux/grammar.bgf > zoo/markup/graphml-doux.bgf
	_dev/format zoo markup/graphml-doux graphml/doux
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/json/rascal-abstract/grammar.bgf > zoo/markup/json-rascal-abstract.bgf
	_dev/format zoo markup/json-rascal-abstract json/rascal-abstract
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/json/zaytsev-abstract/grammar.bgf > zoo/markup/json-zaytsev-abstract.bgf
	_dev/format zoo markup/json-zaytsev-abstract json/zaytsev-abstract
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/json/rascal-concrete/grammar.bgf > zoo/markup/json-rascal-concrete.bgf
	_dev/format zoo markup/json-rascal-concrete json/rascal-concrete
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/json/zaytsev-concrete/grammar.bgf > zoo/markup/json-zaytsev-concrete.bgf
	_dev/format zoo markup/json-zaytsev-concrete json/zaytsev-concrete
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/markup/kml/grammar.bgf > zoo/markup/kml.bgf
	_dev/format zoo markup/kml markup/kml
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/markup/latex/grammar.bgf > zoo/markup/latex.bgf
	_dev/format zoo markup/latex markup/latex
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/mathml/furubayashi/grammar.bgf > zoo/markup/mathml-furubayashi.bgf
	_dev/format zoo markup/mathml-furubayashi mathml/furubayashi
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/wiki/mediawiki-bnf/grammar.bgf > zoo/markup/wiki-mediawiki-bnf.bgf
	_dev/format zoo markup/wiki-mediawiki-bnf wiki/mediawiki-bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/wiki/mediawiki-ebnf/grammar.bgf > zoo/markup/wiki-mediawiki-ebnf.bgf
	_dev/format zoo markup/wiki-mediawiki-ebnf wiki/mediawiki-ebnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/pnmlcoremodel/grammar.bgf > zoo/markup/pnml-pnmlcoremodel.bgf
	_dev/format zoo markup/pnml-pnmlcoremodel pnml/pnmlcoremodel
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/anyElement/grammar.bgf > zoo/markup/pnml-anyElement.bgf
	_dev/format zoo markup/pnml-anyElement pnml/anyElement
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/conventions/grammar.bgf > zoo/markup/pnml-conventions.bgf
	_dev/format zoo markup/pnml-conventions pnml/conventions
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/ptnet/grammar.bgf > zoo/markup/pnml-ptnet.bgf
	_dev/format zoo markup/pnml-ptnet pnml/ptnet
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/booleans/grammar.bgf > zoo/markup/pnml-booleans.bgf
	_dev/format zoo markup/pnml-booleans pnml/booleans
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/finiteenumerations/grammar.bgf > zoo/markup/pnml-finiteenumerations.bgf
	_dev/format zoo markup/pnml-finiteenumerations pnml/finiteenumerations
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/cyclicenumerations/grammar.bgf > zoo/markup/pnml-cyclicenumerations.bgf
	_dev/format zoo markup/pnml-cyclicenumerations pnml/cyclicenumerations
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/finiteintranges/grammar.bgf > zoo/markup/pnml-finiteintranges.bgf
	_dev/format zoo markup/pnml-finiteintranges pnml/finiteintranges
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/dots/grammar.bgf > zoo/markup/pnml-dots.bgf
	_dev/format zoo markup/pnml-dots pnml/dots
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/multisets/grammar.bgf > zoo/markup/pnml-multisets.bgf
	_dev/format zoo markup/pnml-multisets pnml/multisets
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/partitions/grammar.bgf > zoo/markup/pnml-partitions.bgf
	_dev/format zoo markup/pnml-partitions pnml/partitions
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/lists/grammar.bgf > zoo/markup/pnml-lists.bgf
	_dev/format zoo markup/pnml-lists pnml/lists
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/integers/grammar.bgf > zoo/markup/pnml-integers.bgf
	_dev/format zoo markup/pnml-integers pnml/integers
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/strings/grammar.bgf > zoo/markup/pnml-strings.bgf
	_dev/format zoo markup/pnml-strings pnml/strings
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/terms/grammar.bgf > zoo/markup/pnml-terms.bgf
	_dev/format zoo markup/pnml-terms pnml/terms
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/arbitrarydeclarations/grammar.bgf > zoo/markup/pnml-arbitrarydeclarations.bgf
	_dev/format zoo markup/pnml-arbitrarydeclarations pnml/arbitrarydeclarations
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/hlcorestructure/grammar.bgf > zoo/markup/pnml-hlcorestructure.bgf
	_dev/format zoo markup/pnml-hlcorestructure pnml/hlcorestructure
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/hlpng/grammar.bgf > zoo/markup/pnml-hlpng.bgf
	_dev/format zoo markup/pnml-hlpng pnml/hlpng
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/symmetricnet/grammar.bgf > zoo/markup/pnml-symmetricnet.bgf
	_dev/format zoo markup/pnml-symmetricnet pnml/symmetricnet
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/highlevelnet/grammar.bgf > zoo/markup/pnml-highlevelnet.bgf
	_dev/format zoo markup/pnml-highlevelnet pnml/highlevelnet
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/ext-specialarcs/grammar.bgf > zoo/markup/pnml-ext-specialarcs.bgf
	_dev/format zoo markup/pnml-ext-specialarcs pnml/ext-specialarcs
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/ext-reset/grammar.bgf > zoo/markup/pnml-ext-reset.bgf
	_dev/format zoo markup/pnml-ext-reset pnml/ext-reset
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/ext-inhibitor/grammar.bgf > zoo/markup/pnml-ext-inhibitor.bgf
	_dev/format zoo markup/pnml-ext-inhibitor pnml/ext-inhibitor
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/ext-resetinhibitor/grammar.bgf > zoo/markup/pnml-ext-resetinhibitor.bgf
	_dev/format zoo markup/pnml-ext-resetinhibitor pnml/ext-resetinhibitor
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/guyard-modular/grammar.bgf > zoo/markup/pnml-guyard-modular.bgf
	_dev/format zoo markup/pnml-guyard-modular pnml/guyard-modular
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/guyard-simplified/grammar.bgf > zoo/markup/pnml-guyard-simplified.bgf
	_dev/format zoo markup/pnml-guyard-simplified pnml/guyard-simplified
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/guyard-basic/grammar.bgf > zoo/markup/pnml-guyard-basic.bgf
	_dev/format zoo markup/pnml-guyard-basic pnml/guyard-basic
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/guyard-structured/grammar.bgf > zoo/markup/pnml-guyard-structured.bgf
	_dev/format zoo markup/pnml-guyard-structured pnml/guyard-structured
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/touzet/grammar.bgf > zoo/markup/pnml-touzet.bgf
	_dev/format zoo markup/pnml-touzet pnml/touzet
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/markup/r2ml/grammar.bgf > zoo/markup/r2ml.bgf
	_dev/format zoo markup/r2ml markup/r2ml
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/rss/touzet/grammar.bgf > zoo/markup/rss-touzet.bgf
	_dev/format zoo markup/rss-touzet rss/touzet
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/svg/furubayashi/grammar.bgf > zoo/markup/svg-furubayashi.bgf
	_dev/format zoo markup/svg-furubayashi svg/furubayashi
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/svg/furubayashi-basic/grammar.bgf > zoo/markup/svg-furubayashi-basic.bgf
	_dev/format zoo markup/svg-furubayashi-basic svg/furubayashi-basic
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/svg/furubayashi-tiny/grammar.bgf > zoo/markup/svg-furubayashi-tiny.bgf
	_dev/format zoo markup/svg-furubayashi-tiny svg/furubayashi-tiny
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/svg/palies/grammar.bgf > zoo/markup/svg-palies.bgf
	_dev/format zoo markup/svg-palies svg/palies
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/markup/uiml/grammar.bgf > zoo/markup/uiml.bgf
	_dev/format zoo markup/uiml markup/uiml
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/wiki/simple/grammar.bgf > zoo/markup/wiki-simple.bgf
	_dev/format zoo markup/wiki-simple wiki/simple
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/wiki/table/grammar.bgf > zoo/markup/wiki-table.bgf
	_dev/format zoo markup/wiki-table wiki/table
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/xaml/perspective/grammar.bgf > zoo/markup/xaml-perspective.bgf
	_dev/format zoo markup/xaml-perspective xaml/perspective
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/xaml/resources/grammar.bgf > zoo/markup/xaml-resources.bgf
	_dev/format zoo markup/xaml-resources xaml/resources
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/fortran/derricks/grammar.bgf > zoo/fortran/derricks.bgf
	_dev/format zoo fortran/derricks fortran/derricks
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/fortran/waite-cordy/grammar.bgf > zoo/fortran/waite-cordy.bgf
	_dev/format zoo fortran/waite-cordy fortran/waite-cordy
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/html/cordy/grammar.bgf > zoo/html/cordy.bgf
	_dev/format zoo html/cordy html/cordy
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/html/allilaire/grammar.bgf > zoo/html/allilaire.bgf
	_dev/format zoo html/allilaire html/allilaire
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/html/clark/grammar.bgf > zoo/html/clark.bgf
	_dev/format zoo html/clark html/clark
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/html/guyard/grammar.bgf > zoo/html/guyard.bgf
	_dev/format zoo html/guyard html/guyard
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/html/clark-basic/grammar.bgf > zoo/html/clark-basic.bgf
	_dev/format zoo html/clark-basic html/clark-basic
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/html/clark-strict/grammar.bgf > zoo/html/clark-strict.bgf
	_dev/format zoo html/clark-strict html/clark-strict
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-1/jls-read/grammar.bgf > zoo/java/java-1-jls-read.bgf
	_dev/format zoo java/java-1-jls-read java-1/jls-read
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-1/jls-impl/grammar.bgf > zoo/java/java-1-jls-impl.bgf
	_dev/format zoo java/java-1-jls-impl java-1/jls-impl
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-1/cordy-guo/grammar.bgf > zoo/java/java-1-cordy-guo.bgf
	_dev/format zoo java/java-1-cordy-guo java-1/cordy-guo
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-1/jouault/grammar.bgf > zoo/java/java-1-jouault.bgf
	_dev/format zoo java/java-1-jouault java-1/jouault
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-1/touzet/grammar.bgf > zoo/java/java-1-touzet.bgf
	_dev/format zoo java/java-1-touzet java-1/touzet
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-2/jls-read/grammar.bgf > zoo/java/java-2-jls-read.bgf
	_dev/format zoo java/java-2-jls-read java-2/jls-read
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-2/jls-impl/grammar.bgf > zoo/java/java-2-jls-impl.bgf
	_dev/format zoo java/java-2-jls-impl java-2/jls-impl
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-3/bruneliere/grammar.bgf > zoo/java/java-3-bruneliere.bgf
	_dev/format zoo java/java-3-bruneliere java-3/bruneliere
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-4/sdf/grammar.bgf > zoo/java/java-4-sdf.bgf
	_dev/format zoo java/java-4-sdf java-4/sdf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-5/jls-read/grammar.bgf > zoo/java/java-5-jls-read.bgf
	_dev/format zoo java/java-5-jls-read java-5/jls-read
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-5/jls-impl/grammar.bgf > zoo/java/java-5-jls-impl.bgf
	_dev/format zoo java/java-5-jls-impl java-5/jls-impl
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-5/landman/grammar.bgf > zoo/java/java-5-landman.bgf
	_dev/format zoo java/java-5-landman java-5/landman
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-5/stahl/grammar.bgf > zoo/java/java-5-stahl.bgf
	_dev/format zoo java/java-5-stahl java-5/stahl
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-5/studman/grammar.bgf > zoo/java/java-5-studman.bgf
	_dev/format zoo java/java-5-studman java-5/studman
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-5/parr/grammar.bgf > zoo/java/java-5-parr.bgf
	_dev/format zoo java/java-5-parr java-5/parr
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-5/habelitz/grammar.bgf > zoo/java/java-5-habelitz.bgf
	_dev/format zoo java/java-5-habelitz java-5/habelitz
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-5/cordy-guo-dean/grammar.bgf > zoo/java/java-5-cordy-guo-dean.bgf
	_dev/format zoo java/java-5-cordy-guo-dean java-5/cordy-guo-dean
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-5/giquel/grammar.bgf > zoo/java/java-5-giquel.bgf
	_dev/format zoo java/java-5-giquel java-5/giquel
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java/jdt/grammar.bgf > zoo/java/jdt.bgf
	_dev/format zoo java/jdt java/jdt
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java/jvm-level0/grammar.bgf > zoo/java/jvm-level0.bgf
	_dev/format zoo java/jvm-level0 java/jvm-level0
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java/jvm-level1/grammar.bgf > zoo/java/jvm-level1.bgf
	_dev/format zoo java/jvm-level1 java/jvm-level1
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/javascript/synytskyy-cordy/grammar.bgf > zoo/javascript/synytskyy-cordy.bgf
	_dev/format zoo javascript/synytskyy-cordy javascript/synytskyy-cordy
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/logo/sdf/grammar.bgf > zoo/logo/sdf.bgf
	_dev/format zoo logo/sdf logo/sdf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ACG/grammar.bgf > zoo/metamodels/ACG.bgf
	_dev/format zoo metamodels/ACG metamodels/ACG
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ACME/grammar.bgf > zoo/metamodels/ACME.bgf
	_dev/format zoo metamodels/ACME metamodels/ACME
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ADELFE/grammar.bgf > zoo/metamodels/ADELFE.bgf
	_dev/format zoo metamodels/ADELFE metamodels/ADELFE
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Agate/grammar.bgf > zoo/metamodels/Agate.bgf
	_dev/format zoo metamodels/Agate metamodels/Agate
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ATL/grammar.bgf > zoo/metamodels/ATL.bgf
	_dev/format zoo metamodels/ATL metamodels/ATL
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/XMorphLanguage_abstractSyntax/grammar.bgf > zoo/metamodels/XMorphLanguage_abstractSyntax.bgf
	_dev/format zoo metamodels/XMorphLanguage_abstractSyntax metamodels/XMorphLanguage_abstractSyntax
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/TroposActorConcept/grammar.bgf > zoo/metamodels/TroposActorConcept.bgf
	_dev/format zoo metamodels/TroposActorConcept metamodels/TroposActorConcept
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Amble/grammar.bgf > zoo/metamodels/Amble.bgf
	_dev/format zoo metamodels/Amble metamodels/Amble
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/AnyLogic/grammar.bgf > zoo/metamodels/AnyLogic.bgf
	_dev/format zoo metamodels/AnyLogic metamodels/AnyLogic
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Architectural_Description/grammar.bgf > zoo/metamodels/Architectural_Description.bgf
	_dev/format zoo metamodels/Architectural_Description metamodels/Architectural_Description
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/AsmL/grammar.bgf > zoo/metamodels/AsmL.bgf
	_dev/format zoo metamodels/AsmL metamodels/AsmL
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/BMM/grammar.bgf > zoo/metamodels/BMM.bgf
	_dev/format zoo metamodels/BMM metamodels/BMM
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/BPEL/grammar.bgf > zoo/metamodels/BPEL.bgf
	_dev/format zoo metamodels/BPEL metamodels/BPEL
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/BPMN/grammar.bgf > zoo/metamodels/BPMN.bgf
	_dev/format zoo metamodels/BPMN metamodels/BPMN
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/IEEE1471ViewpointM2/grammar.bgf > zoo/metamodels/IEEE1471ViewpointM2.bgf
	_dev/format zoo metamodels/IEEE1471ViewpointM2 metamodels/IEEE1471ViewpointM2
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/bmmOmg/grammar.bgf > zoo/metamodels/bmmOmg.bgf
	_dev/format zoo metamodels/bmmOmg metamodels/bmmOmg
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Book/grammar.bgf > zoo/metamodels/Book.bgf
	_dev/format zoo metamodels/Book metamodels/Book
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Bossa/grammar.bgf > zoo/metamodels/Bossa.bgf
	_dev/format zoo metamodels/Bossa metamodels/Bossa
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/BusinessEntityModel/grammar.bgf > zoo/metamodels/BusinessEntityModel.bgf
	_dev/format zoo metamodels/BusinessEntityModel metamodels/BusinessEntityModel
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/BusinessProcessModel/grammar.bgf > zoo/metamodels/BusinessProcessModel.bgf
	_dev/format zoo metamodels/BusinessProcessModel metamodels/BusinessProcessModel
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/CADM/grammar.bgf > zoo/metamodels/CADM.bgf
	_dev/format zoo metamodels/CADM metamodels/CADM
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/CDE/grammar.bgf > zoo/metamodels/CDE.bgf
	_dev/format zoo metamodels/CDE metamodels/CDE
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/CFG/grammar.bgf > zoo/metamodels/CFG.bgf
	_dev/format zoo metamodels/CFG metamodels/CFG
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/COBOL/grammar.bgf > zoo/metamodels/COBOL.bgf
	_dev/format zoo metamodels/COBOL metamodels/COBOL
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/CORBAComponent/grammar.bgf > zoo/metamodels/CORBAComponent.bgf
	_dev/format zoo metamodels/CORBAComponent metamodels/CORBAComponent
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/CPL/grammar.bgf > zoo/metamodels/CPL.bgf
	_dev/format zoo metamodels/CPL metamodels/CPL
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/CPR/grammar.bgf > zoo/metamodels/CPR.bgf
	_dev/format zoo metamodels/CPR metamodels/CPR
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/CSM/grammar.bgf > zoo/metamodels/CSM.bgf
	_dev/format zoo metamodels/CSM metamodels/CSM
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/CWMCore/grammar.bgf > zoo/metamodels/CWMCore.bgf
	_dev/format zoo metamodels/CWMCore metamodels/CWMCore
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/CWMRelationalData/grammar.bgf > zoo/metamodels/CWMRelationalData.bgf
	_dev/format zoo metamodels/CWMRelationalData metamodels/CWMRelationalData
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MiningMart_ViewCaseRepresentation/grammar.bgf > zoo/metamodels/MiningMart_ViewCaseRepresentation.bgf
	_dev/format zoo metamodels/MiningMart_ViewCaseRepresentation metamodels/MiningMart_ViewCaseRepresentation
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ChocoModel/grammar.bgf > zoo/metamodels/ChocoModel.bgf
	_dev/format zoo metamodels/ChocoModel metamodels/ChocoModel
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Class/grammar.bgf > zoo/metamodels/Class.bgf
	_dev/format zoo metamodels/Class metamodels/Class
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ClassicModels/grammar.bgf > zoo/metamodels/ClassicModels.bgf
	_dev/format zoo metamodels/ClassicModels metamodels/ClassicModels
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/CompanyStructure/grammar.bgf > zoo/metamodels/CompanyStructure.bgf
	_dev/format zoo metamodels/CompanyStructure metamodels/CompanyStructure
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ComponentUML/grammar.bgf > zoo/metamodels/ComponentUML.bgf
	_dev/format zoo metamodels/ComponentUML metamodels/ComponentUML
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/IEEE1471ConceptualModel/grammar.bgf > zoo/metamodels/IEEE1471ConceptualModel.bgf
	_dev/format zoo metamodels/IEEE1471ConceptualModel metamodels/IEEE1471ConceptualModel
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Contact/grammar.bgf > zoo/metamodels/Contact.bgf
	_dev/format zoo metamodels/Contact metamodels/Contact
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ControllerUML/grammar.bgf > zoo/metamodels/ControllerUML.bgf
	_dev/format zoo metamodels/ControllerUML metamodels/ControllerUML
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Cristal/grammar.bgf > zoo/metamodels/Cristal.bgf
	_dev/format zoo metamodels/Cristal metamodels/Cristal
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DSL/grammar.bgf > zoo/metamodels/DSL.bgf
	_dev/format zoo metamodels/DSL metamodels/DSL
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DSLtools/grammar.bgf > zoo/metamodels/DSLtools.bgf
	_dev/format zoo metamodels/DSLtools metamodels/DSLtools
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DSLModel/grammar.bgf > zoo/metamodels/DSLModel.bgf
	_dev/format zoo metamodels/DSLModel metamodels/DSLModel
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DTMP/grammar.bgf > zoo/metamodels/DTMP.bgf
	_dev/format zoo metamodels/DTMP metamodels/DTMP
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DXF/grammar.bgf > zoo/metamodels/DXF.bgf
	_dev/format zoo metamodels/DXF metamodels/DXF
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSVisio_DatadiagramMLBasicDef/grammar.bgf > zoo/metamodels/MSVisio_DatadiagramMLBasicDef.bgf
	_dev/format zoo metamodels/MSVisio_DatadiagramMLBasicDef metamodels/MSVisio_DatadiagramMLBasicDef
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSVisio_DatadiagramMLSimplified/grammar.bgf > zoo/metamodels/MSVisio_DatadiagramMLSimplified.bgf
	_dev/format zoo metamodels/MSVisio_DatadiagramMLSimplified metamodels/MSVisio_DatadiagramMLSimplified
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSVisio_DatadiagramMLTextFormat/grammar.bgf > zoo/metamodels/MSVisio_DatadiagramMLTextFormat.bgf
	_dev/format zoo metamodels/MSVisio_DatadiagramMLTextFormat metamodels/MSVisio_DatadiagramMLTextFormat
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSVisio_DatadiagramMLXForm/grammar.bgf > zoo/metamodels/MSVisio_DatadiagramMLXForm.bgf
	_dev/format zoo metamodels/MSVisio_DatadiagramMLXForm metamodels/MSVisio_DatadiagramMLXForm
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MiningMart_SimplifiedMetamodel/grammar.bgf > zoo/metamodels/MiningMart_SimplifiedMetamodel.bgf
	_dev/format zoo metamodels/MiningMart_SimplifiedMetamodel metamodels/MiningMart_SimplifiedMetamodel
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MiningMart_ViewDataRepresentation/grammar.bgf > zoo/metamodels/MiningMart_ViewDataRepresentation.bgf
	_dev/format zoo metamodels/MiningMart_ViewDataRepresentation metamodels/MiningMart_ViewDataRepresentation
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/deployment/grammar.bgf > zoo/metamodels/deployment.bgf
	_dev/format zoo metamodels/deployment metamodels/deployment
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DiagramInterchange/grammar.bgf > zoo/metamodels/DiagramInterchange.bgf
	_dev/format zoo metamodels/DiagramInterchange metamodels/DiagramInterchange
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DoDAF/grammar.bgf > zoo/metamodels/DoDAF.bgf
	_dev/format zoo metamodels/DoDAF metamodels/DoDAF
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DoDAF-OV5/grammar.bgf > zoo/metamodels/DoDAF-OV5.bgf
	_dev/format zoo metamodels/DoDAF-OV5 metamodels/DoDAF-OV5
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DoDAF-SV4/grammar.bgf > zoo/metamodels/DoDAF-SV4.bgf
	_dev/format zoo metamodels/DoDAF-SV4 metamodels/DoDAF-SV4
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DoDAF-SV5/grammar.bgf > zoo/metamodels/DoDAF-SV5.bgf
	_dev/format zoo metamodels/DoDAF-SV5 metamodels/DoDAF-SV5
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DotNET_SystemReflection/grammar.bgf > zoo/metamodels/DotNET_SystemReflection.bgf
	_dev/format zoo metamodels/DotNET_SystemReflection metamodels/DotNET_SystemReflection
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/EAI/grammar.bgf > zoo/metamodels/EAI.bgf
	_dev/format zoo metamodels/EAI metamodels/EAI
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/EG/grammar.bgf > zoo/metamodels/EG.bgf
	_dev/format zoo metamodels/EG metamodels/EG
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/EQN/grammar.bgf > zoo/metamodels/EQN.bgf
	_dev/format zoo metamodels/EQN metamodels/EQN
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/EXPRESS/grammar.bgf > zoo/metamodels/EXPRESS.bgf
	_dev/format zoo metamodels/EXPRESS metamodels/EXPRESS
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/EXPRESSb/grammar.bgf > zoo/metamodels/EXPRESSb.bgf
	_dev/format zoo metamodels/EXPRESSb metamodels/EXPRESSb
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/EclipseLaunchConfigurations/grammar.bgf > zoo/metamodels/EclipseLaunchConfigurations.bgf
	_dev/format zoo metamodels/EclipseLaunchConfigurations metamodels/EclipseLaunchConfigurations
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/EclipsePlugIn/grammar.bgf > zoo/metamodels/EclipsePlugIn.bgf
	_dev/format zoo metamodels/EclipsePlugIn metamodels/EclipsePlugIn
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Family/grammar.bgf > zoo/metamodels/Family.bgf
	_dev/format zoo metamodels/Family metamodels/Family
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/FeatureDiagrams/grammar.bgf > zoo/metamodels/FeatureDiagrams.bgf
	_dev/format zoo metamodels/FeatureDiagrams metamodels/FeatureDiagrams
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Automaton/grammar.bgf > zoo/metamodels/Automaton.bgf
	_dev/format zoo metamodels/Automaton metamodels/Automaton
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/FiniteStateMachine/grammar.bgf > zoo/metamodels/FiniteStateMachine.bgf
	_dev/format zoo metamodels/FiniteStateMachine metamodels/FiniteStateMachine
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/FlatSignalFlow/grammar.bgf > zoo/metamodels/FlatSignalFlow.bgf
	_dev/format zoo metamodels/FlatSignalFlow metamodels/FlatSignalFlow
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GAIA/grammar.bgf > zoo/metamodels/GAIA.bgf
	_dev/format zoo metamodels/GAIA metamodels/GAIA
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Grafcet/grammar.bgf > zoo/metamodels/Grafcet.bgf
	_dev/format zoo metamodels/Grafcet metamodels/Grafcet
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GUI/grammar.bgf > zoo/metamodels/GUI.bgf
	_dev/format zoo metamodels/GUI metamodels/GUI
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Gantt/grammar.bgf > zoo/metamodels/Gantt.bgf
	_dev/format zoo metamodels/Gantt metamodels/Gantt
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GenericOutline/grammar.bgf > zoo/metamodels/GenericOutline.bgf
	_dev/format zoo metamodels/GenericOutline metamodels/GenericOutline
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GenericEditor/grammar.bgf > zoo/metamodels/GenericEditor.bgf
	_dev/format zoo metamodels/GenericEditor metamodels/GenericEditor
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GeoTrans/grammar.bgf > zoo/metamodels/GeoTrans.bgf
	_dev/format zoo metamodels/GeoTrans metamodels/GeoTrans
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/TroposGoalAndPlanConcepts/grammar.bgf > zoo/metamodels/TroposGoalAndPlanConcepts.bgf
	_dev/format zoo metamodels/TroposGoalAndPlanConcepts metamodels/TroposGoalAndPlanConcepts
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/HAL/grammar.bgf > zoo/metamodels/HAL.bgf
	_dev/format zoo metamodels/HAL metamodels/HAL
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/HPROF/grammar.bgf > zoo/metamodels/HPROF.bgf
	_dev/format zoo metamodels/HPROF metamodels/HPROF
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/HierarchicalSignalFlow/grammar.bgf > zoo/metamodels/HierarchicalSignalFlow.bgf
	_dev/format zoo metamodels/HierarchicalSignalFlow metamodels/HierarchicalSignalFlow
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/HierarchicalStateMachine/grammar.bgf > zoo/metamodels/HierarchicalStateMachine.bgf
	_dev/format zoo metamodels/HierarchicalStateMachine metamodels/HierarchicalStateMachine
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/HybridAutomata/grammar.bgf > zoo/metamodels/HybridAutomata.bgf
	_dev/format zoo metamodels/HybridAutomata metamodels/HybridAutomata
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ifc2x3/grammar.bgf > zoo/metamodels/ifc2x3.bgf
	_dev/format zoo metamodels/ifc2x3 metamodels/ifc2x3
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/IMSTransactionMessage/grammar.bgf > zoo/metamodels/IMSTransactionMessage.bgf
	_dev/format zoo metamodels/IMSTransactionMessage metamodels/IMSTransactionMessage
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/IRL/grammar.bgf > zoo/metamodels/IRL.bgf
	_dev/format zoo metamodels/IRL metamodels/IRL
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/TroposIntegratingActorConcept/grammar.bgf > zoo/metamodels/TroposIntegratingActorConcept.bgf
	_dev/format zoo metamodels/TroposIntegratingActorConcept metamodels/TroposIntegratingActorConcept
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Jess/grammar.bgf > zoo/metamodels/Jess.bgf
	_dev/format zoo metamodels/Jess metamodels/Jess
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/logic-abstract/grammar.bgf > zoo/metamodels/logic-abstract.bgf
	_dev/format zoo metamodels/logic-abstract metamodels/logic-abstract
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/logic-concrete/grammar.bgf > zoo/metamodels/logic-concrete.bgf
	_dev/format zoo metamodels/logic-concrete metamodels/logic-concrete
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/KDM/grammar.bgf > zoo/metamodels/KDM.bgf
	_dev/format zoo metamodels/KDM metamodels/KDM
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/KDMSimplified/grammar.bgf > zoo/metamodels/KDMSimplified.bgf
	_dev/format zoo metamodels/KDMSimplified metamodels/KDMSimplified
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/KM3/grammar.bgf > zoo/metamodels/KM3.bgf
	_dev/format zoo metamodels/KM3 metamodels/KM3
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Klaper/grammar.bgf > zoo/metamodels/Klaper.bgf
	_dev/format zoo metamodels/Klaper metamodels/Klaper
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/LQN/grammar.bgf > zoo/metamodels/LQN.bgf
	_dev/format zoo metamodels/LQN metamodels/LQN
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/M/grammar.bgf > zoo/metamodels/M.bgf
	_dev/format zoo metamodels/M metamodels/M
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Marte/grammar.bgf > zoo/metamodels/Marte.bgf
	_dev/format zoo metamodels/Marte metamodels/Marte
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MAS/grammar.bgf > zoo/metamodels/MAS.bgf
	_dev/format zoo metamodels/MAS metamodels/MAS
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Matlab/grammar.bgf > zoo/metamodels/Matlab.bgf
	_dev/format zoo metamodels/Matlab metamodels/Matlab
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MTRANS/grammar.bgf > zoo/metamodels/MTRANS.bgf
	_dev/format zoo metamodels/MTRANS metamodels/MTRANS
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Maude/grammar.bgf > zoo/metamodels/Maude.bgf
	_dev/format zoo metamodels/Maude metamodels/Maude
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Measure/grammar.bgf > zoo/metamodels/Measure.bgf
	_dev/format zoo metamodels/Measure metamodels/Measure
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/METAH/grammar.bgf > zoo/metamodels/METAH.bgf
	_dev/format zoo metamodels/METAH metamodels/METAH
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Metrics/grammar.bgf > zoo/metamodels/Metrics.bgf
	_dev/format zoo metamodels/Metrics metamodels/Metrics
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MiningMart/grammar.bgf > zoo/metamodels/MiningMart.bgf
	_dev/format zoo metamodels/MiningMart metamodels/MiningMart
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MoDAF-AV/grammar.bgf > zoo/metamodels/MoDAF-AV.bgf
	_dev/format zoo metamodels/MoDAF-AV metamodels/MoDAF-AV
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MonitorProgram/grammar.bgf > zoo/metamodels/MonitorProgram.bgf
	_dev/format zoo metamodels/MonitorProgram metamodels/MonitorProgram
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/mlhim2/grammar.bgf > zoo/metamodels/mlhim2.bgf
	_dev/format zoo metamodels/mlhim2 metamodels/mlhim2
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MoMM/grammar.bgf > zoo/metamodels/MoMM.bgf
	_dev/format zoo metamodels/MoMM metamodels/MoMM
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MySQL/grammar.bgf > zoo/metamodels/MySQL.bgf
	_dev/format zoo metamodels/MySQL metamodels/MySQL
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/News/grammar.bgf > zoo/metamodels/News.bgf
	_dev/format zoo metamodels/News metamodels/News
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ODP-CV/grammar.bgf > zoo/metamodels/ODP-CV.bgf
	_dev/format zoo metamodels/ODP-CV metamodels/ODP-CV
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ODP-NV/grammar.bgf > zoo/metamodels/ODP-NV.bgf
	_dev/format zoo metamodels/ODP-NV metamodels/ODP-NV
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ODP-EV/grammar.bgf > zoo/metamodels/ODP-EV.bgf
	_dev/format zoo metamodels/ODP-EV metamodels/ODP-EV
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ODP-IV/grammar.bgf > zoo/metamodels/ODP-IV.bgf
	_dev/format zoo metamodels/ODP-IV metamodels/ODP-IV
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ODP-TV/grammar.bgf > zoo/metamodels/ODP-TV.bgf
	_dev/format zoo metamodels/ODP-TV metamodels/ODP-TV
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/OWL/grammar.bgf > zoo/metamodels/OWL.bgf
	_dev/format zoo metamodels/OWL metamodels/OWL
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/OpenQVT/grammar.bgf > zoo/metamodels/OpenQVT.bgf
	_dev/format zoo metamodels/OpenQVT metamodels/OpenQVT
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/PASSI/grammar.bgf > zoo/metamodels/PASSI.bgf
	_dev/format zoo metamodels/PASSI metamodels/PASSI
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/PIF/grammar.bgf > zoo/metamodels/PIF.bgf
	_dev/format zoo metamodels/PIF metamodels/PIF
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/PRR/grammar.bgf > zoo/metamodels/PRR.bgf
	_dev/format zoo metamodels/PRR metamodels/PRR
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Parameters/grammar.bgf > zoo/metamodels/Parameters.bgf
	_dev/format zoo metamodels/Parameters metamodels/Parameters
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/PathExp/grammar.bgf > zoo/metamodels/PathExp.bgf
	_dev/format zoo metamodels/PathExp metamodels/PathExp
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Perceptory/grammar.bgf > zoo/metamodels/Perceptory.bgf
	_dev/format zoo metamodels/Perceptory metamodels/Perceptory
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Person/grammar.bgf > zoo/metamodels/Person.bgf
	_dev/format zoo metamodels/Person metamodels/Person
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GWPNV0/grammar.bgf > zoo/metamodels/GWPNV0.bgf
	_dev/format zoo metamodels/GWPNV0 metamodels/GWPNV0
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GWPNV1/grammar.bgf > zoo/metamodels/GWPNV1.bgf
	_dev/format zoo metamodels/GWPNV1 metamodels/GWPNV1
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GWPNV2/grammar.bgf > zoo/metamodels/GWPNV2.bgf
	_dev/format zoo metamodels/GWPNV2 metamodels/GWPNV2
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GWPNV3/grammar.bgf > zoo/metamodels/GWPNV3.bgf
	_dev/format zoo metamodels/GWPNV3 metamodels/GWPNV3
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GWPNV4/grammar.bgf > zoo/metamodels/GWPNV4.bgf
	_dev/format zoo metamodels/GWPNV4 metamodels/GWPNV4
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GWPNV5/grammar.bgf > zoo/metamodels/GWPNV5.bgf
	_dev/format zoo metamodels/GWPNV5 metamodels/GWPNV5
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/PetriNet_extended/grammar.bgf > zoo/metamodels/PetriNet_extended.bgf
	_dev/format zoo metamodels/PetriNet_extended metamodels/PetriNet_extended
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/PluginEclipse/grammar.bgf > zoo/metamodels/PluginEclipse.bgf
	_dev/format zoo metamodels/PluginEclipse metamodels/PluginEclipse
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ProMarte/grammar.bgf > zoo/metamodels/ProMarte.bgf
	_dev/format zoo metamodels/ProMarte metamodels/ProMarte
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Problem/grammar.bgf > zoo/metamodels/Problem.bgf
	_dev/format zoo metamodels/Problem metamodels/Problem
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Program/grammar.bgf > zoo/metamodels/Program.bgf
	_dev/format zoo metamodels/Program metamodels/Program
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Promenade/grammar.bgf > zoo/metamodels/Promenade.bgf
	_dev/format zoo metamodels/Promenade metamodels/Promenade
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/PtolemyII/grammar.bgf > zoo/metamodels/PtolemyII.bgf
	_dev/format zoo metamodels/PtolemyII metamodels/PtolemyII
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Publication/grammar.bgf > zoo/metamodels/Publication.bgf
	_dev/format zoo metamodels/Publication metamodels/Publication
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/QVT/grammar.bgf > zoo/metamodels/QVT.bgf
	_dev/format zoo metamodels/QVT metamodels/QVT
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/QoS_Characteristic/grammar.bgf > zoo/metamodels/QoS_Characteristic.bgf
	_dev/format zoo metamodels/QoS_Characteristic metamodels/QoS_Characteristic
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/QoS_Profile/grammar.bgf > zoo/metamodels/QoS_Profile.bgf
	_dev/format zoo metamodels/QoS_Profile metamodels/QoS_Profile
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/QoS_Statement/grammar.bgf > zoo/metamodels/QoS_Statement.bgf
	_dev/format zoo metamodels/QoS_Statement metamodels/QoS_Statement
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/QoS/grammar.bgf > zoo/metamodels/QoS.bgf
	_dev/format zoo metamodels/QoS metamodels/QoS
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/RDFS/grammar.bgf > zoo/metamodels/RDFS.bgf
	_dev/format zoo metamodels/RDFS metamodels/RDFS
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Relational/grammar.bgf > zoo/metamodels/Relational.bgf
	_dev/format zoo metamodels/Relational metamodels/Relational
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/RelationalDBContent/grammar.bgf > zoo/metamodels/RelationalDBContent.bgf
	_dev/format zoo metamodels/RelationalDBContent metamodels/RelationalDBContent
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/RelationalDBSchema/grammar.bgf > zoo/metamodels/RelationalDBSchema.bgf
	_dev/format zoo metamodels/RelationalDBSchema metamodels/RelationalDBSchema
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Repository/grammar.bgf > zoo/metamodels/Repository.bgf
	_dev/format zoo metamodels/Repository metamodels/Repository
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Reqtify/grammar.bgf > zoo/metamodels/Reqtify.bgf
	_dev/format zoo metamodels/Reqtify metamodels/Reqtify
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/RequisitePro/grammar.bgf > zoo/metamodels/RequisitePro.bgf
	_dev/format zoo metamodels/RequisitePro metamodels/RequisitePro
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SBVRvoc/grammar.bgf > zoo/metamodels/SBVRvoc.bgf
	_dev/format zoo metamodels/SBVRvoc metamodels/SBVRvoc
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/sbvrEclipse/grammar.bgf > zoo/metamodels/sbvrEclipse.bgf
	_dev/format zoo metamodels/sbvrEclipse metamodels/sbvrEclipse
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/sbvrOMG/grammar.bgf > zoo/metamodels/sbvrOMG.bgf
	_dev/format zoo metamodels/sbvrOMG metamodels/sbvrOMG
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SCADE/grammar.bgf > zoo/metamodels/SCADE.bgf
	_dev/format zoo metamodels/SCADE metamodels/SCADE
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SEE_Design/grammar.bgf > zoo/metamodels/SEE_Design.bgf
	_dev/format zoo metamodels/SEE_Design metamodels/SEE_Design
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SPEM/grammar.bgf > zoo/metamodels/SPEM.bgf
	_dev/format zoo metamodels/SPEM metamodels/SPEM
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SPL/grammar.bgf > zoo/metamodels/SPL.bgf
	_dev/format zoo metamodels/SPL metamodels/SPL
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SQLDDL/grammar.bgf > zoo/metamodels/SQLDDL.bgf
	_dev/format zoo metamodels/SQLDDL metamodels/SQLDDL
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SQLDML/grammar.bgf > zoo/metamodels/SQLDML.bgf
	_dev/format zoo metamodels/SQLDML metamodels/SQLDML
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SWRC/grammar.bgf > zoo/metamodels/SWRC.bgf
	_dev/format zoo metamodels/SWRC metamodels/SWRC
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Scilab/grammar.bgf > zoo/metamodels/Scilab.bgf
	_dev/format zoo metamodels/Scilab metamodels/Scilab
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SecureUML/grammar.bgf > zoo/metamodels/SecureUML.bgf
	_dev/format zoo metamodels/SecureUML metamodels/SecureUML
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SeminarSchedulingSystem/grammar.bgf > zoo/metamodels/SeminarSchedulingSystem.bgf
	_dev/format zoo metamodels/SeminarSchedulingSystem metamodels/SeminarSchedulingSystem
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Sharengo/grammar.bgf > zoo/metamodels/Sharengo.bgf
	_dev/format zoo metamodels/Sharengo metamodels/Sharengo
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SignalFlow/grammar.bgf > zoo/metamodels/SignalFlow.bgf
	_dev/format zoo metamodels/SignalFlow metamodels/SignalFlow
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SimpleAirlineDomain/grammar.bgf > zoo/metamodels/SimpleAirlineDomain.bgf
	_dev/format zoo metamodels/SimpleAirlineDomain metamodels/SimpleAirlineDomain
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/useCase/grammar.bgf > zoo/metamodels/useCase.bgf
	_dev/format zoo metamodels/useCase metamodels/useCase
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/WSLink/grammar.bgf > zoo/metamodels/WSLink.bgf
	_dev/format zoo metamodels/WSLink metamodels/WSLink
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/WTIP_SimpleClass/grammar.bgf > zoo/metamodels/WTIP_SimpleClass.bgf
	_dev/format zoo metamodels/WTIP_SimpleClass metamodels/WTIP_SimpleClass
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/QVT_SimpleRDBMS/grammar.bgf > zoo/metamodels/QVT_SimpleRDBMS.bgf
	_dev/format zoo metamodels/QVT_SimpleRDBMS metamodels/QVT_SimpleRDBMS
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/WTIP_SimpleRDBMS/grammar.bgf > zoo/metamodels/WTIP_SimpleRDBMS.bgf
	_dev/format zoo metamodels/WTIP_SimpleRDBMS metamodels/WTIP_SimpleRDBMS
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SimpleSBVR/grammar.bgf > zoo/metamodels/SimpleSBVR.bgf
	_dev/format zoo metamodels/SimpleSBVR metamodels/SimpleSBVR
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SimulinkStateFlow/grammar.bgf > zoo/metamodels/SimulinkStateFlow.bgf
	_dev/format zoo metamodels/SimulinkStateFlow metamodels/SimulinkStateFlow
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SoftwareQualityControl/grammar.bgf > zoo/metamodels/SoftwareQualityControl.bgf
	_dev/format zoo metamodels/SoftwareQualityControl metamodels/SoftwareQualityControl
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSOfficeExcel_SpreadsheetMLBasicDef/grammar.bgf > zoo/metamodels/MSOfficeExcel_SpreadsheetMLBasicDef.bgf
	_dev/format zoo metamodels/MSOfficeExcel_SpreadsheetMLBasicDef metamodels/MSOfficeExcel_SpreadsheetMLBasicDef
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSOfficeExcel_SpreadsheetMLPrintingSetup/grammar.bgf > zoo/metamodels/MSOfficeExcel_SpreadsheetMLPrintingSetup.bgf
	_dev/format zoo metamodels/MSOfficeExcel_SpreadsheetMLPrintingSetup metamodels/MSOfficeExcel_SpreadsheetMLPrintingSetup
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSOfficeExcel_SpreadsheetMLSimplified/grammar.bgf > zoo/metamodels/MSOfficeExcel_SpreadsheetMLSimplified.bgf
	_dev/format zoo metamodels/MSOfficeExcel_SpreadsheetMLSimplified metamodels/MSOfficeExcel_SpreadsheetMLSimplified
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSOfficeExcel_SpreadsheetMLStyles/grammar.bgf > zoo/metamodels/MSOfficeExcel_SpreadsheetMLStyles.bgf
	_dev/format zoo metamodels/MSOfficeExcel_SpreadsheetMLStyles metamodels/MSOfficeExcel_SpreadsheetMLStyles
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSOfficeExcel_SpreadsheetMLWorkbookProp/grammar.bgf > zoo/metamodels/MSOfficeExcel_SpreadsheetMLWorkbookProp.bgf
	_dev/format zoo metamodels/MSOfficeExcel_SpreadsheetMLWorkbookProp metamodels/MSOfficeExcel_SpreadsheetMLWorkbookProp
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSOfficeExcel_SpreadsheetMLWorksheetOpt/grammar.bgf > zoo/metamodels/MSOfficeExcel_SpreadsheetMLWorksheetOpt.bgf
	_dev/format zoo metamodels/MSOfficeExcel_SpreadsheetMLWorksheetOpt metamodels/MSOfficeExcel_SpreadsheetMLWorksheetOpt
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SyncCharts/grammar.bgf > zoo/metamodels/SyncCharts.bgf
	_dev/format zoo metamodels/SyncCharts metamodels/SyncCharts
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SysML/grammar.bgf > zoo/metamodels/SysML.bgf
	_dev/format zoo metamodels/SysML metamodels/SysML
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SDM/grammar.bgf > zoo/metamodels/SDM.bgf
	_dev/format zoo metamodels/SDM metamodels/SDM
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DeploymentReport/grammar.bgf > zoo/metamodels/DeploymentReport.bgf
	_dev/format zoo metamodels/DeploymentReport metamodels/DeploymentReport
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Table/grammar.bgf > zoo/metamodels/Table.bgf
	_dev/format zoo metamodels/Table metamodels/Table
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/TextualPathExp/grammar.bgf > zoo/metamodels/TextualPathExp.bgf
	_dev/format zoo metamodels/TextualPathExp metamodels/TextualPathExp
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Trace/grammar.bgf > zoo/metamodels/Trace.bgf
	_dev/format zoo metamodels/Trace metamodels/Trace
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/UDDI_meta-model_fragment/grammar.bgf > zoo/metamodels/UDDI_meta-model_fragment.bgf
	_dev/format zoo metamodels/UDDI_meta-model_fragment metamodels/UDDI_meta-model_fragment
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/UEML/grammar.bgf > zoo/metamodels/UEML.bgf
	_dev/format zoo metamodels/UEML metamodels/UEML
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/UEMLExtended/grammar.bgf > zoo/metamodels/UEMLExtended.bgf
	_dev/format zoo metamodels/UEMLExtended metamodels/UEMLExtended
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/UEMLExtensionCapturingAgents/grammar.bgf > zoo/metamodels/UEMLExtensionCapturingAgents.bgf
	_dev/format zoo metamodels/UEMLExtensionCapturingAgents metamodels/UEMLExtensionCapturingAgents
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/UEMLExtensionCapturingSocialEffects/grammar.bgf > zoo/metamodels/UEMLExtensionCapturingSocialEffects.bgf
	_dev/format zoo metamodels/UEMLExtensionCapturingSocialEffects metamodels/UEMLExtensionCapturingSocialEffects
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/UEMLExtensionDynamicAspects/grammar.bgf > zoo/metamodels/UEMLExtensionDynamicAspects.bgf
	_dev/format zoo metamodels/UEMLExtensionDynamicAspects metamodels/UEMLExtensionDynamicAspects
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/UEMLExtensionModelingAspects/grammar.bgf > zoo/metamodels/UEMLExtensionModelingAspects.bgf
	_dev/format zoo metamodels/UEMLExtensionModelingAspects metamodels/UEMLExtensionModelingAspects
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/USECASE1/grammar.bgf > zoo/metamodels/USECASE1.bgf
	_dev/format zoo metamodels/USECASE1 metamodels/USECASE1
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/USECASE2/grammar.bgf > zoo/metamodels/USECASE2.bgf
	_dev/format zoo metamodels/USECASE2 metamodels/USECASE2
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/UnifiedOntologyLanguage/grammar.bgf > zoo/metamodels/UnifiedOntologyLanguage.bgf
	_dev/format zoo metamodels/UnifiedOntologyLanguage metamodels/UnifiedOntologyLanguage
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/UnixFS/grammar.bgf > zoo/metamodels/UnixFS.bgf
	_dev/format zoo metamodels/UnixFS metamodels/UnixFS
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/UsiXML-task/grammar.bgf > zoo/metamodels/UsiXML-task.bgf
	_dev/format zoo metamodels/UsiXML-task metamodels/UsiXML-task
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/WSDL/grammar.bgf > zoo/metamodels/WSDL.bgf
	_dev/format zoo metamodels/WSDL metamodels/WSDL
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/WebApplications_AbstractModel/grammar.bgf > zoo/metamodels/WebApplications_AbstractModel.bgf
	_dev/format zoo metamodels/WebApplications_AbstractModel metamodels/WebApplications_AbstractModel
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/WebApplications_ConceptualModel/grammar.bgf > zoo/metamodels/WebApplications_ConceptualModel.bgf
	_dev/format zoo metamodels/WebApplications_ConceptualModel metamodels/WebApplications_ConceptualModel
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/WfMC/grammar.bgf > zoo/metamodels/WfMC.bgf
	_dev/format zoo metamodels/WfMC metamodels/WfMC
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSOfficeWord_WordprocessingMLBasicDef/grammar.bgf > zoo/metamodels/MSOfficeWord_WordprocessingMLBasicDef.bgf
	_dev/format zoo metamodels/MSOfficeWord_WordprocessingMLBasicDef metamodels/MSOfficeWord_WordprocessingMLBasicDef
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSOfficeWord_WordprocessingMLSimplified/grammar.bgf > zoo/metamodels/MSOfficeWord_WordprocessingMLSimplified.bgf
	_dev/format zoo metamodels/MSOfficeWord_WordprocessingMLSimplified metamodels/MSOfficeWord_WordprocessingMLSimplified
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSOfficeWord_WordprocessingMLStyles/grammar.bgf > zoo/metamodels/MSOfficeWord_WordprocessingMLStyles.bgf
	_dev/format zoo metamodels/MSOfficeWord_WordprocessingMLStyles metamodels/MSOfficeWord_WordprocessingMLStyles
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSOfficeWord_WordprocessingMLTableElts/grammar.bgf > zoo/metamodels/MSOfficeWord_WordprocessingMLTableElts.bgf
	_dev/format zoo metamodels/MSOfficeWord_WordprocessingMLTableElts metamodels/MSOfficeWord_WordprocessingMLTableElts
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/WorkDefinitions/grammar.bgf > zoo/metamodels/WorkDefinitions.bgf
	_dev/format zoo metamodels/WorkDefinitions metamodels/WorkDefinitions
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ASM/grammar.bgf > zoo/metamodels/ASM.bgf
	_dev/format zoo metamodels/ASM metamodels/ASM
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/XPDL-1.14/grammar.bgf > zoo/metamodels/XPDL-1.14.bgf
	_dev/format zoo metamodels/XPDL-1.14 metamodels/XPDL-1.14
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/XUL-Interactorl/grammar.bgf > zoo/metamodels/XUL-Interactorl.bgf
	_dev/format zoo metamodels/XUL-Interactorl metamodels/XUL-Interactorl
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/modula/src-052/grammar.bgf > zoo/modula/src-052.bgf
	_dev/format zoo modula/src-052 modula/src-052
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/modula/sdf/grammar.bgf > zoo/modula/sdf.bgf
	_dev/format zoo modula/sdf modula/sdf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/modula/dagenais-cordy/grammar.bgf > zoo/modula/dagenais-cordy.bgf
	_dev/format zoo modula/dagenais-cordy modula/dagenais-cordy
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/occam/srour/grammar.bgf > zoo/occam/srour.bgf
	_dev/format zoo occam/srour occam/srour
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/occam/mu-srour/grammar.bgf > zoo/occam/mu-srour.bgf
	_dev/format zoo occam/mu-srour occam/mu-srour
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/occam/mu-mitchell/grammar.bgf > zoo/occam/mu-mitchell.bgf
	_dev/format zoo occam/mu-mitchell occam/mu-mitchell
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/ocl/expressions/grammar.bgf > zoo/ocl/expressions.bgf
	_dev/format zoo ocl/expressions ocl/expressions
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/ocl/uml/grammar.bgf > zoo/ocl/uml.bgf
	_dev/format zoo ocl/uml ocl/uml
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/ocl/operations/grammar.bgf > zoo/ocl/operations.bgf
	_dev/format zoo ocl/operations ocl/operations
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/ocl/types/grammar.bgf > zoo/ocl/types.bgf
	_dev/format zoo ocl/types ocl/types
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/ocl/values/grammar.bgf > zoo/ocl/values.bgf
	_dev/format zoo ocl/values ocl/values
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/odf/opendoc-1.0/grammar.bgf > zoo/odf/opendoc-1.0.bgf
	_dev/format zoo odf/opendoc-1.0 odf/opendoc-1.0
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/odf/opendoc-1.0-strict/grammar.bgf > zoo/odf/opendoc-1.0-strict.bgf
	_dev/format zoo odf/opendoc-1.0-strict odf/opendoc-1.0-strict
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/odf/opendoc-1.0-manifest/grammar.bgf > zoo/odf/opendoc-1.0-manifest.bgf
	_dev/format zoo odf/opendoc-1.0-manifest odf/opendoc-1.0-manifest
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/odf/opendoc-1.1/grammar.bgf > zoo/odf/opendoc-1.1.bgf
	_dev/format zoo odf/opendoc-1.1 odf/opendoc-1.1
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/odf/opendoc-1.1-strict/grammar.bgf > zoo/odf/opendoc-1.1-strict.bgf
	_dev/format zoo odf/opendoc-1.1-strict odf/opendoc-1.1-strict
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/odf/opendoc-1.1-manifest/grammar.bgf > zoo/odf/opendoc-1.1-manifest.bgf
	_dev/format zoo odf/opendoc-1.1-manifest odf/opendoc-1.1-manifest
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/odf/opendoc-1.2/grammar.bgf > zoo/odf/opendoc-1.2.bgf
	_dev/format zoo odf/opendoc-1.2 odf/opendoc-1.2
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/odf/opendoc-1.2-manifest/grammar.bgf > zoo/odf/opendoc-1.2-manifest.bgf
	_dev/format zoo odf/opendoc-1.2-manifest odf/opendoc-1.2-manifest
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/odf/opendoc-1.2-dsig/grammar.bgf > zoo/odf/opendoc-1.2-dsig.bgf
	_dev/format zoo odf/opendoc-1.2-dsig odf/opendoc-1.2-dsig
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pascal/delphi/grammar.bgf > zoo/pascal/delphi.bgf
	_dev/format zoo pascal/delphi pascal/delphi
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pascal/delphipp/grammar.bgf > zoo/pascal/delphipp.bgf
	_dev/format zoo pascal/delphipp pascal/delphipp
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pascal/object/grammar.bgf > zoo/pascal/object.bgf
	_dev/format zoo pascal/object pascal/object
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pascal/bruneliere/grammar.bgf > zoo/pascal/bruneliere.bgf
	_dev/format zoo pascal/bruneliere pascal/bruneliere
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/php/cordy/grammar.bgf > zoo/php/cordy.bgf
	_dev/format zoo php/cordy php/cordy
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pico/sdf/grammar.bgf > zoo/pico/sdf.bgf
	_dev/format zoo pico/sdf pico/sdf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pico/rascal/grammar.bgf > zoo/pico/rascal.bgf
	_dev/format zoo pico/rascal pico/rascal
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pl1/bruneliere/grammar.bgf > zoo/pl1/bruneliere.bgf
	_dev/format zoo pl1/bruneliere pl1/bruneliere
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/python/indent-cordy/grammar.bgf > zoo/python/indent-cordy.bgf
	_dev/format zoo python/indent-cordy python/indent-cordy
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/python/sorochan-cordy/grammar.bgf > zoo/python/sorochan-cordy.bgf
	_dev/format zoo python/sorochan-cordy python/sorochan-cordy
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/saf/abstract/grammar.bgf > zoo/saf/abstract.bgf
	_dev/format zoo saf/abstract saf/abstract
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/saf/concrete/grammar.bgf > zoo/saf/concrete.bgf
	_dev/format zoo saf/concrete saf/concrete
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/slps/btf/grammar.bgf > zoo/slps/slps-btf.bgf
	_dev/format zoo slps/slps-btf slps/btf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/slps/edd/grammar.bgf > zoo/slps/slps-edd.bgf
	_dev/format zoo slps/slps-edd slps/edd
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/slps/exbgf/grammar.bgf > zoo/slps/slps-exbgf.bgf
	_dev/format zoo slps/slps-exbgf slps/exbgf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/slps/xbgf-xsd/grammar.bgf > zoo/slps/slps-xbgf-xsd.bgf
	_dev/format zoo slps/slps-xbgf-xsd slps/xbgf-xsd
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/slps/xbgf-adt/grammar.bgf > zoo/slps/slps-xbgf-adt.bgf
	_dev/format zoo slps/slps-xbgf-adt slps/xbgf-adt
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/slps/xldf/grammar.bgf > zoo/slps/slps-xldf.bgf
	_dev/format zoo slps/slps-xldf slps/xldf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/xbgf/xoutcome/grammar.bgf > zoo/slps/xbgf-xoutcome.bgf
	_dev/format zoo slps/xbgf-xoutcome xbgf/xoutcome
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/slps/cbgf-xsd/grammar.bgf > zoo/slps/slps-cbgf-xsd.bgf
	_dev/format zoo slps/slps-cbgf-xsd slps/cbgf-xsd
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/slps/cbgf-adt/grammar.bgf > zoo/slps/slps-cbgf-adt.bgf
	_dev/format zoo slps/slps-cbgf-adt slps/cbgf-adt
	cp ../slps/topics/grammars/bgf/v1.0-xsd/grammar.bgf zoo/slps/bgf-v1.0-xsd.bgf
	_dev/format zoo slps/bgf-v1.0-xsd bgf/v1.0-xsd
	cp ../slps/topics/grammars/bgf/v2.0-xsd/grammar.bgf zoo/slps/bgf-v2.0-xsd.bgf
	_dev/format zoo slps/bgf-v2.0-xsd bgf/v2.0-xsd
	cp ../slps/topics/grammars/bgf/v2.1-xsd/grammar.bgf zoo/slps/bgf-v2.1-xsd.bgf
	_dev/format zoo slps/bgf-v2.1-xsd bgf/v2.1-xsd
	cp ../slps/topics/grammars/bgf/v3.0-xsd/grammar.bgf zoo/slps/bgf-v3.0-xsd.bgf
	_dev/format zoo slps/bgf-v3.0-xsd bgf/v3.0-xsd
	cp ../slps/topics/grammars/bgf/v3.1-xsd/grammar.bgf zoo/slps/bgf-v3.1-xsd.bgf
	_dev/format zoo slps/bgf-v3.1-xsd bgf/v3.1-xsd
	cp ../slps/topics/grammars/bgf/v4.0-xsd/grammar.bgf zoo/slps/bgf-v4.0-xsd.bgf
	_dev/format zoo slps/bgf-v4.0-xsd bgf/v4.0-xsd
	cp ../slps/topics/grammars/bgf/v4.1-adt/grammar.bgf zoo/slps/bgf-v4.1-adt.bgf
	_dev/format zoo slps/bgf-v4.1-adt bgf/v4.1-adt
	cp ../slps/topics/grammars/bgf/v4.2-adt/grammar.bgf zoo/slps/bgf-v4.2-adt.bgf
	_dev/format zoo slps/bgf-v4.2-adt bgf/v4.2-adt
	cp ../slps/topics/grammars/bgf/v4.3-adt/grammar.bgf zoo/slps/bgf-v4.3-adt.bgf
	_dev/format zoo slps/bgf-v4.3-adt bgf/v4.3-adt
	cp ../slps/topics/grammars/bgf/v5.0-adt/grammar.bgf zoo/slps/bgf-v5.0-adt.bgf
	_dev/format zoo slps/bgf-v5.0-adt bgf/v5.0-adt
	cp ../slps/topics/grammars/bgf/v5.1-adt/grammar.bgf zoo/slps/bgf-v5.1-adt.bgf
	_dev/format zoo slps/bgf-v5.1-adt bgf/v5.1-adt
	cp ../slps/topics/grammars/bgf/v5.2-xsd/grammar.bgf zoo/slps/bgf-v5.2-xsd.bgf
	_dev/format zoo slps/bgf-v5.2-xsd bgf/v5.2-xsd
	cp ../slps/topics/grammars/bgf/v5.3-adt/grammar.bgf zoo/slps/bgf-v5.3-adt.bgf
	_dev/format zoo slps/bgf-v5.3-adt bgf/v5.3-adt
	cp ../slps/topics/grammars/bgf/v5.4-adt/grammar.bgf zoo/slps/bgf-v5.4-adt.bgf
	_dev/format zoo slps/bgf-v5.4-adt bgf/v5.4-adt
	cp ../slps/topics/grammars/ldf/Readable/grammar.bgf zoo/slps/ldf-readable.bgf
	_dev/format zoo slps/ldf-readable ldf/Readable
	cp ../slps/topics/grammars/ldf/v1.0-xsd/grammar.bgf zoo/slps/ldf-v1.0-xsd.bgf
	_dev/format zoo slps/ldf-v1.0-xsd ldf/v1.0-xsd
	cp ../slps/topics/grammars/ldf/v2.0-xsd/grammar.bgf zoo/slps/ldf-v2.0-xsd.bgf
	_dev/format zoo slps/ldf-v2.0-xsd ldf/v2.0-xsd
	cp ../slps/topics/grammars/ldf/v2.1-xsd/grammar.bgf zoo/slps/ldf-v2.1-xsd.bgf
	_dev/format zoo slps/ldf-v2.1-xsd ldf/v2.1-xsd
	cp ../slps/topics/grammars/ldf/v3.0-xsd/grammar.bgf zoo/slps/ldf-v3.0-xsd.bgf
	_dev/format zoo slps/ldf-v3.0-xsd ldf/v3.0-xsd
	cp ../slps/topics/grammars/ldf/v4.0-xsd/grammar.bgf zoo/slps/ldf-v4.0-xsd.bgf
	_dev/format zoo slps/ldf-v4.0-xsd ldf/v4.0-xsd
	cp ../slps/topics/grammars/ldf/v5.0-xsd/grammar.bgf zoo/slps/ldf-v5.0-xsd.bgf
	_dev/format zoo slps/ldf-v5.0-xsd ldf/v5.0-xsd
	cp ../slps/topics/grammars/ldf/v6.0-xsd/grammar.bgf zoo/slps/ldf-v6.0-xsd.bgf
	_dev/format zoo slps/ldf-v6.0-xsd ldf/v6.0-xsd
	cp ../slps/topics/grammars/ldf/v7.0-xsd/grammar.bgf zoo/slps/ldf-v7.0-xsd.bgf
	_dev/format zoo slps/ldf-v7.0-xsd ldf/v7.0-xsd
	cp ../slps/topics/grammars/ldf/v7.1-xsd/grammar.bgf zoo/slps/ldf-v7.1-xsd.bgf
	_dev/format zoo slps/ldf-v7.1-xsd ldf/v7.1-xsd
	cp ../slps/topics/grammars/ldf/v8.0-xsd/grammar.bgf zoo/slps/ldf-v8.0-xsd.bgf
	_dev/format zoo slps/ldf-v8.0-xsd ldf/v8.0-xsd
	cp ../slps/topics/grammars/ldf/v8.1-xsd/grammar.bgf zoo/slps/ldf-v8.1-xsd.bgf
	_dev/format zoo slps/ldf-v8.1-xsd ldf/v8.1-xsd
	cp ../slps/topics/grammars/ldf/v9.0-xsd/grammar.bgf zoo/slps/ldf-v9.0-xsd.bgf
	_dev/format zoo slps/ldf-v9.0-xsd ldf/v9.0-xsd
	cp ../slps/topics/grammars/ldf/v9.1-xsd/grammar.bgf zoo/slps/ldf-v9.1-xsd.bgf
	_dev/format zoo slps/ldf-v9.1-xsd ldf/v9.1-xsd
	cp ../slps/topics/grammars/ldf/v10.0-xsd/grammar.bgf zoo/slps/ldf-v10.0-xsd.bgf
	_dev/format zoo slps/ldf-v10.0-xsd ldf/v10.0-xsd
	cp ../slps/topics/grammars/ldf/v11.0-xsd/grammar.bgf zoo/slps/ldf-v11.0-xsd.bgf
	_dev/format zoo slps/ldf-v11.0-xsd ldf/v11.0-xsd
	cp ../slps/topics/grammars/ldf/v11.1-xsd/grammar.bgf zoo/slps/ldf-v11.1-xsd.bgf
	_dev/format zoo slps/ldf-v11.1-xsd ldf/v11.1-xsd
	cp ../slps/topics/grammars/ldf/v11.2-xsd/grammar.bgf zoo/slps/ldf-v11.2-xsd.bgf
	_dev/format zoo slps/ldf-v11.2-xsd ldf/v11.2-xsd
	cp ../slps/topics/grammars/ldf/v12.0-xsd/grammar.bgf zoo/slps/ldf-v12.0-xsd.bgf
	_dev/format zoo slps/ldf-v12.0-xsd ldf/v12.0-xsd
	cp ../slps/topics/grammars/ldf/v13.0-xsd/grammar.bgf zoo/slps/ldf-v13.0-xsd.bgf
	_dev/format zoo slps/ldf-v13.0-xsd ldf/v13.0-xsd
	cp ../slps/topics/grammars/ldf/v13.1-xsd/grammar.bgf zoo/slps/ldf-v13.1-xsd.bgf
	_dev/format zoo slps/ldf-v13.1-xsd ldf/v13.1-xsd
	cp ../slps/topics/grammars/ldf/v14.0-xsd/grammar.bgf zoo/slps/ldf-v14.0-xsd.bgf
	_dev/format zoo slps/ldf-v14.0-xsd ldf/v14.0-xsd
	cp ../slps/topics/grammars/ldf/v15.0-xsd/grammar.bgf zoo/slps/ldf-v15.0-xsd.bgf
	_dev/format zoo slps/ldf-v15.0-xsd ldf/v15.0-xsd
	cp ../slps/topics/grammars/ldf/v15.1-xsd/grammar.bgf zoo/slps/ldf-v15.1-xsd.bgf
	_dev/format zoo slps/ldf-v15.1-xsd ldf/v15.1-xsd
	cp ../slps/topics/grammars/ldf/v16.0-xsd/grammar.bgf zoo/slps/ldf-v16.0-xsd.bgf
	_dev/format zoo slps/ldf-v16.0-xsd ldf/v16.0-xsd
	cp ../slps/topics/grammars/ldf/v17.0-xsd/grammar.bgf zoo/slps/ldf-v17.0-xsd.bgf
	_dev/format zoo slps/ldf-v17.0-xsd ldf/v17.0-xsd
	cp ../slps/topics/grammars/ldf/v18.0-xsd/grammar.bgf zoo/slps/ldf-v18.0-xsd.bgf
	_dev/format zoo slps/ldf-v18.0-xsd ldf/v18.0-xsd
	cp ../slps/topics/grammars/ldf/v18.1-xsd/grammar.bgf zoo/slps/ldf-v18.1-xsd.bgf
	_dev/format zoo slps/ldf-v18.1-xsd ldf/v18.1-xsd
	cp ../slps/topics/grammars/ldf/v19.0-xsd/grammar.bgf zoo/slps/ldf-v19.0-xsd.bgf
	_dev/format zoo slps/ldf-v19.0-xsd ldf/v19.0-xsd
	cp ../slps/topics/grammars/ldf/v20.0-xsd/grammar.bgf zoo/slps/ldf-v20.0-xsd.bgf
	_dev/format zoo slps/ldf-v20.0-xsd ldf/v20.0-xsd
	cp ../slps/topics/grammars/ldf/v20.1-xsd/grammar.bgf zoo/slps/ldf-v20.1-xsd.bgf
	_dev/format zoo slps/ldf-v20.1-xsd ldf/v20.1-xsd
	cp ../slps/topics/grammars/ldf/v21.0-xsd/grammar.bgf zoo/slps/ldf-v21.0-xsd.bgf
	_dev/format zoo slps/ldf-v21.0-xsd ldf/v21.0-xsd
	cp ../slps/topics/grammars/ldf/v21.1-xsd/grammar.bgf zoo/slps/ldf-v21.1-xsd.bgf
	_dev/format zoo slps/ldf-v21.1-xsd ldf/v21.1-xsd
	cp ../slps/topics/grammars/ldf/v22.0-xsd/grammar.bgf zoo/slps/ldf-v22.0-xsd.bgf
	_dev/format zoo slps/ldf-v22.0-xsd ldf/v22.0-xsd
	cp ../slps/topics/grammars/ldf/v23.0-xsd/grammar.bgf zoo/slps/ldf-v23.0-xsd.bgf
	_dev/format zoo slps/ldf-v23.0-xsd ldf/v23.0-xsd
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/reference.bgf zoo/tescol/reference.bgf
	_dev/format zoo tescol/reference tescol/Reference
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/00000.bgf zoo/tescol/00000.bgf
	_dev/format zoo tescol/00000 tescol/00000
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/00001.bgf zoo/tescol/00001.bgf
	_dev/format zoo tescol/00001 tescol/00001
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/00010.bgf zoo/tescol/00010.bgf
	_dev/format zoo tescol/00010 tescol/00010
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/00011.bgf zoo/tescol/00011.bgf
	_dev/format zoo tescol/00011 tescol/00011
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/00100.bgf zoo/tescol/00100.bgf
	_dev/format zoo tescol/00100 tescol/00100
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/00101.bgf zoo/tescol/00101.bgf
	_dev/format zoo tescol/00101 tescol/00101
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/00110.bgf zoo/tescol/00110.bgf
	_dev/format zoo tescol/00110 tescol/00110
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/00111.bgf zoo/tescol/00111.bgf
	_dev/format zoo tescol/00111 tescol/00111
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/01000.bgf zoo/tescol/01000.bgf
	_dev/format zoo tescol/01000 tescol/01000
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/01001.bgf zoo/tescol/01001.bgf
	_dev/format zoo tescol/01001 tescol/01001
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/01010.bgf zoo/tescol/01010.bgf
	_dev/format zoo tescol/01010 tescol/01010
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/01011.bgf zoo/tescol/01011.bgf
	_dev/format zoo tescol/01011 tescol/01011
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/01100.bgf zoo/tescol/01100.bgf
	_dev/format zoo tescol/01100 tescol/01100
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/01101.bgf zoo/tescol/01101.bgf
	_dev/format zoo tescol/01101 tescol/01101
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/01110.bgf zoo/tescol/01110.bgf
	_dev/format zoo tescol/01110 tescol/01110
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/01111.bgf zoo/tescol/01111.bgf
	_dev/format zoo tescol/01111 tescol/01111
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/10000.bgf zoo/tescol/10000.bgf
	_dev/format zoo tescol/10000 tescol/10000
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/10001.bgf zoo/tescol/10001.bgf
	_dev/format zoo tescol/10001 tescol/10001
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/10010.bgf zoo/tescol/10010.bgf
	_dev/format zoo tescol/10010 tescol/10010
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/10011.bgf zoo/tescol/10011.bgf
	_dev/format zoo tescol/10011 tescol/10011
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/10100.bgf zoo/tescol/10100.bgf
	_dev/format zoo tescol/10100 tescol/10100
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/10101.bgf zoo/tescol/10101.bgf
	_dev/format zoo tescol/10101 tescol/10101
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/10110.bgf zoo/tescol/10110.bgf
	_dev/format zoo tescol/10110 tescol/10110
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/10111.bgf zoo/tescol/10111.bgf
	_dev/format zoo tescol/10111 tescol/10111
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/11000.bgf zoo/tescol/11000.bgf
	_dev/format zoo tescol/11000 tescol/11000
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/11001.bgf zoo/tescol/11001.bgf
	_dev/format zoo tescol/11001 tescol/11001
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/11010.bgf zoo/tescol/11010.bgf
	_dev/format zoo tescol/11010 tescol/11010
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/11011.bgf zoo/tescol/11011.bgf
	_dev/format zoo tescol/11011 tescol/11011
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/11100.bgf zoo/tescol/11100.bgf
	_dev/format zoo tescol/11100 tescol/11100
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/11101.bgf zoo/tescol/11101.bgf
	_dev/format zoo tescol/11101 tescol/11101
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/11110.bgf zoo/tescol/11110.bgf
	_dev/format zoo tescol/11110 tescol/11110
	cp ../slps/topics/grammars/../testing/gbtf/tests/tescol/11111.bgf zoo/tescol/11111.bgf
	_dev/format zoo tescol/11111 tescol/11111
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/uml2/grammar.bgf > zoo/uml/uml2.bgf
	_dev/format zoo uml/uml2 uml/uml2
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/stereo/grammar.bgf > zoo/uml/stereo.bgf
	_dev/format zoo uml/stereo uml/stereo
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/uml-uc/grammar.bgf > zoo/uml/uml-uc.bgf
	_dev/format zoo uml/uml-uc uml/uml-uc
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/reuse/grammar.bgf > zoo/uml/reuse.bgf
	_dev/format zoo uml/reuse uml/reuse
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/oocm/grammar.bgf > zoo/uml/oocm.bgf
	_dev/format zoo uml/oocm uml/oocm
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/fragment/grammar.bgf > zoo/uml/fragment.bgf
	_dev/format zoo uml/fragment uml/fragment
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/extended/grammar.bgf > zoo/uml/extended.bgf
	_dev/format zoo uml/extended uml/extended
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/collab/grammar.bgf > zoo/uml/collab.bgf
	_dev/format zoo uml/collab uml/collab
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/umldi-2.0/grammar.bgf > zoo/uml/umldi-2.0.bgf
	_dev/format zoo uml/umldi-2.0 uml/umldi-2.0
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/umldi-ag/grammar.bgf > zoo/uml/umldi-ag.bgf
	_dev/format zoo uml/umldi-ag uml/umldi-ag
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/umldi-c/grammar.bgf > zoo/uml/umldi-c.bgf
	_dev/format zoo uml/umldi-c uml/umldi-c
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/umldi-mm/grammar.bgf > zoo/uml/umldi-mm.bgf
	_dev/format zoo uml/umldi-mm uml/umldi-mm
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/umldi-sm/grammar.bgf > zoo/uml/umldi-sm.bgf
	_dev/format zoo uml/umldi-sm uml/umldi-sm
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/umldi-uc/grammar.bgf > zoo/uml/umldi-uc.bgf
	_dev/format zoo uml/umldi-uc uml/umldi-uc
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/simple/grammar.bgf > zoo/uml/simple.bgf
	_dev/format zoo uml/simple uml/simple
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/statecharts/grammar.bgf > zoo/uml/statecharts.bgf
	_dev/format zoo uml/statecharts uml/statecharts
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/yuml/grammar.bgf > zoo/uml/yuml.bgf
	_dev/format zoo uml/yuml uml/yuml
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/xml/rascal/grammar.bgf > zoo/xml/rascal.bgf
	_dev/format zoo xml/rascal xml/rascal
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/xml/zhang-cordy/grammar.bgf > zoo/xml/zhang-cordy.bgf
	_dev/format zoo xml/zhang-cordy xml/zhang-cordy
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/xml/rosendal/grammar.bgf > zoo/xml/rosendal.bgf
	_dev/format zoo xml/rosendal xml/rosendal
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/xpath/w3c-19991116/grammar.bgf > zoo/xpath/w3c-19991116.bgf
	_dev/format zoo xpath/w3c-19991116 xpath/w3c-19991116
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/xslt/clark/grammar.bgf > zoo/xslt/clark.bgf
	_dev/format zoo xslt/clark xslt/clark
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/xslt/rosendal/grammar.bgf > zoo/xslt/rosendal.bgf
	_dev/format zoo xslt/rosendal xslt/rosendal
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/xquery/rosendal/grammar.bgf > zoo/xquery/rosendal.bgf
	_dev/format zoo xquery/rosendal xquery/rosendal
