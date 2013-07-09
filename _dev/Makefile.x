all:
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
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/assembly/delphi/grammar.bgf > zoo/assembly/delphi.bgf
	_dev/format zoo assembly/delphi assembly/delphi
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
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/dart/google/grammar.bgf > zoo/dart/google.bgf
	_dev/format zoo dart/google dart/google
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/dart/spec-0.01/grammar.bgf > zoo/dart/spec-0.01.bgf
	_dev/format zoo dart/spec-0.01 dart/spec-0.01
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/dart/spec-0.05/grammar.bgf > zoo/dart/spec-0.05.bgf
	_dev/format zoo dart/spec-0.05 dart/spec-0.05
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
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/eiffel/bezault/grammar.bgf > zoo/eiffel/bezault.bgf
	_dev/format zoo eiffel/bezault eiffel/bezault
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/eiffel/iso-25436-2006/grammar.bgf > zoo/eiffel/iso-25436-2006.bgf
	_dev/format zoo eiffel/iso-25436-2006 eiffel/iso-25436-2006
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/eiffel/cordy/grammar.bgf > zoo/eiffel/cordy.bgf
	_dev/format zoo eiffel/cordy eiffel/cordy
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/markup/atom/grammar.bgf > zoo/markup/atom.bgf
	_dev/format zoo markup/atom markup/atom
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
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/markup/rss/grammar.bgf > zoo/markup/rss.bgf
	_dev/format zoo markup/rss markup/rss
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
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pl1/bruneliere/grammar.bgf > zoo/pl1/bruneliere.bgf
	_dev/format zoo pl1/bruneliere pl1/bruneliere
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/python/indent-cordy/grammar.bgf > zoo/python/indent-cordy.bgf
	_dev/format zoo python/indent-cordy python/indent-cordy
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/python/sorochan-cordy/grammar.bgf > zoo/python/sorochan-cordy.bgf
	_dev/format zoo python/sorochan-cordy python/sorochan-cordy
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
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/w3c/xpath1/grammar.bgf > zoo/xpath/w3c-xpath1.bgf
	_dev/format zoo xpath/w3c-xpath1 w3c/xpath1
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/xslt/clark/grammar.bgf > zoo/xslt/clark.bgf
	_dev/format zoo xslt/clark xslt/clark
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/xslt/rosendal/grammar.bgf > zoo/xslt/rosendal.bgf
	_dev/format zoo xslt/rosendal xslt/rosendal
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/xquery/rosendal/grammar.bgf > zoo/xquery/rosendal.bgf
	_dev/format zoo xquery/rosendal xquery/rosendal
