all:
	rm -rf zoo/bulk*
	mkdir zoo/bulk/
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/hats/abs/grammar.bgf > zoo/hats/abs.bgf
	cp zoo/hats/abs.bgf zoo/bulk/hats-abs.bgf
	_dev/format zoo hats/abs hats/abs
	cp zoo/hats/abs.bnf zoo/bulk/hats-abs.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/ada/kempe/grammar.bgf > zoo/ada/kempe.bgf
	cp zoo/ada/kempe.bgf zoo/bulk/ada-kempe.bgf
	_dev/format zoo ada/kempe ada/kempe
	cp zoo/ada/kempe.bnf zoo/bulk/ada-kempe.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/ada/laemmel-verhoef/grammar.bgf > zoo/ada/laemmel-verhoef.bgf
	cp zoo/ada/laemmel-verhoef.bgf zoo/bulk/ada-laemmel-verhoef.bgf
	_dev/format zoo ada/laemmel-verhoef ada/laemmel-verhoef
	cp zoo/ada/laemmel-verhoef.bnf zoo/bulk/ada-laemmel-verhoef.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/ada/lncs-2219/grammar.bgf > zoo/ada/lncs-2219.bgf
	cp zoo/ada/lncs-2219.bgf zoo/bulk/ada-lncs-2219.bgf
	_dev/format zoo ada/lncs-2219 ada/lncs-2219
	cp zoo/ada/lncs-2219.bnf zoo/bulk/ada-lncs-2219.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/ada/kellogg/grammar.bgf > zoo/ada/kellogg.bgf
	cp zoo/ada/kellogg.bgf zoo/bulk/ada-kellogg.bgf
	_dev/format zoo ada/kellogg ada/kellogg
	cp zoo/ada/kellogg.bnf zoo/bulk/ada-kellogg.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/ada/lncs-4348/grammar.bgf > zoo/ada/lncs-4348.bgf
	cp zoo/ada/lncs-4348.bgf zoo/bulk/ada-lncs-4348.bgf
	_dev/format zoo ada/lncs-4348 ada/lncs-4348
	cp zoo/ada/lncs-4348.bnf zoo/bulk/ada-lncs-4348.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/ada/cordy-hyaric/grammar.bgf > zoo/ada/cordy-hyaric.bgf
	cp zoo/ada/cordy-hyaric.bgf zoo/bulk/ada-cordy-hyaric.bgf
	_dev/format zoo ada/cordy-hyaric ada/cordy-hyaric
	cp zoo/ada/cordy-hyaric.bnf zoo/bulk/ada-cordy-hyaric.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/api2mol/abstract/grammar.bgf > zoo/api2mol/abstract.bgf
	cp zoo/api2mol/abstract.bgf zoo/bulk/api2mol-abstract.bgf
	_dev/format zoo api2mol/abstract api2mol/abstract
	cp zoo/api2mol/abstract.bnf zoo/bulk/api2mol-abstract.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/api2mol/concrete/grammar.bgf > zoo/api2mol/concrete.bgf
	cp zoo/api2mol/concrete.bgf zoo/bulk/api2mol-concrete.bgf
	_dev/format zoo api2mol/concrete api2mol/concrete
	cp zoo/api2mol/concrete.bnf zoo/bulk/api2mol-concrete.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/assembly/delphi/grammar.bgf > zoo/assembly/delphi.bgf
	cp zoo/assembly/delphi.bgf zoo/bulk/assembly-delphi.bgf
	_dev/format zoo assembly/delphi assembly/delphi
	cp zoo/assembly/delphi.bnf zoo/bulk/assembly-delphi.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/awk/bruneliere/grammar.bgf > zoo/awk/bruneliere.bgf
	cp zoo/awk/bruneliere.bgf zoo/bulk/awk-bruneliere.bgf
	_dev/format zoo awk/bruneliere awk/bruneliere
	cp zoo/awk/bruneliere.bnf zoo/bulk/awk-bruneliere.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/basic/vb6-cordy/grammar.bgf > zoo/basic/vb6-cordy.bgf
	cp zoo/basic/vb6-cordy.bgf zoo/bulk/basic-vb6-cordy.bgf
	_dev/format zoo basic/vb6-cordy basic/vb6-cordy
	cp zoo/basic/vb6-cordy.bnf zoo/bulk/basic-vb6-cordy.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/basic/vb-glineur/grammar.bgf > zoo/basic/vb-glineur.bgf
	cp zoo/basic/vb-glineur.bgf zoo/bulk/basic-vb-glineur.bgf
	_dev/format zoo basic/vb-glineur basic/vb-glineur
	cp zoo/basic/vb-glineur.bnf zoo/bulk/basic-vb-glineur.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/bibtex/bibtex-1/grammar.bgf > zoo/bibtex/bibtex-1.bgf
	cp zoo/bibtex/bibtex-1.bgf zoo/bulk/bibtex-bibtex-1.bgf
	_dev/format zoo bibtex/bibtex-1 bibtex/bibtex-1
	cp zoo/bibtex/bibtex-1.bnf zoo/bulk/bibtex-bibtex-1.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/bibtex/bibtex-1.1/grammar.bgf > zoo/bibtex/bibtex-1.1.bgf
	cp zoo/bibtex/bibtex-1.1.bgf zoo/bulk/bibtex-bibtex-1.1.bgf
	_dev/format zoo bibtex/bibtex-1.1 bibtex/bibtex-1.1
	cp zoo/bibtex/bibtex-1.1.bnf zoo/bulk/bibtex-bibtex-1.1.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/bibtex/bibtex-1.2/grammar.bgf > zoo/bibtex/bibtex-1.2.bgf
	cp zoo/bibtex/bibtex-1.2.bgf zoo/bulk/bibtex-bibtex-1.2.bgf
	_dev/format zoo bibtex/bibtex-1.2 bibtex/bibtex-1.2
	cp zoo/bibtex/bibtex-1.2.bnf zoo/bulk/bibtex-bibtex-1.2.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/bibtex/bql/grammar.bgf > zoo/bibtex/bql.bgf
	cp zoo/bibtex/bql.bgf zoo/bulk/bibtex-bql.bgf
	_dev/format zoo bibtex/bql bibtex/bql
	cp zoo/bibtex/bql.bnf zoo/bulk/bibtex-bql.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/c/ansi-sdf/grammar.bgf > zoo/c/ansi-sdf.bgf
	cp zoo/c/ansi-sdf.bgf zoo/bulk/c-ansi-sdf.bgf
	_dev/format zoo c/ansi-sdf c/ansi-sdf
	cp zoo/c/ansi-sdf.bnf zoo/bulk/c-ansi-sdf.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/c/lankamp/grammar.bgf > zoo/c/lankamp.bgf
	cp zoo/c/lankamp.bgf zoo/bulk/c-lankamp.bgf
	_dev/format zoo c/lankamp c/lankamp
	cp zoo/c/lankamp.bnf zoo/bulk/c-lankamp.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/c/iso-9899-1999/grammar.bgf > zoo/c/iso-9899-1999.bgf
	cp zoo/c/iso-9899-1999.bgf zoo/bulk/c-iso-9899-1999.bgf
	_dev/format zoo c/iso-9899-1999 c/iso-9899-1999
	cp zoo/c/iso-9899-1999.bnf zoo/bulk/c-iso-9899-1999.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/c/iso-9899-tc2/grammar.bgf > zoo/c/iso-9899-tc2.bgf
	cp zoo/c/iso-9899-tc2.bgf zoo/bulk/c-iso-9899-tc2.bgf
	_dev/format zoo c/iso-9899-tc2 c/iso-9899-tc2
	cp zoo/c/iso-9899-tc2.bnf zoo/bulk/c-iso-9899-tc2.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/c/iso-9899-tc3/grammar.bgf > zoo/c/iso-9899-tc3.bgf
	cp zoo/c/iso-9899-tc3.bgf zoo/bulk/c-iso-9899-tc3.bgf
	_dev/format zoo c/iso-9899-tc3 c/iso-9899-tc3
	cp zoo/c/iso-9899-tc3.bnf zoo/bulk/c-iso-9899-tc3.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/c/cordy-malton/grammar.bgf > zoo/c/cordy-malton.bgf
	cp zoo/c/cordy-malton.bgf zoo/bulk/c-cordy-malton.bgf
	_dev/format zoo c/cordy-malton c/cordy-malton
	cp zoo/c/cordy-malton.bnf zoo/bulk/c-cordy-malton.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/c/malton-dahn/grammar.bgf > zoo/c/malton-dahn.bgf
	cp zoo/c/malton-dahn.bgf zoo/bulk/c-malton-dahn.bgf
	_dev/format zoo c/malton-dahn c/malton-dahn
	cp zoo/c/malton-dahn.bnf zoo/bulk/c-malton-dahn.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/c/cordy-malton-dahn/grammar.bgf > zoo/c/cordy-malton-dahn.bgf
	cp zoo/c/cordy-malton-dahn.bgf zoo/bulk/c-cordy-malton-dahn.bgf
	_dev/format zoo c/cordy-malton-dahn c/cordy-malton-dahn
	cp zoo/c/cordy-malton-dahn.bnf zoo/bulk/c-cordy-malton-dahn.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/c/antoniol/grammar.bgf > zoo/c/antoniol.bgf
	cp zoo/c/antoniol.bgf zoo/bulk/c-antoniol.bgf
	_dev/format zoo c/antoniol c/antoniol
	cp zoo/c/antoniol.bnf zoo/bulk/c-antoniol.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/c/bruneliere/grammar.bgf > zoo/c/bruneliere.bgf
	cp zoo/c/bruneliere.bgf zoo/bulk/c-bruneliere.bgf
	_dev/format zoo c/bruneliere c/bruneliere
	cp zoo/c/bruneliere.bnf zoo/bulk/c-bruneliere.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/cpp/iso-14882-1998/grammar.bgf > zoo/cpp/iso-14882-1998.bgf
	cp zoo/cpp/iso-14882-1998.bgf zoo/bulk/cpp-iso-14882-1998.bgf
	_dev/format zoo cpp/iso-14882-1998 cpp/iso-14882-1998
	cp zoo/cpp/iso-14882-1998.bnf zoo/bulk/cpp-iso-14882-1998.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/cpp/iso-n2723/grammar.bgf > zoo/cpp/iso-n2723.bgf
	cp zoo/cpp/iso-n2723.bgf zoo/bulk/cpp-iso-n2723.bgf
	_dev/format zoo cpp/iso-n2723 cpp/iso-n2723
	cp zoo/cpp/iso-n2723.bnf zoo/bulk/cpp-iso-n2723.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/cpp/elges-cordy/grammar.bgf > zoo/cpp/elges-cordy.bgf
	cp zoo/cpp/elges-cordy.bgf zoo/bulk/cpp-elges-cordy.bgf
	_dev/format zoo cpp/elges-cordy cpp/elges-cordy
	cp zoo/cpp/elges-cordy.bnf zoo/bulk/cpp-elges-cordy.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/cpp/bruneliere/grammar.bgf > zoo/cpp/bruneliere.bgf
	cp zoo/cpp/bruneliere.bgf zoo/bulk/cpp-bruneliere.bgf
	_dev/format zoo cpp/bruneliere cpp/bruneliere
	cp zoo/cpp/bruneliere.bnf zoo/bulk/cpp-bruneliere.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csharp/ecma-334-1/grammar.bgf > zoo/cs/csharp-ecma-334-1.bgf
	cp zoo/cs/csharp-ecma-334-1.bgf zoo/bulk/cs-csharp-ecma-334-1.bgf
	_dev/format zoo cs/csharp-ecma-334-1 csharp/ecma-334-1
	cp zoo/cs/csharp-ecma-334-1.bnf zoo/bulk/cs-csharp-ecma-334-1.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csharp/ecma-334-2/grammar.bgf > zoo/cs/csharp-ecma-334-2.bgf
	cp zoo/cs/csharp-ecma-334-2.bgf zoo/bulk/cs-csharp-ecma-334-2.bgf
	_dev/format zoo cs/csharp-ecma-334-2 csharp/ecma-334-2
	cp zoo/cs/csharp-ecma-334-2.bnf zoo/bulk/cs-csharp-ecma-334-2.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csharp/zaytsev/grammar.bgf > zoo/cs/csharp-zaytsev.bgf
	cp zoo/cs/csharp-zaytsev.bgf zoo/bulk/cs-csharp-zaytsev.bgf
	_dev/format zoo cs/csharp-zaytsev csharp/zaytsev
	cp zoo/cs/csharp-zaytsev.bnf zoo/bulk/cs-csharp-zaytsev.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csharp/iso-23270-2003/grammar.bgf > zoo/cs/csharp-iso-23270-2003.bgf
	cp zoo/cs/csharp-iso-23270-2003.bgf zoo/bulk/cs-csharp-iso-23270-2003.bgf
	_dev/format zoo cs/csharp-iso-23270-2003 csharp/iso-23270-2003
	cp zoo/cs/csharp-iso-23270-2003.bnf zoo/bulk/cs-csharp-iso-23270-2003.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csharp/msft-ls-1.0/grammar.bgf > zoo/cs/csharp-msft-ls-1.0.bgf
	cp zoo/cs/csharp-msft-ls-1.0.bgf zoo/bulk/cs-csharp-msft-ls-1.0.bgf
	_dev/format zoo cs/csharp-msft-ls-1.0 csharp/msft-ls-1.0
	cp zoo/cs/csharp-msft-ls-1.0.bnf zoo/bulk/cs-csharp-msft-ls-1.0.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csharp/msft-ls-1.2/grammar.bgf > zoo/cs/csharp-msft-ls-1.2.bgf
	cp zoo/cs/csharp-msft-ls-1.2.bgf zoo/bulk/cs-csharp-msft-ls-1.2.bgf
	_dev/format zoo cs/csharp-msft-ls-1.2 csharp/msft-ls-1.2
	cp zoo/cs/csharp-msft-ls-1.2.bnf zoo/bulk/cs-csharp-msft-ls-1.2.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csharp/ecma-334-3/grammar.bgf > zoo/cs/csharp-ecma-334-3.bgf
	cp zoo/cs/csharp-ecma-334-3.bgf zoo/bulk/cs-csharp-ecma-334-3.bgf
	_dev/format zoo cs/csharp-ecma-334-3 csharp/ecma-334-3
	cp zoo/cs/csharp-ecma-334-3.bnf zoo/bulk/cs-csharp-ecma-334-3.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csharp/ecma-334-4/grammar.bgf > zoo/cs/csharp-ecma-334-4.bgf
	cp zoo/cs/csharp-ecma-334-4.bgf zoo/bulk/cs-csharp-ecma-334-4.bgf
	_dev/format zoo cs/csharp-ecma-334-4 csharp/ecma-334-4
	cp zoo/cs/csharp-ecma-334-4.bnf zoo/bulk/cs-csharp-ecma-334-4.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csharp/iso-23270-2006/grammar.bgf > zoo/cs/csharp-iso-23270-2006.bgf
	cp zoo/cs/csharp-iso-23270-2006.bgf zoo/bulk/cs-csharp-iso-23270-2006.bgf
	_dev/format zoo cs/csharp-iso-23270-2006 csharp/iso-23270-2006
	cp zoo/cs/csharp-iso-23270-2006.bnf zoo/bulk/cs-csharp-iso-23270-2006.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csharp/msft-ls-3.0/grammar.bgf > zoo/cs/csharp-msft-ls-3.0.bgf
	cp zoo/cs/csharp-msft-ls-3.0.bgf zoo/bulk/cs-csharp-msft-ls-3.0.bgf
	_dev/format zoo cs/csharp-msft-ls-3.0 csharp/msft-ls-3.0
	cp zoo/cs/csharp-msft-ls-3.0.bnf zoo/bulk/cs-csharp-msft-ls-3.0.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csharp/cordy/grammar.bgf > zoo/cs/csharp-cordy.bgf
	cp zoo/cs/csharp-cordy.bgf zoo/bulk/cs-csharp-cordy.bgf
	_dev/format zoo cs/csharp-cordy csharp/cordy
	cp zoo/cs/csharp-cordy.bnf zoo/bulk/cs-csharp-cordy.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csharp/antoniol/grammar.bgf > zoo/cs/csharp-antoniol.bgf
	cp zoo/cs/csharp-antoniol.bgf zoo/bulk/cs-csharp-antoniol.bgf
	_dev/format zoo cs/csharp-antoniol csharp/antoniol
	cp zoo/cs/csharp-antoniol.bnf zoo/bulk/cs-csharp-antoniol.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csharp/msft-ls-4.0/grammar.bgf > zoo/cs/csharp-msft-ls-4.0.bgf
	cp zoo/cs/csharp-msft-ls-4.0.bgf zoo/bulk/cs-csharp-msft-ls-4.0.bgf
	_dev/format zoo cs/csharp-msft-ls-4.0 csharp/msft-ls-4.0
	cp zoo/cs/csharp-msft-ls-4.0.bnf zoo/bulk/cs-csharp-msft-ls-4.0.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csharp/bruneliere/grammar.bgf > zoo/cs/csharp-bruneliere.bgf
	cp zoo/cs/csharp-bruneliere.bgf zoo/bulk/cs-csharp-bruneliere.bgf
	_dev/format zoo cs/csharp-bruneliere csharp/bruneliere
	cp zoo/cs/csharp-bruneliere.bnf zoo/bulk/cs-csharp-bruneliere.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/conf/cocus/grammar.bgf > zoo/conf/cocus.bgf
	cp zoo/conf/cocus.bgf zoo/bulk/conf-cocus.bgf
	_dev/format zoo conf/cocus conf/cocus
	cp zoo/conf/cocus.bnf zoo/bulk/conf-cocus.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/conf/conferencereview/grammar.bgf > zoo/conf/conferencereview.bgf
	cp zoo/conf/conferencereview.bgf zoo/bulk/conf-conferencereview.bgf
	_dev/format zoo conf/conferencereview conf/conferencereview
	cp zoo/conf/conferencereview.bnf zoo/bulk/conf-conferencereview.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/conf/conftool/grammar.bgf > zoo/conf/conftool.bgf
	cp zoo/conf/conftool.bgf zoo/bulk/conf-conftool.bgf
	_dev/format zoo conf/conftool conf/conftool
	cp zoo/conf/conftool.bnf zoo/bulk/conf-conftool.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/conf/confious/grammar.bgf > zoo/conf/confious.bgf
	cp zoo/conf/confious.bgf zoo/bulk/conf-confious.bgf
	_dev/format zoo conf/confious conf/confious
	cp zoo/conf/confious.bnf zoo/bulk/conf-confious.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/conf/edas/grammar.bgf > zoo/conf/edas.bgf
	cp zoo/conf/edas.bgf zoo/bulk/conf-edas.bgf
	_dev/format zoo conf/edas conf/edas
	cp zoo/conf/edas.bnf zoo/bulk/conf-edas.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/conf/ekaw/grammar.bgf > zoo/conf/ekaw.bgf
	cp zoo/conf/ekaw.bgf zoo/bulk/conf-ekaw.bgf
	_dev/format zoo conf/ekaw conf/ekaw
	cp zoo/conf/ekaw.bnf zoo/bulk/conf-ekaw.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/conf/iasted/grammar.bgf > zoo/conf/iasted.bgf
	cp zoo/conf/iasted.bgf zoo/bulk/conf-iasted.bgf
	_dev/format zoo conf/iasted conf/iasted
	cp zoo/conf/iasted.bnf zoo/bulk/conf-iasted.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/conf/microarch/grammar.bgf > zoo/conf/microarch.bgf
	cp zoo/conf/microarch.bgf zoo/bulk/conf-microarch.bgf
	_dev/format zoo conf/microarch conf/microarch
	cp zoo/conf/microarch.bnf zoo/bulk/conf-microarch.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/conf/cmt/grammar.bgf > zoo/conf/cmt.bgf
	cp zoo/conf/cmt.bgf zoo/bulk/conf-cmt.bgf
	_dev/format zoo conf/cmt conf/cmt
	cp zoo/conf/cmt.bnf zoo/bulk/conf-cmt.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/conf/paperdyne/grammar.bgf > zoo/conf/paperdyne.bgf
	cp zoo/conf/paperdyne.bgf zoo/bulk/conf-paperdyne.bgf
	_dev/format zoo conf/paperdyne conf/paperdyne
	cp zoo/conf/paperdyne.bnf zoo/bulk/conf-paperdyne.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/conf/precisionconference/grammar.bgf > zoo/conf/precisionconference.bgf
	cp zoo/conf/precisionconference.bgf zoo/bulk/conf-precisionconference.bgf
	_dev/format zoo conf/precisionconference conf/precisionconference
	cp zoo/conf/precisionconference.bnf zoo/bulk/conf-precisionconference.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/conf/sigkdd/grammar.bgf > zoo/conf/sigkdd.bgf
	cp zoo/conf/sigkdd.bgf zoo/bulk/conf-sigkdd.bgf
	_dev/format zoo conf/sigkdd conf/sigkdd
	cp zoo/conf/sigkdd.bnf zoo/bulk/conf-sigkdd.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/conf/sofsem/grammar.bgf > zoo/conf/sofsem.bgf
	cp zoo/conf/sofsem.bgf zoo/bulk/conf-sofsem.bgf
	_dev/format zoo conf/sofsem conf/sofsem
	cp zoo/conf/sofsem.bnf zoo/bulk/conf-sofsem.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/conf/zakongroup/grammar.bgf > zoo/conf/zakongroup.bgf
	cp zoo/conf/zakongroup.bgf zoo/bulk/conf-zakongroup.bgf
	_dev/format zoo conf/zakongroup conf/zakongroup
	cp zoo/conf/zakongroup.bnf zoo/bulk/conf-zakongroup.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/dart/google/grammar.bgf > zoo/dart/google.bgf
	cp zoo/dart/google.bgf zoo/bulk/dart-google.bgf
	_dev/format zoo dart/google dart/google
	cp zoo/dart/google.bnf zoo/bulk/dart-google.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/dart/spec-0.01/grammar.bgf > zoo/dart/spec-0.01.bgf
	cp zoo/dart/spec-0.01.bgf zoo/bulk/dart-spec-0.01.bgf
	_dev/format zoo dart/spec-0.01 dart/spec-0.01
	cp zoo/dart/spec-0.01.bnf zoo/bulk/dart-spec-0.01.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/dart/spec-0.05/grammar.bgf > zoo/dart/spec-0.05.bgf
	cp zoo/dart/spec-0.05.bgf zoo/bulk/dart-spec-0.05.bgf
	_dev/format zoo dart/spec-0.05 dart/spec-0.05
	cp zoo/dart/spec-0.05.bnf zoo/bulk/dart-spec-0.05.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/develop/ant-ruchaud-brunel/grammar.bgf > zoo/develop/ant-ruchaud-brunel.bgf
	cp zoo/develop/ant-ruchaud-brunel.bgf zoo/bulk/develop-ant-ruchaud-brunel.bgf
	_dev/format zoo develop/ant-ruchaud-brunel develop/ant-ruchaud-brunel
	cp zoo/develop/ant-ruchaud-brunel.bnf zoo/bulk/develop-ant-ruchaud-brunel.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/develop/ant-bruneliere/grammar.bgf > zoo/develop/ant-bruneliere.bgf
	cp zoo/develop/ant-bruneliere.bgf zoo/bulk/develop-ant-bruneliere.bgf
	_dev/format zoo develop/ant-bruneliere develop/ant-bruneliere
	cp zoo/develop/ant-bruneliere.bnf zoo/bulk/develop-ant-bruneliere.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/develop/bugzilla/grammar.bgf > zoo/develop/bugzilla.bgf
	cp zoo/develop/bugzilla.bgf zoo/bulk/develop-bugzilla.bgf
	_dev/format zoo develop/bugzilla develop/bugzilla
	cp zoo/develop/bugzilla.bnf zoo/bulk/develop-bugzilla.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/develop/make/grammar.bgf > zoo/develop/make.bgf
	cp zoo/develop/make.bgf zoo/bulk/develop-make.bgf
	_dev/format zoo develop/make develop/make
	cp zoo/develop/make.bnf zoo/bulk/develop-make.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/develop/mantis/grammar.bgf > zoo/develop/mantis.bgf
	cp zoo/develop/mantis.bgf zoo/bulk/develop-mantis.bgf
	_dev/format zoo develop/mantis develop/mantis
	cp zoo/develop/mantis.bnf zoo/bulk/develop-mantis.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/develop/maven-maven/grammar.bgf > zoo/develop/maven-maven.bgf
	cp zoo/develop/maven-maven.bgf zoo/bulk/develop-maven-maven.bgf
	_dev/format zoo develop/maven-maven develop/maven-maven
	cp zoo/develop/maven-maven.bnf zoo/bulk/develop-maven-maven.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/develop/maven-project/grammar.bgf > zoo/develop/maven-project.bgf
	cp zoo/develop/maven-project.bgf zoo/bulk/develop-maven-project.bgf
	_dev/format zoo develop/maven-project develop/maven-project
	cp zoo/develop/maven-project.bnf zoo/bulk/develop-maven-project.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/develop/java-project/grammar.bgf > zoo/develop/java-project.bgf
	cp zoo/develop/java-project.bgf zoo/bulk/develop-java-project.bgf
	_dev/format zoo develop/java-project develop/java-project
	cp zoo/develop/java-project.bnf zoo/bulk/develop-java-project.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/develop/microsoft-project-bruneliere/grammar.bgf > zoo/develop/microsoft-project-bruneliere.bgf
	cp zoo/develop/microsoft-project-bruneliere.bgf zoo/bulk/develop-microsoft-project-bruneliere.bgf
	_dev/format zoo develop/microsoft-project-bruneliere develop/microsoft-project-bruneliere
	cp zoo/develop/microsoft-project-bruneliere.bnf zoo/bulk/develop-microsoft-project-bruneliere.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/develop/microsoft-project-touzet/grammar.bgf > zoo/develop/microsoft-project-touzet.bgf
	cp zoo/develop/microsoft-project-touzet.bgf zoo/bulk/develop-microsoft-project-touzet.bgf
	_dev/format zoo develop/microsoft-project-touzet develop/microsoft-project-touzet
	cp zoo/develop/microsoft-project-touzet.bnf zoo/bulk/develop-microsoft-project-touzet.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/dot/palies/grammar.bgf > zoo/dot/palies.bgf
	cp zoo/dot/palies.bgf zoo/bulk/dot-palies.bgf
	_dev/format zoo dot/palies dot/palies
	cp zoo/dot/palies.bnf zoo/bulk/dot-palies.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/dot/doux/grammar.bgf > zoo/dot/doux.bgf
	cp zoo/dot/doux.bgf zoo/bulk/dot-doux.bgf
	_dev/format zoo dot/doux dot/doux
	cp zoo/dot/doux.bnf zoo/bulk/dot-doux.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/dot/rascal-abstract/grammar.bgf > zoo/dot/rascal-abstract.bgf
	cp zoo/dot/rascal-abstract.bgf zoo/bulk/dot-rascal-abstract.bgf
	_dev/format zoo dot/rascal-abstract dot/rascal-abstract
	cp zoo/dot/rascal-abstract.bnf zoo/bulk/dot-rascal-abstract.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/dot/rascal-concrete/grammar.bgf > zoo/dot/rascal-concrete.bgf
	cp zoo/dot/rascal-concrete.bgf zoo/bulk/dot-rascal-concrete.bgf
	_dev/format zoo dot/rascal-concrete dot/rascal-concrete
	cp zoo/dot/rascal-concrete.bnf zoo/bulk/dot-rascal-concrete.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/dot/rascal-comment/grammar.bgf > zoo/dot/rascal-comment.bgf
	cp zoo/dot/rascal-comment.bgf zoo/bulk/dot-rascal-comment.bgf
	_dev/format zoo dot/rascal-comment dot/rascal-comment
	cp zoo/dot/rascal-comment.bnf zoo/bulk/dot-rascal-comment.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/eiffel/bezault/grammar.bgf > zoo/eiffel/bezault.bgf
	cp zoo/eiffel/bezault.bgf zoo/bulk/eiffel-bezault.bgf
	_dev/format zoo eiffel/bezault eiffel/bezault
	cp zoo/eiffel/bezault.bnf zoo/bulk/eiffel-bezault.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/eiffel/iso-25436-2006/grammar.bgf > zoo/eiffel/iso-25436-2006.bgf
	cp zoo/eiffel/iso-25436-2006.bgf zoo/bulk/eiffel-iso-25436-2006.bgf
	_dev/format zoo eiffel/iso-25436-2006 eiffel/iso-25436-2006
	cp zoo/eiffel/iso-25436-2006.bnf zoo/bulk/eiffel-iso-25436-2006.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/eiffel/cordy/grammar.bgf > zoo/eiffel/cordy.bgf
	cp zoo/eiffel/cordy.bgf zoo/bulk/eiffel-cordy.bgf
	_dev/format zoo eiffel/cordy eiffel/cordy
	cp zoo/eiffel/cordy.bnf zoo/bulk/eiffel-cordy.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/fl/antlr/grammar.bgf > zoo/fl/antlr.bgf
	cp zoo/fl/antlr.bgf zoo/bulk/fl-antlr.bgf
	_dev/format zoo fl/antlr fl/antlr
	cp zoo/fl/antlr.bnf zoo/bulk/fl-antlr.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/fl/dcg/grammar.bgf > zoo/fl/dcg.bgf
	cp zoo/fl/dcg.bgf zoo/bulk/fl-dcg.bgf
	_dev/format zoo fl/dcg fl/dcg
	cp zoo/fl/dcg.bnf zoo/bulk/fl-dcg.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/fl/python/grammar.bgf > zoo/fl/python.bgf
	cp zoo/fl/python.bgf zoo/bulk/fl-python.bgf
	_dev/format zoo fl/python fl/python
	cp zoo/fl/python.bnf zoo/bulk/fl-python.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/fl/concrete-rascal/grammar.bgf > zoo/fl/concrete-rascal.bgf
	cp zoo/fl/concrete-rascal.bgf zoo/bulk/fl-concrete-rascal.bgf
	_dev/format zoo fl/concrete-rascal fl/concrete-rascal
	cp zoo/fl/concrete-rascal.bnf zoo/bulk/fl-concrete-rascal.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/fl/sdf/grammar.bgf > zoo/fl/sdf.bgf
	cp zoo/fl/sdf.bgf zoo/bulk/fl-sdf.bgf
	_dev/format zoo fl/sdf fl/sdf
	cp zoo/fl/sdf.bnf zoo/bulk/fl-sdf.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/fl/txl/grammar.bgf > zoo/fl/txl.bgf
	cp zoo/fl/txl.bgf zoo/bulk/fl-txl.bgf
	_dev/format zoo fl/txl fl/txl
	cp zoo/fl/txl.bnf zoo/bulk/fl-txl.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/fl/ecore/grammar.bgf > zoo/fl/ecore.bgf
	cp zoo/fl/ecore.bgf zoo/bulk/fl-ecore.bgf
	_dev/format zoo fl/ecore fl/ecore
	cp zoo/fl/ecore.bnf zoo/bulk/fl-ecore.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/fl/emf/grammar.bgf > zoo/fl/emf.bgf
	cp zoo/fl/emf.bgf zoo/bulk/fl-emf.bgf
	_dev/format zoo fl/emf fl/emf
	cp zoo/fl/emf.bnf zoo/bulk/fl-emf.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/fl/abstract-rascal/grammar.bgf > zoo/fl/abstract-rascal.bgf
	cp zoo/fl/abstract-rascal.bgf zoo/bulk/fl-abstract-rascal.bgf
	_dev/format zoo fl/abstract-rascal fl/abstract-rascal
	cp zoo/fl/abstract-rascal.bnf zoo/bulk/fl-abstract-rascal.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/fl/xsd/grammar.bgf > zoo/fl/xsd.bgf
	cp zoo/fl/xsd.bgf zoo/bulk/fl-xsd.bgf
	_dev/format zoo fl/xsd fl/xsd
	cp zoo/fl/xsd.bnf zoo/bulk/fl-xsd.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/fl/om/grammar.bgf > zoo/fl/om.bgf
	cp zoo/fl/om.bgf zoo/bulk/fl-om.bgf
	_dev/format zoo fl/om fl/om
	cp zoo/fl/om.bnf zoo/bulk/fl-om.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/fl/jaxb/grammar.bgf > zoo/fl/jaxb.bgf
	cp zoo/fl/jaxb.bgf zoo/bulk/fl-jaxb.bgf
	_dev/format zoo fl/jaxb fl/jaxb
	cp zoo/fl/jaxb.bnf zoo/bulk/fl-jaxb.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/atom/dettrick/grammar.bgf > zoo/markup/atom-dettrick.bgf
	cp zoo/markup/atom-dettrick.bgf zoo/bulk/markup-atom-dettrick.bgf
	_dev/format zoo markup/atom-dettrick atom/dettrick
	cp zoo/markup/atom-dettrick.bnf zoo/bulk/markup-atom-dettrick.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/atom/touzet/grammar.bgf > zoo/markup/atom-touzet.bgf
	cp zoo/markup/atom-touzet.bgf zoo/bulk/markup-atom-touzet.bgf
	_dev/format zoo markup/atom-touzet atom/touzet
	cp zoo/markup/atom-touzet.bnf zoo/bulk/markup-atom-touzet.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/markup/cml/grammar.bgf > zoo/markup/cml.bgf
	cp zoo/markup/cml.bgf zoo/bulk/markup-cml.bgf
	_dev/format zoo markup/cml markup/cml
	cp zoo/markup/cml.bnf zoo/bulk/markup-cml.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/markup/cnf/grammar.bgf > zoo/markup/cnf.bgf
	cp zoo/markup/cnf.bgf zoo/bulk/markup-cnf.bgf
	_dev/format zoo markup/cnf markup/cnf
	cp zoo/markup/cnf.bnf zoo/bulk/markup-cnf.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csv/rascal-abstract/grammar.bgf > zoo/markup/csv-rascal-abstract.bgf
	cp zoo/markup/csv-rascal-abstract.bgf zoo/bulk/markup-csv-rascal-abstract.bgf
	_dev/format zoo markup/csv-rascal-abstract csv/rascal-abstract
	cp zoo/markup/csv-rascal-abstract.bnf zoo/bulk/markup-csv-rascal-abstract.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/csv/rascal-concrete/grammar.bgf > zoo/markup/csv-rascal-concrete.bgf
	cp zoo/markup/csv-rascal-concrete.bgf zoo/bulk/markup-csv-rascal-concrete.bgf
	_dev/format zoo markup/csv-rascal-concrete csv/rascal-concrete
	cp zoo/markup/csv-rascal-concrete.bnf zoo/bulk/markup-csv-rascal-concrete.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/docbook/walsh/grammar.bgf > zoo/markup/docbook-walsh.bgf
	cp zoo/markup/docbook-walsh.bgf zoo/bulk/markup-docbook-walsh.bgf
	_dev/format zoo markup/docbook-walsh docbook/walsh
	cp zoo/markup/docbook-walsh.bnf zoo/bulk/markup-docbook-walsh.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/docbook/touzet/grammar.bgf > zoo/markup/docbook-touzet.bgf
	cp zoo/markup/docbook-touzet.bgf zoo/bulk/markup-docbook-touzet.bgf
	_dev/format zoo markup/docbook-touzet docbook/touzet
	cp zoo/markup/docbook-touzet.bnf zoo/bulk/markup-docbook-touzet.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/markup/ebxml/grammar.bgf > zoo/markup/ebxml.bgf
	cp zoo/markup/ebxml.bgf zoo/bulk/markup-ebxml.bgf
	_dev/format zoo markup/ebxml markup/ebxml
	cp zoo/markup/ebxml.bnf zoo/bulk/markup-ebxml.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/graphml/doux/grammar.bgf > zoo/markup/graphml-doux.bgf
	cp zoo/markup/graphml-doux.bgf zoo/bulk/markup-graphml-doux.bgf
	_dev/format zoo markup/graphml-doux graphml/doux
	cp zoo/markup/graphml-doux.bnf zoo/bulk/markup-graphml-doux.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/json/rascal-abstract/grammar.bgf > zoo/markup/json-rascal-abstract.bgf
	cp zoo/markup/json-rascal-abstract.bgf zoo/bulk/markup-json-rascal-abstract.bgf
	_dev/format zoo markup/json-rascal-abstract json/rascal-abstract
	cp zoo/markup/json-rascal-abstract.bnf zoo/bulk/markup-json-rascal-abstract.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/json/zaytsev-abstract/grammar.bgf > zoo/markup/json-zaytsev-abstract.bgf
	cp zoo/markup/json-zaytsev-abstract.bgf zoo/bulk/markup-json-zaytsev-abstract.bgf
	_dev/format zoo markup/json-zaytsev-abstract json/zaytsev-abstract
	cp zoo/markup/json-zaytsev-abstract.bnf zoo/bulk/markup-json-zaytsev-abstract.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/json/rascal-concrete/grammar.bgf > zoo/markup/json-rascal-concrete.bgf
	cp zoo/markup/json-rascal-concrete.bgf zoo/bulk/markup-json-rascal-concrete.bgf
	_dev/format zoo markup/json-rascal-concrete json/rascal-concrete
	cp zoo/markup/json-rascal-concrete.bnf zoo/bulk/markup-json-rascal-concrete.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/json/zaytsev-concrete/grammar.bgf > zoo/markup/json-zaytsev-concrete.bgf
	cp zoo/markup/json-zaytsev-concrete.bgf zoo/bulk/markup-json-zaytsev-concrete.bgf
	_dev/format zoo markup/json-zaytsev-concrete json/zaytsev-concrete
	cp zoo/markup/json-zaytsev-concrete.bnf zoo/bulk/markup-json-zaytsev-concrete.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/markup/kml/grammar.bgf > zoo/markup/kml.bgf
	cp zoo/markup/kml.bgf zoo/bulk/markup-kml.bgf
	_dev/format zoo markup/kml markup/kml
	cp zoo/markup/kml.bnf zoo/bulk/markup-kml.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/markup/latex/grammar.bgf > zoo/markup/latex.bgf
	cp zoo/markup/latex.bgf zoo/bulk/markup-latex.bgf
	_dev/format zoo markup/latex markup/latex
	cp zoo/markup/latex.bnf zoo/bulk/markup-latex.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/mathml/furubayashi/grammar.bgf > zoo/markup/mathml-furubayashi.bgf
	cp zoo/markup/mathml-furubayashi.bgf zoo/bulk/markup-mathml-furubayashi.bgf
	_dev/format zoo markup/mathml-furubayashi mathml/furubayashi
	cp zoo/markup/mathml-furubayashi.bnf zoo/bulk/markup-mathml-furubayashi.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/wiki/mediawiki-bnf/grammar.bgf > zoo/markup/wiki-mediawiki-bnf.bgf
	cp zoo/markup/wiki-mediawiki-bnf.bgf zoo/bulk/markup-wiki-mediawiki-bnf.bgf
	_dev/format zoo markup/wiki-mediawiki-bnf wiki/mediawiki-bnf
	cp zoo/markup/wiki-mediawiki-bnf.bnf zoo/bulk/markup-wiki-mediawiki-bnf.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/wiki/mediawiki-ebnf/grammar.bgf > zoo/markup/wiki-mediawiki-ebnf.bgf
	cp zoo/markup/wiki-mediawiki-ebnf.bgf zoo/bulk/markup-wiki-mediawiki-ebnf.bgf
	_dev/format zoo markup/wiki-mediawiki-ebnf wiki/mediawiki-ebnf
	cp zoo/markup/wiki-mediawiki-ebnf.bnf zoo/bulk/markup-wiki-mediawiki-ebnf.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/pnmlcoremodel/grammar.bgf > zoo/markup/pnml-pnmlcoremodel.bgf
	cp zoo/markup/pnml-pnmlcoremodel.bgf zoo/bulk/markup-pnml-pnmlcoremodel.bgf
	_dev/format zoo markup/pnml-pnmlcoremodel pnml/pnmlcoremodel
	cp zoo/markup/pnml-pnmlcoremodel.bnf zoo/bulk/markup-pnml-pnmlcoremodel.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/anyElement/grammar.bgf > zoo/markup/pnml-anyElement.bgf
	cp zoo/markup/pnml-anyElement.bgf zoo/bulk/markup-pnml-anyElement.bgf
	_dev/format zoo markup/pnml-anyElement pnml/anyElement
	cp zoo/markup/pnml-anyElement.bnf zoo/bulk/markup-pnml-anyElement.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/conventions/grammar.bgf > zoo/markup/pnml-conventions.bgf
	cp zoo/markup/pnml-conventions.bgf zoo/bulk/markup-pnml-conventions.bgf
	_dev/format zoo markup/pnml-conventions pnml/conventions
	cp zoo/markup/pnml-conventions.bnf zoo/bulk/markup-pnml-conventions.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/ptnet/grammar.bgf > zoo/markup/pnml-ptnet.bgf
	cp zoo/markup/pnml-ptnet.bgf zoo/bulk/markup-pnml-ptnet.bgf
	_dev/format zoo markup/pnml-ptnet pnml/ptnet
	cp zoo/markup/pnml-ptnet.bnf zoo/bulk/markup-pnml-ptnet.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/booleans/grammar.bgf > zoo/markup/pnml-booleans.bgf
	cp zoo/markup/pnml-booleans.bgf zoo/bulk/markup-pnml-booleans.bgf
	_dev/format zoo markup/pnml-booleans pnml/booleans
	cp zoo/markup/pnml-booleans.bnf zoo/bulk/markup-pnml-booleans.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/finiteenumerations/grammar.bgf > zoo/markup/pnml-finiteenumerations.bgf
	cp zoo/markup/pnml-finiteenumerations.bgf zoo/bulk/markup-pnml-finiteenumerations.bgf
	_dev/format zoo markup/pnml-finiteenumerations pnml/finiteenumerations
	cp zoo/markup/pnml-finiteenumerations.bnf zoo/bulk/markup-pnml-finiteenumerations.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/cyclicenumerations/grammar.bgf > zoo/markup/pnml-cyclicenumerations.bgf
	cp zoo/markup/pnml-cyclicenumerations.bgf zoo/bulk/markup-pnml-cyclicenumerations.bgf
	_dev/format zoo markup/pnml-cyclicenumerations pnml/cyclicenumerations
	cp zoo/markup/pnml-cyclicenumerations.bnf zoo/bulk/markup-pnml-cyclicenumerations.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/finiteintranges/grammar.bgf > zoo/markup/pnml-finiteintranges.bgf
	cp zoo/markup/pnml-finiteintranges.bgf zoo/bulk/markup-pnml-finiteintranges.bgf
	_dev/format zoo markup/pnml-finiteintranges pnml/finiteintranges
	cp zoo/markup/pnml-finiteintranges.bnf zoo/bulk/markup-pnml-finiteintranges.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/dots/grammar.bgf > zoo/markup/pnml-dots.bgf
	cp zoo/markup/pnml-dots.bgf zoo/bulk/markup-pnml-dots.bgf
	_dev/format zoo markup/pnml-dots pnml/dots
	cp zoo/markup/pnml-dots.bnf zoo/bulk/markup-pnml-dots.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/multisets/grammar.bgf > zoo/markup/pnml-multisets.bgf
	cp zoo/markup/pnml-multisets.bgf zoo/bulk/markup-pnml-multisets.bgf
	_dev/format zoo markup/pnml-multisets pnml/multisets
	cp zoo/markup/pnml-multisets.bnf zoo/bulk/markup-pnml-multisets.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/partitions/grammar.bgf > zoo/markup/pnml-partitions.bgf
	cp zoo/markup/pnml-partitions.bgf zoo/bulk/markup-pnml-partitions.bgf
	_dev/format zoo markup/pnml-partitions pnml/partitions
	cp zoo/markup/pnml-partitions.bnf zoo/bulk/markup-pnml-partitions.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/lists/grammar.bgf > zoo/markup/pnml-lists.bgf
	cp zoo/markup/pnml-lists.bgf zoo/bulk/markup-pnml-lists.bgf
	_dev/format zoo markup/pnml-lists pnml/lists
	cp zoo/markup/pnml-lists.bnf zoo/bulk/markup-pnml-lists.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/integers/grammar.bgf > zoo/markup/pnml-integers.bgf
	cp zoo/markup/pnml-integers.bgf zoo/bulk/markup-pnml-integers.bgf
	_dev/format zoo markup/pnml-integers pnml/integers
	cp zoo/markup/pnml-integers.bnf zoo/bulk/markup-pnml-integers.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/strings/grammar.bgf > zoo/markup/pnml-strings.bgf
	cp zoo/markup/pnml-strings.bgf zoo/bulk/markup-pnml-strings.bgf
	_dev/format zoo markup/pnml-strings pnml/strings
	cp zoo/markup/pnml-strings.bnf zoo/bulk/markup-pnml-strings.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/terms/grammar.bgf > zoo/markup/pnml-terms.bgf
	cp zoo/markup/pnml-terms.bgf zoo/bulk/markup-pnml-terms.bgf
	_dev/format zoo markup/pnml-terms pnml/terms
	cp zoo/markup/pnml-terms.bnf zoo/bulk/markup-pnml-terms.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/arbitrarydeclarations/grammar.bgf > zoo/markup/pnml-arbitrarydeclarations.bgf
	cp zoo/markup/pnml-arbitrarydeclarations.bgf zoo/bulk/markup-pnml-arbitrarydeclarations.bgf
	_dev/format zoo markup/pnml-arbitrarydeclarations pnml/arbitrarydeclarations
	cp zoo/markup/pnml-arbitrarydeclarations.bnf zoo/bulk/markup-pnml-arbitrarydeclarations.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/hlcorestructure/grammar.bgf > zoo/markup/pnml-hlcorestructure.bgf
	cp zoo/markup/pnml-hlcorestructure.bgf zoo/bulk/markup-pnml-hlcorestructure.bgf
	_dev/format zoo markup/pnml-hlcorestructure pnml/hlcorestructure
	cp zoo/markup/pnml-hlcorestructure.bnf zoo/bulk/markup-pnml-hlcorestructure.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/hlpng/grammar.bgf > zoo/markup/pnml-hlpng.bgf
	cp zoo/markup/pnml-hlpng.bgf zoo/bulk/markup-pnml-hlpng.bgf
	_dev/format zoo markup/pnml-hlpng pnml/hlpng
	cp zoo/markup/pnml-hlpng.bnf zoo/bulk/markup-pnml-hlpng.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/symmetricnet/grammar.bgf > zoo/markup/pnml-symmetricnet.bgf
	cp zoo/markup/pnml-symmetricnet.bgf zoo/bulk/markup-pnml-symmetricnet.bgf
	_dev/format zoo markup/pnml-symmetricnet pnml/symmetricnet
	cp zoo/markup/pnml-symmetricnet.bnf zoo/bulk/markup-pnml-symmetricnet.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/highlevelnet/grammar.bgf > zoo/markup/pnml-highlevelnet.bgf
	cp zoo/markup/pnml-highlevelnet.bgf zoo/bulk/markup-pnml-highlevelnet.bgf
	_dev/format zoo markup/pnml-highlevelnet pnml/highlevelnet
	cp zoo/markup/pnml-highlevelnet.bnf zoo/bulk/markup-pnml-highlevelnet.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/ext-specialarcs/grammar.bgf > zoo/markup/pnml-ext-specialarcs.bgf
	cp zoo/markup/pnml-ext-specialarcs.bgf zoo/bulk/markup-pnml-ext-specialarcs.bgf
	_dev/format zoo markup/pnml-ext-specialarcs pnml/ext-specialarcs
	cp zoo/markup/pnml-ext-specialarcs.bnf zoo/bulk/markup-pnml-ext-specialarcs.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/ext-reset/grammar.bgf > zoo/markup/pnml-ext-reset.bgf
	cp zoo/markup/pnml-ext-reset.bgf zoo/bulk/markup-pnml-ext-reset.bgf
	_dev/format zoo markup/pnml-ext-reset pnml/ext-reset
	cp zoo/markup/pnml-ext-reset.bnf zoo/bulk/markup-pnml-ext-reset.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/ext-inhibitor/grammar.bgf > zoo/markup/pnml-ext-inhibitor.bgf
	cp zoo/markup/pnml-ext-inhibitor.bgf zoo/bulk/markup-pnml-ext-inhibitor.bgf
	_dev/format zoo markup/pnml-ext-inhibitor pnml/ext-inhibitor
	cp zoo/markup/pnml-ext-inhibitor.bnf zoo/bulk/markup-pnml-ext-inhibitor.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/ext-resetinhibitor/grammar.bgf > zoo/markup/pnml-ext-resetinhibitor.bgf
	cp zoo/markup/pnml-ext-resetinhibitor.bgf zoo/bulk/markup-pnml-ext-resetinhibitor.bgf
	_dev/format zoo markup/pnml-ext-resetinhibitor pnml/ext-resetinhibitor
	cp zoo/markup/pnml-ext-resetinhibitor.bnf zoo/bulk/markup-pnml-ext-resetinhibitor.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/guyard-modular/grammar.bgf > zoo/markup/pnml-guyard-modular.bgf
	cp zoo/markup/pnml-guyard-modular.bgf zoo/bulk/markup-pnml-guyard-modular.bgf
	_dev/format zoo markup/pnml-guyard-modular pnml/guyard-modular
	cp zoo/markup/pnml-guyard-modular.bnf zoo/bulk/markup-pnml-guyard-modular.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/guyard-simplified/grammar.bgf > zoo/markup/pnml-guyard-simplified.bgf
	cp zoo/markup/pnml-guyard-simplified.bgf zoo/bulk/markup-pnml-guyard-simplified.bgf
	_dev/format zoo markup/pnml-guyard-simplified pnml/guyard-simplified
	cp zoo/markup/pnml-guyard-simplified.bnf zoo/bulk/markup-pnml-guyard-simplified.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/guyard-basic/grammar.bgf > zoo/markup/pnml-guyard-basic.bgf
	cp zoo/markup/pnml-guyard-basic.bgf zoo/bulk/markup-pnml-guyard-basic.bgf
	_dev/format zoo markup/pnml-guyard-basic pnml/guyard-basic
	cp zoo/markup/pnml-guyard-basic.bnf zoo/bulk/markup-pnml-guyard-basic.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/guyard-structured/grammar.bgf > zoo/markup/pnml-guyard-structured.bgf
	cp zoo/markup/pnml-guyard-structured.bgf zoo/bulk/markup-pnml-guyard-structured.bgf
	_dev/format zoo markup/pnml-guyard-structured pnml/guyard-structured
	cp zoo/markup/pnml-guyard-structured.bnf zoo/bulk/markup-pnml-guyard-structured.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pnml/touzet/grammar.bgf > zoo/markup/pnml-touzet.bgf
	cp zoo/markup/pnml-touzet.bgf zoo/bulk/markup-pnml-touzet.bgf
	_dev/format zoo markup/pnml-touzet pnml/touzet
	cp zoo/markup/pnml-touzet.bnf zoo/bulk/markup-pnml-touzet.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/markup/r2ml/grammar.bgf > zoo/markup/r2ml.bgf
	cp zoo/markup/r2ml.bgf zoo/bulk/markup-r2ml.bgf
	_dev/format zoo markup/r2ml markup/r2ml
	cp zoo/markup/r2ml.bnf zoo/bulk/markup-r2ml.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/rss/touzet/grammar.bgf > zoo/markup/rss-touzet.bgf
	cp zoo/markup/rss-touzet.bgf zoo/bulk/markup-rss-touzet.bgf
	_dev/format zoo markup/rss-touzet rss/touzet
	cp zoo/markup/rss-touzet.bnf zoo/bulk/markup-rss-touzet.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/svg/furubayashi/grammar.bgf > zoo/markup/svg-furubayashi.bgf
	cp zoo/markup/svg-furubayashi.bgf zoo/bulk/markup-svg-furubayashi.bgf
	_dev/format zoo markup/svg-furubayashi svg/furubayashi
	cp zoo/markup/svg-furubayashi.bnf zoo/bulk/markup-svg-furubayashi.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/svg/furubayashi-basic/grammar.bgf > zoo/markup/svg-furubayashi-basic.bgf
	cp zoo/markup/svg-furubayashi-basic.bgf zoo/bulk/markup-svg-furubayashi-basic.bgf
	_dev/format zoo markup/svg-furubayashi-basic svg/furubayashi-basic
	cp zoo/markup/svg-furubayashi-basic.bnf zoo/bulk/markup-svg-furubayashi-basic.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/svg/furubayashi-tiny/grammar.bgf > zoo/markup/svg-furubayashi-tiny.bgf
	cp zoo/markup/svg-furubayashi-tiny.bgf zoo/bulk/markup-svg-furubayashi-tiny.bgf
	_dev/format zoo markup/svg-furubayashi-tiny svg/furubayashi-tiny
	cp zoo/markup/svg-furubayashi-tiny.bnf zoo/bulk/markup-svg-furubayashi-tiny.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/svg/palies/grammar.bgf > zoo/markup/svg-palies.bgf
	cp zoo/markup/svg-palies.bgf zoo/bulk/markup-svg-palies.bgf
	_dev/format zoo markup/svg-palies svg/palies
	cp zoo/markup/svg-palies.bnf zoo/bulk/markup-svg-palies.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/markup/uiml/grammar.bgf > zoo/markup/uiml.bgf
	cp zoo/markup/uiml.bgf zoo/bulk/markup-uiml.bgf
	_dev/format zoo markup/uiml markup/uiml
	cp zoo/markup/uiml.bnf zoo/bulk/markup-uiml.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/wiki/simple/grammar.bgf > zoo/markup/wiki-simple.bgf
	cp zoo/markup/wiki-simple.bgf zoo/bulk/markup-wiki-simple.bgf
	_dev/format zoo markup/wiki-simple wiki/simple
	cp zoo/markup/wiki-simple.bnf zoo/bulk/markup-wiki-simple.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/wiki/table/grammar.bgf > zoo/markup/wiki-table.bgf
	cp zoo/markup/wiki-table.bgf zoo/bulk/markup-wiki-table.bgf
	_dev/format zoo markup/wiki-table wiki/table
	cp zoo/markup/wiki-table.bnf zoo/bulk/markup-wiki-table.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/xaml/perspective/grammar.bgf > zoo/markup/xaml-perspective.bgf
	cp zoo/markup/xaml-perspective.bgf zoo/bulk/markup-xaml-perspective.bgf
	_dev/format zoo markup/xaml-perspective xaml/perspective
	cp zoo/markup/xaml-perspective.bnf zoo/bulk/markup-xaml-perspective.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/xaml/resources/grammar.bgf > zoo/markup/xaml-resources.bgf
	cp zoo/markup/xaml-resources.bgf zoo/bulk/markup-xaml-resources.bgf
	_dev/format zoo markup/xaml-resources xaml/resources
	cp zoo/markup/xaml-resources.bnf zoo/bulk/markup-xaml-resources.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/fortran/derricks/grammar.bgf > zoo/fortran/derricks.bgf
	cp zoo/fortran/derricks.bgf zoo/bulk/fortran-derricks.bgf
	_dev/format zoo fortran/derricks fortran/derricks
	cp zoo/fortran/derricks.bnf zoo/bulk/fortran-derricks.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/fortran/waite-cordy/grammar.bgf > zoo/fortran/waite-cordy.bgf
	cp zoo/fortran/waite-cordy.bgf zoo/bulk/fortran-waite-cordy.bgf
	_dev/format zoo fortran/waite-cordy fortran/waite-cordy
	cp zoo/fortran/waite-cordy.bnf zoo/bulk/fortran-waite-cordy.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/html/cordy/grammar.bgf > zoo/html/cordy.bgf
	cp zoo/html/cordy.bgf zoo/bulk/html-cordy.bgf
	_dev/format zoo html/cordy html/cordy
	cp zoo/html/cordy.bnf zoo/bulk/html-cordy.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/html/allilaire/grammar.bgf > zoo/html/allilaire.bgf
	cp zoo/html/allilaire.bgf zoo/bulk/html-allilaire.bgf
	_dev/format zoo html/allilaire html/allilaire
	cp zoo/html/allilaire.bnf zoo/bulk/html-allilaire.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/html/clark/grammar.bgf > zoo/html/clark.bgf
	cp zoo/html/clark.bgf zoo/bulk/html-clark.bgf
	_dev/format zoo html/clark html/clark
	cp zoo/html/clark.bnf zoo/bulk/html-clark.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/html/guyard/grammar.bgf > zoo/html/guyard.bgf
	cp zoo/html/guyard.bgf zoo/bulk/html-guyard.bgf
	_dev/format zoo html/guyard html/guyard
	cp zoo/html/guyard.bnf zoo/bulk/html-guyard.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/html/clark-basic/grammar.bgf > zoo/html/clark-basic.bgf
	cp zoo/html/clark-basic.bgf zoo/bulk/html-clark-basic.bgf
	_dev/format zoo html/clark-basic html/clark-basic
	cp zoo/html/clark-basic.bnf zoo/bulk/html-clark-basic.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/html/clark-strict/grammar.bgf > zoo/html/clark-strict.bgf
	cp zoo/html/clark-strict.bgf zoo/bulk/html-clark-strict.bgf
	_dev/format zoo html/clark-strict html/clark-strict
	cp zoo/html/clark-strict.bnf zoo/bulk/html-clark-strict.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-1/jls-read/grammar.bgf > zoo/java/java-1-jls-read.bgf
	cp zoo/java/java-1-jls-read.bgf zoo/bulk/java-java-1-jls-read.bgf
	_dev/format zoo java/java-1-jls-read java-1/jls-read
	cp zoo/java/java-1-jls-read.bnf zoo/bulk/java-java-1-jls-read.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-1/jls-impl/grammar.bgf > zoo/java/java-1-jls-impl.bgf
	cp zoo/java/java-1-jls-impl.bgf zoo/bulk/java-java-1-jls-impl.bgf
	_dev/format zoo java/java-1-jls-impl java-1/jls-impl
	cp zoo/java/java-1-jls-impl.bnf zoo/bulk/java-java-1-jls-impl.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-1/cordy-guo/grammar.bgf > zoo/java/java-1-cordy-guo.bgf
	cp zoo/java/java-1-cordy-guo.bgf zoo/bulk/java-java-1-cordy-guo.bgf
	_dev/format zoo java/java-1-cordy-guo java-1/cordy-guo
	cp zoo/java/java-1-cordy-guo.bnf zoo/bulk/java-java-1-cordy-guo.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-1/jouault/grammar.bgf > zoo/java/java-1-jouault.bgf
	cp zoo/java/java-1-jouault.bgf zoo/bulk/java-java-1-jouault.bgf
	_dev/format zoo java/java-1-jouault java-1/jouault
	cp zoo/java/java-1-jouault.bnf zoo/bulk/java-java-1-jouault.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-1/touzet/grammar.bgf > zoo/java/java-1-touzet.bgf
	cp zoo/java/java-1-touzet.bgf zoo/bulk/java-java-1-touzet.bgf
	_dev/format zoo java/java-1-touzet java-1/touzet
	cp zoo/java/java-1-touzet.bnf zoo/bulk/java-java-1-touzet.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-2/jls-read/grammar.bgf > zoo/java/java-2-jls-read.bgf
	cp zoo/java/java-2-jls-read.bgf zoo/bulk/java-java-2-jls-read.bgf
	_dev/format zoo java/java-2-jls-read java-2/jls-read
	cp zoo/java/java-2-jls-read.bnf zoo/bulk/java-java-2-jls-read.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-2/jls-impl/grammar.bgf > zoo/java/java-2-jls-impl.bgf
	cp zoo/java/java-2-jls-impl.bgf zoo/bulk/java-java-2-jls-impl.bgf
	_dev/format zoo java/java-2-jls-impl java-2/jls-impl
	cp zoo/java/java-2-jls-impl.bnf zoo/bulk/java-java-2-jls-impl.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-3/bruneliere/grammar.bgf > zoo/java/java-3-bruneliere.bgf
	cp zoo/java/java-3-bruneliere.bgf zoo/bulk/java-java-3-bruneliere.bgf
	_dev/format zoo java/java-3-bruneliere java-3/bruneliere
	cp zoo/java/java-3-bruneliere.bnf zoo/bulk/java-java-3-bruneliere.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-4/sdf/grammar.bgf > zoo/java/java-4-sdf.bgf
	cp zoo/java/java-4-sdf.bgf zoo/bulk/java-java-4-sdf.bgf
	_dev/format zoo java/java-4-sdf java-4/sdf
	cp zoo/java/java-4-sdf.bnf zoo/bulk/java-java-4-sdf.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-5/jls-read/grammar.bgf > zoo/java/java-5-jls-read.bgf
	cp zoo/java/java-5-jls-read.bgf zoo/bulk/java-java-5-jls-read.bgf
	_dev/format zoo java/java-5-jls-read java-5/jls-read
	cp zoo/java/java-5-jls-read.bnf zoo/bulk/java-java-5-jls-read.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-5/jls-impl/grammar.bgf > zoo/java/java-5-jls-impl.bgf
	cp zoo/java/java-5-jls-impl.bgf zoo/bulk/java-java-5-jls-impl.bgf
	_dev/format zoo java/java-5-jls-impl java-5/jls-impl
	cp zoo/java/java-5-jls-impl.bnf zoo/bulk/java-java-5-jls-impl.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-5/landman/grammar.bgf > zoo/java/java-5-landman.bgf
	cp zoo/java/java-5-landman.bgf zoo/bulk/java-java-5-landman.bgf
	_dev/format zoo java/java-5-landman java-5/landman
	cp zoo/java/java-5-landman.bnf zoo/bulk/java-java-5-landman.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-5/stahl/grammar.bgf > zoo/java/java-5-stahl.bgf
	cp zoo/java/java-5-stahl.bgf zoo/bulk/java-java-5-stahl.bgf
	_dev/format zoo java/java-5-stahl java-5/stahl
	cp zoo/java/java-5-stahl.bnf zoo/bulk/java-java-5-stahl.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-5/studman/grammar.bgf > zoo/java/java-5-studman.bgf
	cp zoo/java/java-5-studman.bgf zoo/bulk/java-java-5-studman.bgf
	_dev/format zoo java/java-5-studman java-5/studman
	cp zoo/java/java-5-studman.bnf zoo/bulk/java-java-5-studman.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-5/parr/grammar.bgf > zoo/java/java-5-parr.bgf
	cp zoo/java/java-5-parr.bgf zoo/bulk/java-java-5-parr.bgf
	_dev/format zoo java/java-5-parr java-5/parr
	cp zoo/java/java-5-parr.bnf zoo/bulk/java-java-5-parr.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-5/habelitz/grammar.bgf > zoo/java/java-5-habelitz.bgf
	cp zoo/java/java-5-habelitz.bgf zoo/bulk/java-java-5-habelitz.bgf
	_dev/format zoo java/java-5-habelitz java-5/habelitz
	cp zoo/java/java-5-habelitz.bnf zoo/bulk/java-java-5-habelitz.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-5/cordy-guo-dean/grammar.bgf > zoo/java/java-5-cordy-guo-dean.bgf
	cp zoo/java/java-5-cordy-guo-dean.bgf zoo/bulk/java-java-5-cordy-guo-dean.bgf
	_dev/format zoo java/java-5-cordy-guo-dean java-5/cordy-guo-dean
	cp zoo/java/java-5-cordy-guo-dean.bnf zoo/bulk/java-java-5-cordy-guo-dean.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java-5/giquel/grammar.bgf > zoo/java/java-5-giquel.bgf
	cp zoo/java/java-5-giquel.bgf zoo/bulk/java-java-5-giquel.bgf
	_dev/format zoo java/java-5-giquel java-5/giquel
	cp zoo/java/java-5-giquel.bnf zoo/bulk/java-java-5-giquel.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java/jdt/grammar.bgf > zoo/java/jdt.bgf
	cp zoo/java/jdt.bgf zoo/bulk/java-jdt.bgf
	_dev/format zoo java/jdt java/jdt
	cp zoo/java/jdt.bnf zoo/bulk/java-jdt.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java/jvm-level0/grammar.bgf > zoo/java/jvm-level0.bgf
	cp zoo/java/jvm-level0.bgf zoo/bulk/java-jvm-level0.bgf
	_dev/format zoo java/jvm-level0 java/jvm-level0
	cp zoo/java/jvm-level0.bnf zoo/bulk/java-jvm-level0.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/java/jvm-level1/grammar.bgf > zoo/java/jvm-level1.bgf
	cp zoo/java/jvm-level1.bgf zoo/bulk/java-jvm-level1.bgf
	_dev/format zoo java/jvm-level1 java/jvm-level1
	cp zoo/java/jvm-level1.bnf zoo/bulk/java-jvm-level1.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/javascript/synytskyy-cordy/grammar.bgf > zoo/javascript/synytskyy-cordy.bgf
	cp zoo/javascript/synytskyy-cordy.bgf zoo/bulk/javascript-synytskyy-cordy.bgf
	_dev/format zoo javascript/synytskyy-cordy javascript/synytskyy-cordy
	cp zoo/javascript/synytskyy-cordy.bnf zoo/bulk/javascript-synytskyy-cordy.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/logo/sdf/grammar.bgf > zoo/logo/sdf.bgf
	cp zoo/logo/sdf.bgf zoo/bulk/logo-sdf.bgf
	_dev/format zoo logo/sdf logo/sdf
	cp zoo/logo/sdf.bnf zoo/bulk/logo-sdf.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ACG/grammar.bgf > zoo/metamodels/ACG.bgf
	cp zoo/metamodels/ACG.bgf zoo/bulk/metamodels-ACG.bgf
	_dev/format zoo metamodels/ACG metamodels/ACG
	cp zoo/metamodels/ACG.bnf zoo/bulk/metamodels-ACG.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ACME/grammar.bgf > zoo/metamodels/ACME.bgf
	cp zoo/metamodels/ACME.bgf zoo/bulk/metamodels-ACME.bgf
	_dev/format zoo metamodels/ACME metamodels/ACME
	cp zoo/metamodels/ACME.bnf zoo/bulk/metamodels-ACME.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ADELFE/grammar.bgf > zoo/metamodels/ADELFE.bgf
	cp zoo/metamodels/ADELFE.bgf zoo/bulk/metamodels-ADELFE.bgf
	_dev/format zoo metamodels/ADELFE metamodels/ADELFE
	cp zoo/metamodels/ADELFE.bnf zoo/bulk/metamodels-ADELFE.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Agate/grammar.bgf > zoo/metamodels/Agate.bgf
	cp zoo/metamodels/Agate.bgf zoo/bulk/metamodels-Agate.bgf
	_dev/format zoo metamodels/Agate metamodels/Agate
	cp zoo/metamodels/Agate.bnf zoo/bulk/metamodels-Agate.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ATL/grammar.bgf > zoo/metamodels/ATL.bgf
	cp zoo/metamodels/ATL.bgf zoo/bulk/metamodels-ATL.bgf
	_dev/format zoo metamodels/ATL metamodels/ATL
	cp zoo/metamodels/ATL.bnf zoo/bulk/metamodels-ATL.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/XMorphLanguage_abstractSyntax/grammar.bgf > zoo/metamodels/XMorphLanguage_abstractSyntax.bgf
	cp zoo/metamodels/XMorphLanguage_abstractSyntax.bgf zoo/bulk/metamodels-XMorphLanguage_abstractSyntax.bgf
	_dev/format zoo metamodels/XMorphLanguage_abstractSyntax metamodels/XMorphLanguage_abstractSyntax
	cp zoo/metamodels/XMorphLanguage_abstractSyntax.bnf zoo/bulk/metamodels-XMorphLanguage_abstractSyntax.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/TroposActorConcept/grammar.bgf > zoo/metamodels/TroposActorConcept.bgf
	cp zoo/metamodels/TroposActorConcept.bgf zoo/bulk/metamodels-TroposActorConcept.bgf
	_dev/format zoo metamodels/TroposActorConcept metamodels/TroposActorConcept
	cp zoo/metamodels/TroposActorConcept.bnf zoo/bulk/metamodels-TroposActorConcept.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Amble/grammar.bgf > zoo/metamodels/Amble.bgf
	cp zoo/metamodels/Amble.bgf zoo/bulk/metamodels-Amble.bgf
	_dev/format zoo metamodels/Amble metamodels/Amble
	cp zoo/metamodels/Amble.bnf zoo/bulk/metamodels-Amble.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/AnyLogic/grammar.bgf > zoo/metamodels/AnyLogic.bgf
	cp zoo/metamodels/AnyLogic.bgf zoo/bulk/metamodels-AnyLogic.bgf
	_dev/format zoo metamodels/AnyLogic metamodels/AnyLogic
	cp zoo/metamodels/AnyLogic.bnf zoo/bulk/metamodels-AnyLogic.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Architectural_Description/grammar.bgf > zoo/metamodels/Architectural_Description.bgf
	cp zoo/metamodels/Architectural_Description.bgf zoo/bulk/metamodels-Architectural_Description.bgf
	_dev/format zoo metamodels/Architectural_Description metamodels/Architectural_Description
	cp zoo/metamodels/Architectural_Description.bnf zoo/bulk/metamodels-Architectural_Description.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/AsmL/grammar.bgf > zoo/metamodels/AsmL.bgf
	cp zoo/metamodels/AsmL.bgf zoo/bulk/metamodels-AsmL.bgf
	_dev/format zoo metamodels/AsmL metamodels/AsmL
	cp zoo/metamodels/AsmL.bnf zoo/bulk/metamodels-AsmL.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/BMM/grammar.bgf > zoo/metamodels/BMM.bgf
	cp zoo/metamodels/BMM.bgf zoo/bulk/metamodels-BMM.bgf
	_dev/format zoo metamodels/BMM metamodels/BMM
	cp zoo/metamodels/BMM.bnf zoo/bulk/metamodels-BMM.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/BPEL/grammar.bgf > zoo/metamodels/BPEL.bgf
	cp zoo/metamodels/BPEL.bgf zoo/bulk/metamodels-BPEL.bgf
	_dev/format zoo metamodels/BPEL metamodels/BPEL
	cp zoo/metamodels/BPEL.bnf zoo/bulk/metamodels-BPEL.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/BPMN/grammar.bgf > zoo/metamodels/BPMN.bgf
	cp zoo/metamodels/BPMN.bgf zoo/bulk/metamodels-BPMN.bgf
	_dev/format zoo metamodels/BPMN metamodels/BPMN
	cp zoo/metamodels/BPMN.bnf zoo/bulk/metamodels-BPMN.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/IEEE1471ViewpointM2/grammar.bgf > zoo/metamodels/IEEE1471ViewpointM2.bgf
	cp zoo/metamodels/IEEE1471ViewpointM2.bgf zoo/bulk/metamodels-IEEE1471ViewpointM2.bgf
	_dev/format zoo metamodels/IEEE1471ViewpointM2 metamodels/IEEE1471ViewpointM2
	cp zoo/metamodels/IEEE1471ViewpointM2.bnf zoo/bulk/metamodels-IEEE1471ViewpointM2.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/bmmOmg/grammar.bgf > zoo/metamodels/bmmOmg.bgf
	cp zoo/metamodels/bmmOmg.bgf zoo/bulk/metamodels-bmmOmg.bgf
	_dev/format zoo metamodels/bmmOmg metamodels/bmmOmg
	cp zoo/metamodels/bmmOmg.bnf zoo/bulk/metamodels-bmmOmg.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Book/grammar.bgf > zoo/metamodels/Book.bgf
	cp zoo/metamodels/Book.bgf zoo/bulk/metamodels-Book.bgf
	_dev/format zoo metamodels/Book metamodels/Book
	cp zoo/metamodels/Book.bnf zoo/bulk/metamodels-Book.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Bossa/grammar.bgf > zoo/metamodels/Bossa.bgf
	cp zoo/metamodels/Bossa.bgf zoo/bulk/metamodels-Bossa.bgf
	_dev/format zoo metamodels/Bossa metamodels/Bossa
	cp zoo/metamodels/Bossa.bnf zoo/bulk/metamodels-Bossa.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/BusinessEntityModel/grammar.bgf > zoo/metamodels/BusinessEntityModel.bgf
	cp zoo/metamodels/BusinessEntityModel.bgf zoo/bulk/metamodels-BusinessEntityModel.bgf
	_dev/format zoo metamodels/BusinessEntityModel metamodels/BusinessEntityModel
	cp zoo/metamodels/BusinessEntityModel.bnf zoo/bulk/metamodels-BusinessEntityModel.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/BusinessProcessModel/grammar.bgf > zoo/metamodels/BusinessProcessModel.bgf
	cp zoo/metamodels/BusinessProcessModel.bgf zoo/bulk/metamodels-BusinessProcessModel.bgf
	_dev/format zoo metamodels/BusinessProcessModel metamodels/BusinessProcessModel
	cp zoo/metamodels/BusinessProcessModel.bnf zoo/bulk/metamodels-BusinessProcessModel.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/CADM/grammar.bgf > zoo/metamodels/CADM.bgf
	cp zoo/metamodels/CADM.bgf zoo/bulk/metamodels-CADM.bgf
	_dev/format zoo metamodels/CADM metamodels/CADM
	cp zoo/metamodels/CADM.bnf zoo/bulk/metamodels-CADM.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/CDE/grammar.bgf > zoo/metamodels/CDE.bgf
	cp zoo/metamodels/CDE.bgf zoo/bulk/metamodels-CDE.bgf
	_dev/format zoo metamodels/CDE metamodels/CDE
	cp zoo/metamodels/CDE.bnf zoo/bulk/metamodels-CDE.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/CFG/grammar.bgf > zoo/metamodels/CFG.bgf
	cp zoo/metamodels/CFG.bgf zoo/bulk/metamodels-CFG.bgf
	_dev/format zoo metamodels/CFG metamodels/CFG
	cp zoo/metamodels/CFG.bnf zoo/bulk/metamodels-CFG.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/COBOL/grammar.bgf > zoo/metamodels/COBOL.bgf
	cp zoo/metamodels/COBOL.bgf zoo/bulk/metamodels-COBOL.bgf
	_dev/format zoo metamodels/COBOL metamodels/COBOL
	cp zoo/metamodels/COBOL.bnf zoo/bulk/metamodels-COBOL.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/CORBAComponent/grammar.bgf > zoo/metamodels/CORBAComponent.bgf
	cp zoo/metamodels/CORBAComponent.bgf zoo/bulk/metamodels-CORBAComponent.bgf
	_dev/format zoo metamodels/CORBAComponent metamodels/CORBAComponent
	cp zoo/metamodels/CORBAComponent.bnf zoo/bulk/metamodels-CORBAComponent.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/CPL/grammar.bgf > zoo/metamodels/CPL.bgf
	cp zoo/metamodels/CPL.bgf zoo/bulk/metamodels-CPL.bgf
	_dev/format zoo metamodels/CPL metamodels/CPL
	cp zoo/metamodels/CPL.bnf zoo/bulk/metamodels-CPL.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/CPR/grammar.bgf > zoo/metamodels/CPR.bgf
	cp zoo/metamodels/CPR.bgf zoo/bulk/metamodels-CPR.bgf
	_dev/format zoo metamodels/CPR metamodels/CPR
	cp zoo/metamodels/CPR.bnf zoo/bulk/metamodels-CPR.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/CSM/grammar.bgf > zoo/metamodels/CSM.bgf
	cp zoo/metamodels/CSM.bgf zoo/bulk/metamodels-CSM.bgf
	_dev/format zoo metamodels/CSM metamodels/CSM
	cp zoo/metamodels/CSM.bnf zoo/bulk/metamodels-CSM.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/CWMCore/grammar.bgf > zoo/metamodels/CWMCore.bgf
	cp zoo/metamodels/CWMCore.bgf zoo/bulk/metamodels-CWMCore.bgf
	_dev/format zoo metamodels/CWMCore metamodels/CWMCore
	cp zoo/metamodels/CWMCore.bnf zoo/bulk/metamodels-CWMCore.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/CWMRelationalData/grammar.bgf > zoo/metamodels/CWMRelationalData.bgf
	cp zoo/metamodels/CWMRelationalData.bgf zoo/bulk/metamodels-CWMRelationalData.bgf
	_dev/format zoo metamodels/CWMRelationalData metamodels/CWMRelationalData
	cp zoo/metamodels/CWMRelationalData.bnf zoo/bulk/metamodels-CWMRelationalData.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MiningMart_ViewCaseRepresentation/grammar.bgf > zoo/metamodels/MiningMart_ViewCaseRepresentation.bgf
	cp zoo/metamodels/MiningMart_ViewCaseRepresentation.bgf zoo/bulk/metamodels-MiningMart_ViewCaseRepresentation.bgf
	_dev/format zoo metamodels/MiningMart_ViewCaseRepresentation metamodels/MiningMart_ViewCaseRepresentation
	cp zoo/metamodels/MiningMart_ViewCaseRepresentation.bnf zoo/bulk/metamodels-MiningMart_ViewCaseRepresentation.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ChocoModel/grammar.bgf > zoo/metamodels/ChocoModel.bgf
	cp zoo/metamodels/ChocoModel.bgf zoo/bulk/metamodels-ChocoModel.bgf
	_dev/format zoo metamodels/ChocoModel metamodels/ChocoModel
	cp zoo/metamodels/ChocoModel.bnf zoo/bulk/metamodels-ChocoModel.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Class/grammar.bgf > zoo/metamodels/Class.bgf
	cp zoo/metamodels/Class.bgf zoo/bulk/metamodels-Class.bgf
	_dev/format zoo metamodels/Class metamodels/Class
	cp zoo/metamodels/Class.bnf zoo/bulk/metamodels-Class.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ClassicModels/grammar.bgf > zoo/metamodels/ClassicModels.bgf
	cp zoo/metamodels/ClassicModels.bgf zoo/bulk/metamodels-ClassicModels.bgf
	_dev/format zoo metamodels/ClassicModels metamodels/ClassicModels
	cp zoo/metamodels/ClassicModels.bnf zoo/bulk/metamodels-ClassicModels.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/CompanyStructure/grammar.bgf > zoo/metamodels/CompanyStructure.bgf
	cp zoo/metamodels/CompanyStructure.bgf zoo/bulk/metamodels-CompanyStructure.bgf
	_dev/format zoo metamodels/CompanyStructure metamodels/CompanyStructure
	cp zoo/metamodels/CompanyStructure.bnf zoo/bulk/metamodels-CompanyStructure.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ComponentUML/grammar.bgf > zoo/metamodels/ComponentUML.bgf
	cp zoo/metamodels/ComponentUML.bgf zoo/bulk/metamodels-ComponentUML.bgf
	_dev/format zoo metamodels/ComponentUML metamodels/ComponentUML
	cp zoo/metamodels/ComponentUML.bnf zoo/bulk/metamodels-ComponentUML.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/IEEE1471ConceptualModel/grammar.bgf > zoo/metamodels/IEEE1471ConceptualModel.bgf
	cp zoo/metamodels/IEEE1471ConceptualModel.bgf zoo/bulk/metamodels-IEEE1471ConceptualModel.bgf
	_dev/format zoo metamodels/IEEE1471ConceptualModel metamodels/IEEE1471ConceptualModel
	cp zoo/metamodels/IEEE1471ConceptualModel.bnf zoo/bulk/metamodels-IEEE1471ConceptualModel.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Contact/grammar.bgf > zoo/metamodels/Contact.bgf
	cp zoo/metamodels/Contact.bgf zoo/bulk/metamodels-Contact.bgf
	_dev/format zoo metamodels/Contact metamodels/Contact
	cp zoo/metamodels/Contact.bnf zoo/bulk/metamodels-Contact.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ControllerUML/grammar.bgf > zoo/metamodels/ControllerUML.bgf
	cp zoo/metamodels/ControllerUML.bgf zoo/bulk/metamodels-ControllerUML.bgf
	_dev/format zoo metamodels/ControllerUML metamodels/ControllerUML
	cp zoo/metamodels/ControllerUML.bnf zoo/bulk/metamodels-ControllerUML.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Cristal/grammar.bgf > zoo/metamodels/Cristal.bgf
	cp zoo/metamodels/Cristal.bgf zoo/bulk/metamodels-Cristal.bgf
	_dev/format zoo metamodels/Cristal metamodels/Cristal
	cp zoo/metamodels/Cristal.bnf zoo/bulk/metamodels-Cristal.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DSL/grammar.bgf > zoo/metamodels/DSL.bgf
	cp zoo/metamodels/DSL.bgf zoo/bulk/metamodels-DSL.bgf
	_dev/format zoo metamodels/DSL metamodels/DSL
	cp zoo/metamodels/DSL.bnf zoo/bulk/metamodels-DSL.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DSLtools/grammar.bgf > zoo/metamodels/DSLtools.bgf
	cp zoo/metamodels/DSLtools.bgf zoo/bulk/metamodels-DSLtools.bgf
	_dev/format zoo metamodels/DSLtools metamodels/DSLtools
	cp zoo/metamodels/DSLtools.bnf zoo/bulk/metamodels-DSLtools.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DSLModel/grammar.bgf > zoo/metamodels/DSLModel.bgf
	cp zoo/metamodels/DSLModel.bgf zoo/bulk/metamodels-DSLModel.bgf
	_dev/format zoo metamodels/DSLModel metamodels/DSLModel
	cp zoo/metamodels/DSLModel.bnf zoo/bulk/metamodels-DSLModel.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DTMP/grammar.bgf > zoo/metamodels/DTMP.bgf
	cp zoo/metamodels/DTMP.bgf zoo/bulk/metamodels-DTMP.bgf
	_dev/format zoo metamodels/DTMP metamodels/DTMP
	cp zoo/metamodels/DTMP.bnf zoo/bulk/metamodels-DTMP.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DXF/grammar.bgf > zoo/metamodels/DXF.bgf
	cp zoo/metamodels/DXF.bgf zoo/bulk/metamodels-DXF.bgf
	_dev/format zoo metamodels/DXF metamodels/DXF
	cp zoo/metamodels/DXF.bnf zoo/bulk/metamodels-DXF.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSVisio_DatadiagramMLBasicDef/grammar.bgf > zoo/metamodels/MSVisio_DatadiagramMLBasicDef.bgf
	cp zoo/metamodels/MSVisio_DatadiagramMLBasicDef.bgf zoo/bulk/metamodels-MSVisio_DatadiagramMLBasicDef.bgf
	_dev/format zoo metamodels/MSVisio_DatadiagramMLBasicDef metamodels/MSVisio_DatadiagramMLBasicDef
	cp zoo/metamodels/MSVisio_DatadiagramMLBasicDef.bnf zoo/bulk/metamodels-MSVisio_DatadiagramMLBasicDef.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSVisio_DatadiagramMLSimplified/grammar.bgf > zoo/metamodels/MSVisio_DatadiagramMLSimplified.bgf
	cp zoo/metamodels/MSVisio_DatadiagramMLSimplified.bgf zoo/bulk/metamodels-MSVisio_DatadiagramMLSimplified.bgf
	_dev/format zoo metamodels/MSVisio_DatadiagramMLSimplified metamodels/MSVisio_DatadiagramMLSimplified
	cp zoo/metamodels/MSVisio_DatadiagramMLSimplified.bnf zoo/bulk/metamodels-MSVisio_DatadiagramMLSimplified.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSVisio_DatadiagramMLTextFormat/grammar.bgf > zoo/metamodels/MSVisio_DatadiagramMLTextFormat.bgf
	cp zoo/metamodels/MSVisio_DatadiagramMLTextFormat.bgf zoo/bulk/metamodels-MSVisio_DatadiagramMLTextFormat.bgf
	_dev/format zoo metamodels/MSVisio_DatadiagramMLTextFormat metamodels/MSVisio_DatadiagramMLTextFormat
	cp zoo/metamodels/MSVisio_DatadiagramMLTextFormat.bnf zoo/bulk/metamodels-MSVisio_DatadiagramMLTextFormat.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSVisio_DatadiagramMLXForm/grammar.bgf > zoo/metamodels/MSVisio_DatadiagramMLXForm.bgf
	cp zoo/metamodels/MSVisio_DatadiagramMLXForm.bgf zoo/bulk/metamodels-MSVisio_DatadiagramMLXForm.bgf
	_dev/format zoo metamodels/MSVisio_DatadiagramMLXForm metamodels/MSVisio_DatadiagramMLXForm
	cp zoo/metamodels/MSVisio_DatadiagramMLXForm.bnf zoo/bulk/metamodels-MSVisio_DatadiagramMLXForm.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MiningMart_SimplifiedMetamodel/grammar.bgf > zoo/metamodels/MiningMart_SimplifiedMetamodel.bgf
	cp zoo/metamodels/MiningMart_SimplifiedMetamodel.bgf zoo/bulk/metamodels-MiningMart_SimplifiedMetamodel.bgf
	_dev/format zoo metamodels/MiningMart_SimplifiedMetamodel metamodels/MiningMart_SimplifiedMetamodel
	cp zoo/metamodels/MiningMart_SimplifiedMetamodel.bnf zoo/bulk/metamodels-MiningMart_SimplifiedMetamodel.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MiningMart_ViewDataRepresentation/grammar.bgf > zoo/metamodels/MiningMart_ViewDataRepresentation.bgf
	cp zoo/metamodels/MiningMart_ViewDataRepresentation.bgf zoo/bulk/metamodels-MiningMart_ViewDataRepresentation.bgf
	_dev/format zoo metamodels/MiningMart_ViewDataRepresentation metamodels/MiningMart_ViewDataRepresentation
	cp zoo/metamodels/MiningMart_ViewDataRepresentation.bnf zoo/bulk/metamodels-MiningMart_ViewDataRepresentation.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/deployment/grammar.bgf > zoo/metamodels/deployment.bgf
	cp zoo/metamodels/deployment.bgf zoo/bulk/metamodels-deployment.bgf
	_dev/format zoo metamodels/deployment metamodels/deployment
	cp zoo/metamodels/deployment.bnf zoo/bulk/metamodels-deployment.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DiagramInterchange/grammar.bgf > zoo/metamodels/DiagramInterchange.bgf
	cp zoo/metamodels/DiagramInterchange.bgf zoo/bulk/metamodels-DiagramInterchange.bgf
	_dev/format zoo metamodels/DiagramInterchange metamodels/DiagramInterchange
	cp zoo/metamodels/DiagramInterchange.bnf zoo/bulk/metamodels-DiagramInterchange.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DoDAF/grammar.bgf > zoo/metamodels/DoDAF.bgf
	cp zoo/metamodels/DoDAF.bgf zoo/bulk/metamodels-DoDAF.bgf
	_dev/format zoo metamodels/DoDAF metamodels/DoDAF
	cp zoo/metamodels/DoDAF.bnf zoo/bulk/metamodels-DoDAF.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DoDAF-OV5/grammar.bgf > zoo/metamodels/DoDAF-OV5.bgf
	cp zoo/metamodels/DoDAF-OV5.bgf zoo/bulk/metamodels-DoDAF-OV5.bgf
	_dev/format zoo metamodels/DoDAF-OV5 metamodels/DoDAF-OV5
	cp zoo/metamodels/DoDAF-OV5.bnf zoo/bulk/metamodels-DoDAF-OV5.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DoDAF-SV4/grammar.bgf > zoo/metamodels/DoDAF-SV4.bgf
	cp zoo/metamodels/DoDAF-SV4.bgf zoo/bulk/metamodels-DoDAF-SV4.bgf
	_dev/format zoo metamodels/DoDAF-SV4 metamodels/DoDAF-SV4
	cp zoo/metamodels/DoDAF-SV4.bnf zoo/bulk/metamodels-DoDAF-SV4.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DoDAF-SV5/grammar.bgf > zoo/metamodels/DoDAF-SV5.bgf
	cp zoo/metamodels/DoDAF-SV5.bgf zoo/bulk/metamodels-DoDAF-SV5.bgf
	_dev/format zoo metamodels/DoDAF-SV5 metamodels/DoDAF-SV5
	cp zoo/metamodels/DoDAF-SV5.bnf zoo/bulk/metamodels-DoDAF-SV5.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DotNET_SystemReflection/grammar.bgf > zoo/metamodels/DotNET_SystemReflection.bgf
	cp zoo/metamodels/DotNET_SystemReflection.bgf zoo/bulk/metamodels-DotNET_SystemReflection.bgf
	_dev/format zoo metamodels/DotNET_SystemReflection metamodels/DotNET_SystemReflection
	cp zoo/metamodels/DotNET_SystemReflection.bnf zoo/bulk/metamodels-DotNET_SystemReflection.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/EAI/grammar.bgf > zoo/metamodels/EAI.bgf
	cp zoo/metamodels/EAI.bgf zoo/bulk/metamodels-EAI.bgf
	_dev/format zoo metamodels/EAI metamodels/EAI
	cp zoo/metamodels/EAI.bnf zoo/bulk/metamodels-EAI.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/EG/grammar.bgf > zoo/metamodels/EG.bgf
	cp zoo/metamodels/EG.bgf zoo/bulk/metamodels-EG.bgf
	_dev/format zoo metamodels/EG metamodels/EG
	cp zoo/metamodels/EG.bnf zoo/bulk/metamodels-EG.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/EQN/grammar.bgf > zoo/metamodels/EQN.bgf
	cp zoo/metamodels/EQN.bgf zoo/bulk/metamodels-EQN.bgf
	_dev/format zoo metamodels/EQN metamodels/EQN
	cp zoo/metamodels/EQN.bnf zoo/bulk/metamodels-EQN.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/EXPRESS/grammar.bgf > zoo/metamodels/EXPRESS.bgf
	cp zoo/metamodels/EXPRESS.bgf zoo/bulk/metamodels-EXPRESS.bgf
	_dev/format zoo metamodels/EXPRESS metamodels/EXPRESS
	cp zoo/metamodels/EXPRESS.bnf zoo/bulk/metamodels-EXPRESS.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/EXPRESSb/grammar.bgf > zoo/metamodels/EXPRESSb.bgf
	cp zoo/metamodels/EXPRESSb.bgf zoo/bulk/metamodels-EXPRESSb.bgf
	_dev/format zoo metamodels/EXPRESSb metamodels/EXPRESSb
	cp zoo/metamodels/EXPRESSb.bnf zoo/bulk/metamodels-EXPRESSb.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/EclipseLaunchConfigurations/grammar.bgf > zoo/metamodels/EclipseLaunchConfigurations.bgf
	cp zoo/metamodels/EclipseLaunchConfigurations.bgf zoo/bulk/metamodels-EclipseLaunchConfigurations.bgf
	_dev/format zoo metamodels/EclipseLaunchConfigurations metamodels/EclipseLaunchConfigurations
	cp zoo/metamodels/EclipseLaunchConfigurations.bnf zoo/bulk/metamodels-EclipseLaunchConfigurations.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/EclipsePlugIn/grammar.bgf > zoo/metamodels/EclipsePlugIn.bgf
	cp zoo/metamodels/EclipsePlugIn.bgf zoo/bulk/metamodels-EclipsePlugIn.bgf
	_dev/format zoo metamodels/EclipsePlugIn metamodels/EclipsePlugIn
	cp zoo/metamodels/EclipsePlugIn.bnf zoo/bulk/metamodels-EclipsePlugIn.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Family/grammar.bgf > zoo/metamodels/Family.bgf
	cp zoo/metamodels/Family.bgf zoo/bulk/metamodels-Family.bgf
	_dev/format zoo metamodels/Family metamodels/Family
	cp zoo/metamodels/Family.bnf zoo/bulk/metamodels-Family.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/FeatureDiagrams/grammar.bgf > zoo/metamodels/FeatureDiagrams.bgf
	cp zoo/metamodels/FeatureDiagrams.bgf zoo/bulk/metamodels-FeatureDiagrams.bgf
	_dev/format zoo metamodels/FeatureDiagrams metamodels/FeatureDiagrams
	cp zoo/metamodels/FeatureDiagrams.bnf zoo/bulk/metamodels-FeatureDiagrams.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Automaton/grammar.bgf > zoo/metamodels/Automaton.bgf
	cp zoo/metamodels/Automaton.bgf zoo/bulk/metamodels-Automaton.bgf
	_dev/format zoo metamodels/Automaton metamodels/Automaton
	cp zoo/metamodels/Automaton.bnf zoo/bulk/metamodels-Automaton.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/FiniteStateMachine/grammar.bgf > zoo/metamodels/FiniteStateMachine.bgf
	cp zoo/metamodels/FiniteStateMachine.bgf zoo/bulk/metamodels-FiniteStateMachine.bgf
	_dev/format zoo metamodels/FiniteStateMachine metamodels/FiniteStateMachine
	cp zoo/metamodels/FiniteStateMachine.bnf zoo/bulk/metamodels-FiniteStateMachine.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/FlatSignalFlow/grammar.bgf > zoo/metamodels/FlatSignalFlow.bgf
	cp zoo/metamodels/FlatSignalFlow.bgf zoo/bulk/metamodels-FlatSignalFlow.bgf
	_dev/format zoo metamodels/FlatSignalFlow metamodels/FlatSignalFlow
	cp zoo/metamodels/FlatSignalFlow.bnf zoo/bulk/metamodels-FlatSignalFlow.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GAIA/grammar.bgf > zoo/metamodels/GAIA.bgf
	cp zoo/metamodels/GAIA.bgf zoo/bulk/metamodels-GAIA.bgf
	_dev/format zoo metamodels/GAIA metamodels/GAIA
	cp zoo/metamodels/GAIA.bnf zoo/bulk/metamodels-GAIA.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Grafcet/grammar.bgf > zoo/metamodels/Grafcet.bgf
	cp zoo/metamodels/Grafcet.bgf zoo/bulk/metamodels-Grafcet.bgf
	_dev/format zoo metamodels/Grafcet metamodels/Grafcet
	cp zoo/metamodels/Grafcet.bnf zoo/bulk/metamodels-Grafcet.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GUI/grammar.bgf > zoo/metamodels/GUI.bgf
	cp zoo/metamodels/GUI.bgf zoo/bulk/metamodels-GUI.bgf
	_dev/format zoo metamodels/GUI metamodels/GUI
	cp zoo/metamodels/GUI.bnf zoo/bulk/metamodels-GUI.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Gantt/grammar.bgf > zoo/metamodels/Gantt.bgf
	cp zoo/metamodels/Gantt.bgf zoo/bulk/metamodels-Gantt.bgf
	_dev/format zoo metamodels/Gantt metamodels/Gantt
	cp zoo/metamodels/Gantt.bnf zoo/bulk/metamodels-Gantt.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GenericOutline/grammar.bgf > zoo/metamodels/GenericOutline.bgf
	cp zoo/metamodels/GenericOutline.bgf zoo/bulk/metamodels-GenericOutline.bgf
	_dev/format zoo metamodels/GenericOutline metamodels/GenericOutline
	cp zoo/metamodels/GenericOutline.bnf zoo/bulk/metamodels-GenericOutline.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GenericEditor/grammar.bgf > zoo/metamodels/GenericEditor.bgf
	cp zoo/metamodels/GenericEditor.bgf zoo/bulk/metamodels-GenericEditor.bgf
	_dev/format zoo metamodels/GenericEditor metamodels/GenericEditor
	cp zoo/metamodels/GenericEditor.bnf zoo/bulk/metamodels-GenericEditor.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GeoTrans/grammar.bgf > zoo/metamodels/GeoTrans.bgf
	cp zoo/metamodels/GeoTrans.bgf zoo/bulk/metamodels-GeoTrans.bgf
	_dev/format zoo metamodels/GeoTrans metamodels/GeoTrans
	cp zoo/metamodels/GeoTrans.bnf zoo/bulk/metamodels-GeoTrans.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/TroposGoalAndPlanConcepts/grammar.bgf > zoo/metamodels/TroposGoalAndPlanConcepts.bgf
	cp zoo/metamodels/TroposGoalAndPlanConcepts.bgf zoo/bulk/metamodels-TroposGoalAndPlanConcepts.bgf
	_dev/format zoo metamodels/TroposGoalAndPlanConcepts metamodels/TroposGoalAndPlanConcepts
	cp zoo/metamodels/TroposGoalAndPlanConcepts.bnf zoo/bulk/metamodels-TroposGoalAndPlanConcepts.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/HAL/grammar.bgf > zoo/metamodels/HAL.bgf
	cp zoo/metamodels/HAL.bgf zoo/bulk/metamodels-HAL.bgf
	_dev/format zoo metamodels/HAL metamodels/HAL
	cp zoo/metamodels/HAL.bnf zoo/bulk/metamodels-HAL.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/HPROF/grammar.bgf > zoo/metamodels/HPROF.bgf
	cp zoo/metamodels/HPROF.bgf zoo/bulk/metamodels-HPROF.bgf
	_dev/format zoo metamodels/HPROF metamodels/HPROF
	cp zoo/metamodels/HPROF.bnf zoo/bulk/metamodels-HPROF.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/HierarchicalSignalFlow/grammar.bgf > zoo/metamodels/HierarchicalSignalFlow.bgf
	cp zoo/metamodels/HierarchicalSignalFlow.bgf zoo/bulk/metamodels-HierarchicalSignalFlow.bgf
	_dev/format zoo metamodels/HierarchicalSignalFlow metamodels/HierarchicalSignalFlow
	cp zoo/metamodels/HierarchicalSignalFlow.bnf zoo/bulk/metamodels-HierarchicalSignalFlow.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/HierarchicalStateMachine/grammar.bgf > zoo/metamodels/HierarchicalStateMachine.bgf
	cp zoo/metamodels/HierarchicalStateMachine.bgf zoo/bulk/metamodels-HierarchicalStateMachine.bgf
	_dev/format zoo metamodels/HierarchicalStateMachine metamodels/HierarchicalStateMachine
	cp zoo/metamodels/HierarchicalStateMachine.bnf zoo/bulk/metamodels-HierarchicalStateMachine.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/HybridAutomata/grammar.bgf > zoo/metamodels/HybridAutomata.bgf
	cp zoo/metamodels/HybridAutomata.bgf zoo/bulk/metamodels-HybridAutomata.bgf
	_dev/format zoo metamodels/HybridAutomata metamodels/HybridAutomata
	cp zoo/metamodels/HybridAutomata.bnf zoo/bulk/metamodels-HybridAutomata.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ifc2x3/grammar.bgf > zoo/metamodels/ifc2x3.bgf
	cp zoo/metamodels/ifc2x3.bgf zoo/bulk/metamodels-ifc2x3.bgf
	_dev/format zoo metamodels/ifc2x3 metamodels/ifc2x3
	cp zoo/metamodels/ifc2x3.bnf zoo/bulk/metamodels-ifc2x3.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/IMSTransactionMessage/grammar.bgf > zoo/metamodels/IMSTransactionMessage.bgf
	cp zoo/metamodels/IMSTransactionMessage.bgf zoo/bulk/metamodels-IMSTransactionMessage.bgf
	_dev/format zoo metamodels/IMSTransactionMessage metamodels/IMSTransactionMessage
	cp zoo/metamodels/IMSTransactionMessage.bnf zoo/bulk/metamodels-IMSTransactionMessage.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/IRL/grammar.bgf > zoo/metamodels/IRL.bgf
	cp zoo/metamodels/IRL.bgf zoo/bulk/metamodels-IRL.bgf
	_dev/format zoo metamodels/IRL metamodels/IRL
	cp zoo/metamodels/IRL.bnf zoo/bulk/metamodels-IRL.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/TroposIntegratingActorConcept/grammar.bgf > zoo/metamodels/TroposIntegratingActorConcept.bgf
	cp zoo/metamodels/TroposIntegratingActorConcept.bgf zoo/bulk/metamodels-TroposIntegratingActorConcept.bgf
	_dev/format zoo metamodels/TroposIntegratingActorConcept metamodels/TroposIntegratingActorConcept
	cp zoo/metamodels/TroposIntegratingActorConcept.bnf zoo/bulk/metamodels-TroposIntegratingActorConcept.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Jess/grammar.bgf > zoo/metamodels/Jess.bgf
	cp zoo/metamodels/Jess.bgf zoo/bulk/metamodels-Jess.bgf
	_dev/format zoo metamodels/Jess metamodels/Jess
	cp zoo/metamodels/Jess.bnf zoo/bulk/metamodels-Jess.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/logic-abstract/grammar.bgf > zoo/metamodels/logic-abstract.bgf
	cp zoo/metamodels/logic-abstract.bgf zoo/bulk/metamodels-logic-abstract.bgf
	_dev/format zoo metamodels/logic-abstract metamodels/logic-abstract
	cp zoo/metamodels/logic-abstract.bnf zoo/bulk/metamodels-logic-abstract.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/logic-concrete/grammar.bgf > zoo/metamodels/logic-concrete.bgf
	cp zoo/metamodels/logic-concrete.bgf zoo/bulk/metamodels-logic-concrete.bgf
	_dev/format zoo metamodels/logic-concrete metamodels/logic-concrete
	cp zoo/metamodels/logic-concrete.bnf zoo/bulk/metamodels-logic-concrete.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/KDM/grammar.bgf > zoo/metamodels/KDM.bgf
	cp zoo/metamodels/KDM.bgf zoo/bulk/metamodels-KDM.bgf
	_dev/format zoo metamodels/KDM metamodels/KDM
	cp zoo/metamodels/KDM.bnf zoo/bulk/metamodels-KDM.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/KDMSimplified/grammar.bgf > zoo/metamodels/KDMSimplified.bgf
	cp zoo/metamodels/KDMSimplified.bgf zoo/bulk/metamodels-KDMSimplified.bgf
	_dev/format zoo metamodels/KDMSimplified metamodels/KDMSimplified
	cp zoo/metamodels/KDMSimplified.bnf zoo/bulk/metamodels-KDMSimplified.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/KM3/grammar.bgf > zoo/metamodels/KM3.bgf
	cp zoo/metamodels/KM3.bgf zoo/bulk/metamodels-KM3.bgf
	_dev/format zoo metamodels/KM3 metamodels/KM3
	cp zoo/metamodels/KM3.bnf zoo/bulk/metamodels-KM3.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Klaper/grammar.bgf > zoo/metamodels/Klaper.bgf
	cp zoo/metamodels/Klaper.bgf zoo/bulk/metamodels-Klaper.bgf
	_dev/format zoo metamodels/Klaper metamodels/Klaper
	cp zoo/metamodels/Klaper.bnf zoo/bulk/metamodels-Klaper.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/LQN/grammar.bgf > zoo/metamodels/LQN.bgf
	cp zoo/metamodels/LQN.bgf zoo/bulk/metamodels-LQN.bgf
	_dev/format zoo metamodels/LQN metamodels/LQN
	cp zoo/metamodels/LQN.bnf zoo/bulk/metamodels-LQN.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/M/grammar.bgf > zoo/metamodels/M.bgf
	cp zoo/metamodels/M.bgf zoo/bulk/metamodels-M.bgf
	_dev/format zoo metamodels/M metamodels/M
	cp zoo/metamodels/M.bnf zoo/bulk/metamodels-M.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Marte/grammar.bgf > zoo/metamodels/Marte.bgf
	cp zoo/metamodels/Marte.bgf zoo/bulk/metamodels-Marte.bgf
	_dev/format zoo metamodels/Marte metamodels/Marte
	cp zoo/metamodels/Marte.bnf zoo/bulk/metamodels-Marte.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MAS/grammar.bgf > zoo/metamodels/MAS.bgf
	cp zoo/metamodels/MAS.bgf zoo/bulk/metamodels-MAS.bgf
	_dev/format zoo metamodels/MAS metamodels/MAS
	cp zoo/metamodels/MAS.bnf zoo/bulk/metamodels-MAS.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Matlab/grammar.bgf > zoo/metamodels/Matlab.bgf
	cp zoo/metamodels/Matlab.bgf zoo/bulk/metamodels-Matlab.bgf
	_dev/format zoo metamodels/Matlab metamodels/Matlab
	cp zoo/metamodels/Matlab.bnf zoo/bulk/metamodels-Matlab.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MTRANS/grammar.bgf > zoo/metamodels/MTRANS.bgf
	cp zoo/metamodels/MTRANS.bgf zoo/bulk/metamodels-MTRANS.bgf
	_dev/format zoo metamodels/MTRANS metamodels/MTRANS
	cp zoo/metamodels/MTRANS.bnf zoo/bulk/metamodels-MTRANS.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Maude/grammar.bgf > zoo/metamodels/Maude.bgf
	cp zoo/metamodels/Maude.bgf zoo/bulk/metamodels-Maude.bgf
	_dev/format zoo metamodels/Maude metamodels/Maude
	cp zoo/metamodels/Maude.bnf zoo/bulk/metamodels-Maude.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Measure/grammar.bgf > zoo/metamodels/Measure.bgf
	cp zoo/metamodels/Measure.bgf zoo/bulk/metamodels-Measure.bgf
	_dev/format zoo metamodels/Measure metamodels/Measure
	cp zoo/metamodels/Measure.bnf zoo/bulk/metamodels-Measure.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/METAH/grammar.bgf > zoo/metamodels/METAH.bgf
	cp zoo/metamodels/METAH.bgf zoo/bulk/metamodels-METAH.bgf
	_dev/format zoo metamodels/METAH metamodels/METAH
	cp zoo/metamodels/METAH.bnf zoo/bulk/metamodels-METAH.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Metrics/grammar.bgf > zoo/metamodels/Metrics.bgf
	cp zoo/metamodels/Metrics.bgf zoo/bulk/metamodels-Metrics.bgf
	_dev/format zoo metamodels/Metrics metamodels/Metrics
	cp zoo/metamodels/Metrics.bnf zoo/bulk/metamodels-Metrics.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MiningMart/grammar.bgf > zoo/metamodels/MiningMart.bgf
	cp zoo/metamodels/MiningMart.bgf zoo/bulk/metamodels-MiningMart.bgf
	_dev/format zoo metamodels/MiningMart metamodels/MiningMart
	cp zoo/metamodels/MiningMart.bnf zoo/bulk/metamodels-MiningMart.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MoDAF-AV/grammar.bgf > zoo/metamodels/MoDAF-AV.bgf
	cp zoo/metamodels/MoDAF-AV.bgf zoo/bulk/metamodels-MoDAF-AV.bgf
	_dev/format zoo metamodels/MoDAF-AV metamodels/MoDAF-AV
	cp zoo/metamodels/MoDAF-AV.bnf zoo/bulk/metamodels-MoDAF-AV.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MonitorProgram/grammar.bgf > zoo/metamodels/MonitorProgram.bgf
	cp zoo/metamodels/MonitorProgram.bgf zoo/bulk/metamodels-MonitorProgram.bgf
	_dev/format zoo metamodels/MonitorProgram metamodels/MonitorProgram
	cp zoo/metamodels/MonitorProgram.bnf zoo/bulk/metamodels-MonitorProgram.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/mlhim2/grammar.bgf > zoo/metamodels/mlhim2.bgf
	cp zoo/metamodels/mlhim2.bgf zoo/bulk/metamodels-mlhim2.bgf
	_dev/format zoo metamodels/mlhim2 metamodels/mlhim2
	cp zoo/metamodels/mlhim2.bnf zoo/bulk/metamodels-mlhim2.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MoMM/grammar.bgf > zoo/metamodels/MoMM.bgf
	cp zoo/metamodels/MoMM.bgf zoo/bulk/metamodels-MoMM.bgf
	_dev/format zoo metamodels/MoMM metamodels/MoMM
	cp zoo/metamodels/MoMM.bnf zoo/bulk/metamodels-MoMM.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MySQL/grammar.bgf > zoo/metamodels/MySQL.bgf
	cp zoo/metamodels/MySQL.bgf zoo/bulk/metamodels-MySQL.bgf
	_dev/format zoo metamodels/MySQL metamodels/MySQL
	cp zoo/metamodels/MySQL.bnf zoo/bulk/metamodels-MySQL.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/News/grammar.bgf > zoo/metamodels/News.bgf
	cp zoo/metamodels/News.bgf zoo/bulk/metamodels-News.bgf
	_dev/format zoo metamodels/News metamodels/News
	cp zoo/metamodels/News.bnf zoo/bulk/metamodels-News.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ODP-CV/grammar.bgf > zoo/metamodels/ODP-CV.bgf
	cp zoo/metamodels/ODP-CV.bgf zoo/bulk/metamodels-ODP-CV.bgf
	_dev/format zoo metamodels/ODP-CV metamodels/ODP-CV
	cp zoo/metamodels/ODP-CV.bnf zoo/bulk/metamodels-ODP-CV.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ODP-NV/grammar.bgf > zoo/metamodels/ODP-NV.bgf
	cp zoo/metamodels/ODP-NV.bgf zoo/bulk/metamodels-ODP-NV.bgf
	_dev/format zoo metamodels/ODP-NV metamodels/ODP-NV
	cp zoo/metamodels/ODP-NV.bnf zoo/bulk/metamodels-ODP-NV.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ODP-EV/grammar.bgf > zoo/metamodels/ODP-EV.bgf
	cp zoo/metamodels/ODP-EV.bgf zoo/bulk/metamodels-ODP-EV.bgf
	_dev/format zoo metamodels/ODP-EV metamodels/ODP-EV
	cp zoo/metamodels/ODP-EV.bnf zoo/bulk/metamodels-ODP-EV.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ODP-IV/grammar.bgf > zoo/metamodels/ODP-IV.bgf
	cp zoo/metamodels/ODP-IV.bgf zoo/bulk/metamodels-ODP-IV.bgf
	_dev/format zoo metamodels/ODP-IV metamodels/ODP-IV
	cp zoo/metamodels/ODP-IV.bnf zoo/bulk/metamodels-ODP-IV.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ODP-TV/grammar.bgf > zoo/metamodels/ODP-TV.bgf
	cp zoo/metamodels/ODP-TV.bgf zoo/bulk/metamodels-ODP-TV.bgf
	_dev/format zoo metamodels/ODP-TV metamodels/ODP-TV
	cp zoo/metamodels/ODP-TV.bnf zoo/bulk/metamodels-ODP-TV.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/OWL/grammar.bgf > zoo/metamodels/OWL.bgf
	cp zoo/metamodels/OWL.bgf zoo/bulk/metamodels-OWL.bgf
	_dev/format zoo metamodels/OWL metamodels/OWL
	cp zoo/metamodels/OWL.bnf zoo/bulk/metamodels-OWL.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/OpenQVT/grammar.bgf > zoo/metamodels/OpenQVT.bgf
	cp zoo/metamodels/OpenQVT.bgf zoo/bulk/metamodels-OpenQVT.bgf
	_dev/format zoo metamodels/OpenQVT metamodels/OpenQVT
	cp zoo/metamodels/OpenQVT.bnf zoo/bulk/metamodels-OpenQVT.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/PASSI/grammar.bgf > zoo/metamodels/PASSI.bgf
	cp zoo/metamodels/PASSI.bgf zoo/bulk/metamodels-PASSI.bgf
	_dev/format zoo metamodels/PASSI metamodels/PASSI
	cp zoo/metamodels/PASSI.bnf zoo/bulk/metamodels-PASSI.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/PIF/grammar.bgf > zoo/metamodels/PIF.bgf
	cp zoo/metamodels/PIF.bgf zoo/bulk/metamodels-PIF.bgf
	_dev/format zoo metamodels/PIF metamodels/PIF
	cp zoo/metamodels/PIF.bnf zoo/bulk/metamodels-PIF.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/PRR/grammar.bgf > zoo/metamodels/PRR.bgf
	cp zoo/metamodels/PRR.bgf zoo/bulk/metamodels-PRR.bgf
	_dev/format zoo metamodels/PRR metamodels/PRR
	cp zoo/metamodels/PRR.bnf zoo/bulk/metamodels-PRR.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Parameters/grammar.bgf > zoo/metamodels/Parameters.bgf
	cp zoo/metamodels/Parameters.bgf zoo/bulk/metamodels-Parameters.bgf
	_dev/format zoo metamodels/Parameters metamodels/Parameters
	cp zoo/metamodels/Parameters.bnf zoo/bulk/metamodels-Parameters.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/PathExp/grammar.bgf > zoo/metamodels/PathExp.bgf
	cp zoo/metamodels/PathExp.bgf zoo/bulk/metamodels-PathExp.bgf
	_dev/format zoo metamodels/PathExp metamodels/PathExp
	cp zoo/metamodels/PathExp.bnf zoo/bulk/metamodels-PathExp.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Perceptory/grammar.bgf > zoo/metamodels/Perceptory.bgf
	cp zoo/metamodels/Perceptory.bgf zoo/bulk/metamodels-Perceptory.bgf
	_dev/format zoo metamodels/Perceptory metamodels/Perceptory
	cp zoo/metamodels/Perceptory.bnf zoo/bulk/metamodels-Perceptory.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Person/grammar.bgf > zoo/metamodels/Person.bgf
	cp zoo/metamodels/Person.bgf zoo/bulk/metamodels-Person.bgf
	_dev/format zoo metamodels/Person metamodels/Person
	cp zoo/metamodels/Person.bnf zoo/bulk/metamodels-Person.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GWPNV0/grammar.bgf > zoo/metamodels/GWPNV0.bgf
	cp zoo/metamodels/GWPNV0.bgf zoo/bulk/metamodels-GWPNV0.bgf
	_dev/format zoo metamodels/GWPNV0 metamodels/GWPNV0
	cp zoo/metamodels/GWPNV0.bnf zoo/bulk/metamodels-GWPNV0.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GWPNV1/grammar.bgf > zoo/metamodels/GWPNV1.bgf
	cp zoo/metamodels/GWPNV1.bgf zoo/bulk/metamodels-GWPNV1.bgf
	_dev/format zoo metamodels/GWPNV1 metamodels/GWPNV1
	cp zoo/metamodels/GWPNV1.bnf zoo/bulk/metamodels-GWPNV1.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GWPNV2/grammar.bgf > zoo/metamodels/GWPNV2.bgf
	cp zoo/metamodels/GWPNV2.bgf zoo/bulk/metamodels-GWPNV2.bgf
	_dev/format zoo metamodels/GWPNV2 metamodels/GWPNV2
	cp zoo/metamodels/GWPNV2.bnf zoo/bulk/metamodels-GWPNV2.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GWPNV3/grammar.bgf > zoo/metamodels/GWPNV3.bgf
	cp zoo/metamodels/GWPNV3.bgf zoo/bulk/metamodels-GWPNV3.bgf
	_dev/format zoo metamodels/GWPNV3 metamodels/GWPNV3
	cp zoo/metamodels/GWPNV3.bnf zoo/bulk/metamodels-GWPNV3.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GWPNV4/grammar.bgf > zoo/metamodels/GWPNV4.bgf
	cp zoo/metamodels/GWPNV4.bgf zoo/bulk/metamodels-GWPNV4.bgf
	_dev/format zoo metamodels/GWPNV4 metamodels/GWPNV4
	cp zoo/metamodels/GWPNV4.bnf zoo/bulk/metamodels-GWPNV4.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/GWPNV5/grammar.bgf > zoo/metamodels/GWPNV5.bgf
	cp zoo/metamodels/GWPNV5.bgf zoo/bulk/metamodels-GWPNV5.bgf
	_dev/format zoo metamodels/GWPNV5 metamodels/GWPNV5
	cp zoo/metamodels/GWPNV5.bnf zoo/bulk/metamodels-GWPNV5.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/PetriNet_extended/grammar.bgf > zoo/metamodels/PetriNet_extended.bgf
	cp zoo/metamodels/PetriNet_extended.bgf zoo/bulk/metamodels-PetriNet_extended.bgf
	_dev/format zoo metamodels/PetriNet_extended metamodels/PetriNet_extended
	cp zoo/metamodels/PetriNet_extended.bnf zoo/bulk/metamodels-PetriNet_extended.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/PluginEclipse/grammar.bgf > zoo/metamodels/PluginEclipse.bgf
	cp zoo/metamodels/PluginEclipse.bgf zoo/bulk/metamodels-PluginEclipse.bgf
	_dev/format zoo metamodels/PluginEclipse metamodels/PluginEclipse
	cp zoo/metamodels/PluginEclipse.bnf zoo/bulk/metamodels-PluginEclipse.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ProMarte/grammar.bgf > zoo/metamodels/ProMarte.bgf
	cp zoo/metamodels/ProMarte.bgf zoo/bulk/metamodels-ProMarte.bgf
	_dev/format zoo metamodels/ProMarte metamodels/ProMarte
	cp zoo/metamodels/ProMarte.bnf zoo/bulk/metamodels-ProMarte.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Problem/grammar.bgf > zoo/metamodels/Problem.bgf
	cp zoo/metamodels/Problem.bgf zoo/bulk/metamodels-Problem.bgf
	_dev/format zoo metamodels/Problem metamodels/Problem
	cp zoo/metamodels/Problem.bnf zoo/bulk/metamodels-Problem.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Program/grammar.bgf > zoo/metamodels/Program.bgf
	cp zoo/metamodels/Program.bgf zoo/bulk/metamodels-Program.bgf
	_dev/format zoo metamodels/Program metamodels/Program
	cp zoo/metamodels/Program.bnf zoo/bulk/metamodels-Program.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Promenade/grammar.bgf > zoo/metamodels/Promenade.bgf
	cp zoo/metamodels/Promenade.bgf zoo/bulk/metamodels-Promenade.bgf
	_dev/format zoo metamodels/Promenade metamodels/Promenade
	cp zoo/metamodels/Promenade.bnf zoo/bulk/metamodels-Promenade.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/PtolemyII/grammar.bgf > zoo/metamodels/PtolemyII.bgf
	cp zoo/metamodels/PtolemyII.bgf zoo/bulk/metamodels-PtolemyII.bgf
	_dev/format zoo metamodels/PtolemyII metamodels/PtolemyII
	cp zoo/metamodels/PtolemyII.bnf zoo/bulk/metamodels-PtolemyII.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Publication/grammar.bgf > zoo/metamodels/Publication.bgf
	cp zoo/metamodels/Publication.bgf zoo/bulk/metamodels-Publication.bgf
	_dev/format zoo metamodels/Publication metamodels/Publication
	cp zoo/metamodels/Publication.bnf zoo/bulk/metamodels-Publication.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/QVT/grammar.bgf > zoo/metamodels/QVT.bgf
	cp zoo/metamodels/QVT.bgf zoo/bulk/metamodels-QVT.bgf
	_dev/format zoo metamodels/QVT metamodels/QVT
	cp zoo/metamodels/QVT.bnf zoo/bulk/metamodels-QVT.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/QoS_Characteristic/grammar.bgf > zoo/metamodels/QoS_Characteristic.bgf
	cp zoo/metamodels/QoS_Characteristic.bgf zoo/bulk/metamodels-QoS_Characteristic.bgf
	_dev/format zoo metamodels/QoS_Characteristic metamodels/QoS_Characteristic
	cp zoo/metamodels/QoS_Characteristic.bnf zoo/bulk/metamodels-QoS_Characteristic.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/QoS_Profile/grammar.bgf > zoo/metamodels/QoS_Profile.bgf
	cp zoo/metamodels/QoS_Profile.bgf zoo/bulk/metamodels-QoS_Profile.bgf
	_dev/format zoo metamodels/QoS_Profile metamodels/QoS_Profile
	cp zoo/metamodels/QoS_Profile.bnf zoo/bulk/metamodels-QoS_Profile.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/QoS_Statement/grammar.bgf > zoo/metamodels/QoS_Statement.bgf
	cp zoo/metamodels/QoS_Statement.bgf zoo/bulk/metamodels-QoS_Statement.bgf
	_dev/format zoo metamodels/QoS_Statement metamodels/QoS_Statement
	cp zoo/metamodels/QoS_Statement.bnf zoo/bulk/metamodels-QoS_Statement.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/QoS/grammar.bgf > zoo/metamodels/QoS.bgf
	cp zoo/metamodels/QoS.bgf zoo/bulk/metamodels-QoS.bgf
	_dev/format zoo metamodels/QoS metamodels/QoS
	cp zoo/metamodels/QoS.bnf zoo/bulk/metamodels-QoS.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/RDFS/grammar.bgf > zoo/metamodels/RDFS.bgf
	cp zoo/metamodels/RDFS.bgf zoo/bulk/metamodels-RDFS.bgf
	_dev/format zoo metamodels/RDFS metamodels/RDFS
	cp zoo/metamodels/RDFS.bnf zoo/bulk/metamodels-RDFS.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Relational/grammar.bgf > zoo/metamodels/Relational.bgf
	cp zoo/metamodels/Relational.bgf zoo/bulk/metamodels-Relational.bgf
	_dev/format zoo metamodels/Relational metamodels/Relational
	cp zoo/metamodels/Relational.bnf zoo/bulk/metamodels-Relational.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/RelationalDBContent/grammar.bgf > zoo/metamodels/RelationalDBContent.bgf
	cp zoo/metamodels/RelationalDBContent.bgf zoo/bulk/metamodels-RelationalDBContent.bgf
	_dev/format zoo metamodels/RelationalDBContent metamodels/RelationalDBContent
	cp zoo/metamodels/RelationalDBContent.bnf zoo/bulk/metamodels-RelationalDBContent.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/RelationalDBSchema/grammar.bgf > zoo/metamodels/RelationalDBSchema.bgf
	cp zoo/metamodels/RelationalDBSchema.bgf zoo/bulk/metamodels-RelationalDBSchema.bgf
	_dev/format zoo metamodels/RelationalDBSchema metamodels/RelationalDBSchema
	cp zoo/metamodels/RelationalDBSchema.bnf zoo/bulk/metamodels-RelationalDBSchema.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Repository/grammar.bgf > zoo/metamodels/Repository.bgf
	cp zoo/metamodels/Repository.bgf zoo/bulk/metamodels-Repository.bgf
	_dev/format zoo metamodels/Repository metamodels/Repository
	cp zoo/metamodels/Repository.bnf zoo/bulk/metamodels-Repository.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Reqtify/grammar.bgf > zoo/metamodels/Reqtify.bgf
	cp zoo/metamodels/Reqtify.bgf zoo/bulk/metamodels-Reqtify.bgf
	_dev/format zoo metamodels/Reqtify metamodels/Reqtify
	cp zoo/metamodels/Reqtify.bnf zoo/bulk/metamodels-Reqtify.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/RequisitePro/grammar.bgf > zoo/metamodels/RequisitePro.bgf
	cp zoo/metamodels/RequisitePro.bgf zoo/bulk/metamodels-RequisitePro.bgf
	_dev/format zoo metamodels/RequisitePro metamodels/RequisitePro
	cp zoo/metamodels/RequisitePro.bnf zoo/bulk/metamodels-RequisitePro.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SBVRvoc/grammar.bgf > zoo/metamodels/SBVRvoc.bgf
	cp zoo/metamodels/SBVRvoc.bgf zoo/bulk/metamodels-SBVRvoc.bgf
	_dev/format zoo metamodels/SBVRvoc metamodels/SBVRvoc
	cp zoo/metamodels/SBVRvoc.bnf zoo/bulk/metamodels-SBVRvoc.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/sbvrEclipse/grammar.bgf > zoo/metamodels/sbvrEclipse.bgf
	cp zoo/metamodels/sbvrEclipse.bgf zoo/bulk/metamodels-sbvrEclipse.bgf
	_dev/format zoo metamodels/sbvrEclipse metamodels/sbvrEclipse
	cp zoo/metamodels/sbvrEclipse.bnf zoo/bulk/metamodels-sbvrEclipse.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/sbvrOMG/grammar.bgf > zoo/metamodels/sbvrOMG.bgf
	cp zoo/metamodels/sbvrOMG.bgf zoo/bulk/metamodels-sbvrOMG.bgf
	_dev/format zoo metamodels/sbvrOMG metamodels/sbvrOMG
	cp zoo/metamodels/sbvrOMG.bnf zoo/bulk/metamodels-sbvrOMG.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SCADE/grammar.bgf > zoo/metamodels/SCADE.bgf
	cp zoo/metamodels/SCADE.bgf zoo/bulk/metamodels-SCADE.bgf
	_dev/format zoo metamodels/SCADE metamodels/SCADE
	cp zoo/metamodels/SCADE.bnf zoo/bulk/metamodels-SCADE.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SEE_Design/grammar.bgf > zoo/metamodels/SEE_Design.bgf
	cp zoo/metamodels/SEE_Design.bgf zoo/bulk/metamodels-SEE_Design.bgf
	_dev/format zoo metamodels/SEE_Design metamodels/SEE_Design
	cp zoo/metamodels/SEE_Design.bnf zoo/bulk/metamodels-SEE_Design.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SPEM/grammar.bgf > zoo/metamodels/SPEM.bgf
	cp zoo/metamodels/SPEM.bgf zoo/bulk/metamodels-SPEM.bgf
	_dev/format zoo metamodels/SPEM metamodels/SPEM
	cp zoo/metamodels/SPEM.bnf zoo/bulk/metamodels-SPEM.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SPL/grammar.bgf > zoo/metamodels/SPL.bgf
	cp zoo/metamodels/SPL.bgf zoo/bulk/metamodels-SPL.bgf
	_dev/format zoo metamodels/SPL metamodels/SPL
	cp zoo/metamodels/SPL.bnf zoo/bulk/metamodels-SPL.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SQLDDL/grammar.bgf > zoo/metamodels/SQLDDL.bgf
	cp zoo/metamodels/SQLDDL.bgf zoo/bulk/metamodels-SQLDDL.bgf
	_dev/format zoo metamodels/SQLDDL metamodels/SQLDDL
	cp zoo/metamodels/SQLDDL.bnf zoo/bulk/metamodels-SQLDDL.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SQLDML/grammar.bgf > zoo/metamodels/SQLDML.bgf
	cp zoo/metamodels/SQLDML.bgf zoo/bulk/metamodels-SQLDML.bgf
	_dev/format zoo metamodels/SQLDML metamodels/SQLDML
	cp zoo/metamodels/SQLDML.bnf zoo/bulk/metamodels-SQLDML.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SWRC/grammar.bgf > zoo/metamodels/SWRC.bgf
	cp zoo/metamodels/SWRC.bgf zoo/bulk/metamodels-SWRC.bgf
	_dev/format zoo metamodels/SWRC metamodels/SWRC
	cp zoo/metamodels/SWRC.bnf zoo/bulk/metamodels-SWRC.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Scilab/grammar.bgf > zoo/metamodels/Scilab.bgf
	cp zoo/metamodels/Scilab.bgf zoo/bulk/metamodels-Scilab.bgf
	_dev/format zoo metamodels/Scilab metamodels/Scilab
	cp zoo/metamodels/Scilab.bnf zoo/bulk/metamodels-Scilab.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SecureUML/grammar.bgf > zoo/metamodels/SecureUML.bgf
	cp zoo/metamodels/SecureUML.bgf zoo/bulk/metamodels-SecureUML.bgf
	_dev/format zoo metamodels/SecureUML metamodels/SecureUML
	cp zoo/metamodels/SecureUML.bnf zoo/bulk/metamodels-SecureUML.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SeminarSchedulingSystem/grammar.bgf > zoo/metamodels/SeminarSchedulingSystem.bgf
	cp zoo/metamodels/SeminarSchedulingSystem.bgf zoo/bulk/metamodels-SeminarSchedulingSystem.bgf
	_dev/format zoo metamodels/SeminarSchedulingSystem metamodels/SeminarSchedulingSystem
	cp zoo/metamodels/SeminarSchedulingSystem.bnf zoo/bulk/metamodels-SeminarSchedulingSystem.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Sharengo/grammar.bgf > zoo/metamodels/Sharengo.bgf
	cp zoo/metamodels/Sharengo.bgf zoo/bulk/metamodels-Sharengo.bgf
	_dev/format zoo metamodels/Sharengo metamodels/Sharengo
	cp zoo/metamodels/Sharengo.bnf zoo/bulk/metamodels-Sharengo.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SignalFlow/grammar.bgf > zoo/metamodels/SignalFlow.bgf
	cp zoo/metamodels/SignalFlow.bgf zoo/bulk/metamodels-SignalFlow.bgf
	_dev/format zoo metamodels/SignalFlow metamodels/SignalFlow
	cp zoo/metamodels/SignalFlow.bnf zoo/bulk/metamodels-SignalFlow.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SimpleAirlineDomain/grammar.bgf > zoo/metamodels/SimpleAirlineDomain.bgf
	cp zoo/metamodels/SimpleAirlineDomain.bgf zoo/bulk/metamodels-SimpleAirlineDomain.bgf
	_dev/format zoo metamodels/SimpleAirlineDomain metamodels/SimpleAirlineDomain
	cp zoo/metamodels/SimpleAirlineDomain.bnf zoo/bulk/metamodels-SimpleAirlineDomain.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/useCase/grammar.bgf > zoo/metamodels/useCase.bgf
	cp zoo/metamodels/useCase.bgf zoo/bulk/metamodels-useCase.bgf
	_dev/format zoo metamodels/useCase metamodels/useCase
	cp zoo/metamodels/useCase.bnf zoo/bulk/metamodels-useCase.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/WSLink/grammar.bgf > zoo/metamodels/WSLink.bgf
	cp zoo/metamodels/WSLink.bgf zoo/bulk/metamodels-WSLink.bgf
	_dev/format zoo metamodels/WSLink metamodels/WSLink
	cp zoo/metamodels/WSLink.bnf zoo/bulk/metamodels-WSLink.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/WTIP_SimpleClass/grammar.bgf > zoo/metamodels/WTIP_SimpleClass.bgf
	cp zoo/metamodels/WTIP_SimpleClass.bgf zoo/bulk/metamodels-WTIP_SimpleClass.bgf
	_dev/format zoo metamodels/WTIP_SimpleClass metamodels/WTIP_SimpleClass
	cp zoo/metamodels/WTIP_SimpleClass.bnf zoo/bulk/metamodels-WTIP_SimpleClass.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/QVT_SimpleRDBMS/grammar.bgf > zoo/metamodels/QVT_SimpleRDBMS.bgf
	cp zoo/metamodels/QVT_SimpleRDBMS.bgf zoo/bulk/metamodels-QVT_SimpleRDBMS.bgf
	_dev/format zoo metamodels/QVT_SimpleRDBMS metamodels/QVT_SimpleRDBMS
	cp zoo/metamodels/QVT_SimpleRDBMS.bnf zoo/bulk/metamodels-QVT_SimpleRDBMS.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/WTIP_SimpleRDBMS/grammar.bgf > zoo/metamodels/WTIP_SimpleRDBMS.bgf
	cp zoo/metamodels/WTIP_SimpleRDBMS.bgf zoo/bulk/metamodels-WTIP_SimpleRDBMS.bgf
	_dev/format zoo metamodels/WTIP_SimpleRDBMS metamodels/WTIP_SimpleRDBMS
	cp zoo/metamodels/WTIP_SimpleRDBMS.bnf zoo/bulk/metamodels-WTIP_SimpleRDBMS.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SimpleSBVR/grammar.bgf > zoo/metamodels/SimpleSBVR.bgf
	cp zoo/metamodels/SimpleSBVR.bgf zoo/bulk/metamodels-SimpleSBVR.bgf
	_dev/format zoo metamodels/SimpleSBVR metamodels/SimpleSBVR
	cp zoo/metamodels/SimpleSBVR.bnf zoo/bulk/metamodels-SimpleSBVR.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SimulinkStateFlow/grammar.bgf > zoo/metamodels/SimulinkStateFlow.bgf
	cp zoo/metamodels/SimulinkStateFlow.bgf zoo/bulk/metamodels-SimulinkStateFlow.bgf
	_dev/format zoo metamodels/SimulinkStateFlow metamodels/SimulinkStateFlow
	cp zoo/metamodels/SimulinkStateFlow.bnf zoo/bulk/metamodels-SimulinkStateFlow.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SoftwareQualityControl/grammar.bgf > zoo/metamodels/SoftwareQualityControl.bgf
	cp zoo/metamodels/SoftwareQualityControl.bgf zoo/bulk/metamodels-SoftwareQualityControl.bgf
	_dev/format zoo metamodels/SoftwareQualityControl metamodels/SoftwareQualityControl
	cp zoo/metamodels/SoftwareQualityControl.bnf zoo/bulk/metamodels-SoftwareQualityControl.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSOfficeExcel_SpreadsheetMLBasicDef/grammar.bgf > zoo/metamodels/MSOfficeExcel_SpreadsheetMLBasicDef.bgf
	cp zoo/metamodels/MSOfficeExcel_SpreadsheetMLBasicDef.bgf zoo/bulk/metamodels-MSOfficeExcel_SpreadsheetMLBasicDef.bgf
	_dev/format zoo metamodels/MSOfficeExcel_SpreadsheetMLBasicDef metamodels/MSOfficeExcel_SpreadsheetMLBasicDef
	cp zoo/metamodels/MSOfficeExcel_SpreadsheetMLBasicDef.bnf zoo/bulk/metamodels-MSOfficeExcel_SpreadsheetMLBasicDef.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSOfficeExcel_SpreadsheetMLPrintingSetup/grammar.bgf > zoo/metamodels/MSOfficeExcel_SpreadsheetMLPrintingSetup.bgf
	cp zoo/metamodels/MSOfficeExcel_SpreadsheetMLPrintingSetup.bgf zoo/bulk/metamodels-MSOfficeExcel_SpreadsheetMLPrintingSetup.bgf
	_dev/format zoo metamodels/MSOfficeExcel_SpreadsheetMLPrintingSetup metamodels/MSOfficeExcel_SpreadsheetMLPrintingSetup
	cp zoo/metamodels/MSOfficeExcel_SpreadsheetMLPrintingSetup.bnf zoo/bulk/metamodels-MSOfficeExcel_SpreadsheetMLPrintingSetup.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSOfficeExcel_SpreadsheetMLSimplified/grammar.bgf > zoo/metamodels/MSOfficeExcel_SpreadsheetMLSimplified.bgf
	cp zoo/metamodels/MSOfficeExcel_SpreadsheetMLSimplified.bgf zoo/bulk/metamodels-MSOfficeExcel_SpreadsheetMLSimplified.bgf
	_dev/format zoo metamodels/MSOfficeExcel_SpreadsheetMLSimplified metamodels/MSOfficeExcel_SpreadsheetMLSimplified
	cp zoo/metamodels/MSOfficeExcel_SpreadsheetMLSimplified.bnf zoo/bulk/metamodels-MSOfficeExcel_SpreadsheetMLSimplified.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSOfficeExcel_SpreadsheetMLStyles/grammar.bgf > zoo/metamodels/MSOfficeExcel_SpreadsheetMLStyles.bgf
	cp zoo/metamodels/MSOfficeExcel_SpreadsheetMLStyles.bgf zoo/bulk/metamodels-MSOfficeExcel_SpreadsheetMLStyles.bgf
	_dev/format zoo metamodels/MSOfficeExcel_SpreadsheetMLStyles metamodels/MSOfficeExcel_SpreadsheetMLStyles
	cp zoo/metamodels/MSOfficeExcel_SpreadsheetMLStyles.bnf zoo/bulk/metamodels-MSOfficeExcel_SpreadsheetMLStyles.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSOfficeExcel_SpreadsheetMLWorkbookProp/grammar.bgf > zoo/metamodels/MSOfficeExcel_SpreadsheetMLWorkbookProp.bgf
	cp zoo/metamodels/MSOfficeExcel_SpreadsheetMLWorkbookProp.bgf zoo/bulk/metamodels-MSOfficeExcel_SpreadsheetMLWorkbookProp.bgf
	_dev/format zoo metamodels/MSOfficeExcel_SpreadsheetMLWorkbookProp metamodels/MSOfficeExcel_SpreadsheetMLWorkbookProp
	cp zoo/metamodels/MSOfficeExcel_SpreadsheetMLWorkbookProp.bnf zoo/bulk/metamodels-MSOfficeExcel_SpreadsheetMLWorkbookProp.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSOfficeExcel_SpreadsheetMLWorksheetOpt/grammar.bgf > zoo/metamodels/MSOfficeExcel_SpreadsheetMLWorksheetOpt.bgf
	cp zoo/metamodels/MSOfficeExcel_SpreadsheetMLWorksheetOpt.bgf zoo/bulk/metamodels-MSOfficeExcel_SpreadsheetMLWorksheetOpt.bgf
	_dev/format zoo metamodels/MSOfficeExcel_SpreadsheetMLWorksheetOpt metamodels/MSOfficeExcel_SpreadsheetMLWorksheetOpt
	cp zoo/metamodels/MSOfficeExcel_SpreadsheetMLWorksheetOpt.bnf zoo/bulk/metamodels-MSOfficeExcel_SpreadsheetMLWorksheetOpt.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SyncCharts/grammar.bgf > zoo/metamodels/SyncCharts.bgf
	cp zoo/metamodels/SyncCharts.bgf zoo/bulk/metamodels-SyncCharts.bgf
	_dev/format zoo metamodels/SyncCharts metamodels/SyncCharts
	cp zoo/metamodels/SyncCharts.bnf zoo/bulk/metamodels-SyncCharts.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SysML/grammar.bgf > zoo/metamodels/SysML.bgf
	cp zoo/metamodels/SysML.bgf zoo/bulk/metamodels-SysML.bgf
	_dev/format zoo metamodels/SysML metamodels/SysML
	cp zoo/metamodels/SysML.bnf zoo/bulk/metamodels-SysML.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/SDM/grammar.bgf > zoo/metamodels/SDM.bgf
	cp zoo/metamodels/SDM.bgf zoo/bulk/metamodels-SDM.bgf
	_dev/format zoo metamodels/SDM metamodels/SDM
	cp zoo/metamodels/SDM.bnf zoo/bulk/metamodels-SDM.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/DeploymentReport/grammar.bgf > zoo/metamodels/DeploymentReport.bgf
	cp zoo/metamodels/DeploymentReport.bgf zoo/bulk/metamodels-DeploymentReport.bgf
	_dev/format zoo metamodels/DeploymentReport metamodels/DeploymentReport
	cp zoo/metamodels/DeploymentReport.bnf zoo/bulk/metamodels-DeploymentReport.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Table/grammar.bgf > zoo/metamodels/Table.bgf
	cp zoo/metamodels/Table.bgf zoo/bulk/metamodels-Table.bgf
	_dev/format zoo metamodels/Table metamodels/Table
	cp zoo/metamodels/Table.bnf zoo/bulk/metamodels-Table.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/TextualPathExp/grammar.bgf > zoo/metamodels/TextualPathExp.bgf
	cp zoo/metamodels/TextualPathExp.bgf zoo/bulk/metamodels-TextualPathExp.bgf
	_dev/format zoo metamodels/TextualPathExp metamodels/TextualPathExp
	cp zoo/metamodels/TextualPathExp.bnf zoo/bulk/metamodels-TextualPathExp.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/Trace/grammar.bgf > zoo/metamodels/Trace.bgf
	cp zoo/metamodels/Trace.bgf zoo/bulk/metamodels-Trace.bgf
	_dev/format zoo metamodels/Trace metamodels/Trace
	cp zoo/metamodels/Trace.bnf zoo/bulk/metamodels-Trace.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/UDDI_meta-model_fragment/grammar.bgf > zoo/metamodels/UDDI_meta-model_fragment.bgf
	cp zoo/metamodels/UDDI_meta-model_fragment.bgf zoo/bulk/metamodels-UDDI_meta-model_fragment.bgf
	_dev/format zoo metamodels/UDDI_meta-model_fragment metamodels/UDDI_meta-model_fragment
	cp zoo/metamodels/UDDI_meta-model_fragment.bnf zoo/bulk/metamodels-UDDI_meta-model_fragment.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/UEML/grammar.bgf > zoo/metamodels/UEML.bgf
	cp zoo/metamodels/UEML.bgf zoo/bulk/metamodels-UEML.bgf
	_dev/format zoo metamodels/UEML metamodels/UEML
	cp zoo/metamodels/UEML.bnf zoo/bulk/metamodels-UEML.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/UEMLExtended/grammar.bgf > zoo/metamodels/UEMLExtended.bgf
	cp zoo/metamodels/UEMLExtended.bgf zoo/bulk/metamodels-UEMLExtended.bgf
	_dev/format zoo metamodels/UEMLExtended metamodels/UEMLExtended
	cp zoo/metamodels/UEMLExtended.bnf zoo/bulk/metamodels-UEMLExtended.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/UEMLExtensionCapturingAgents/grammar.bgf > zoo/metamodels/UEMLExtensionCapturingAgents.bgf
	cp zoo/metamodels/UEMLExtensionCapturingAgents.bgf zoo/bulk/metamodels-UEMLExtensionCapturingAgents.bgf
	_dev/format zoo metamodels/UEMLExtensionCapturingAgents metamodels/UEMLExtensionCapturingAgents
	cp zoo/metamodels/UEMLExtensionCapturingAgents.bnf zoo/bulk/metamodels-UEMLExtensionCapturingAgents.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/UEMLExtensionCapturingSocialEffects/grammar.bgf > zoo/metamodels/UEMLExtensionCapturingSocialEffects.bgf
	cp zoo/metamodels/UEMLExtensionCapturingSocialEffects.bgf zoo/bulk/metamodels-UEMLExtensionCapturingSocialEffects.bgf
	_dev/format zoo metamodels/UEMLExtensionCapturingSocialEffects metamodels/UEMLExtensionCapturingSocialEffects
	cp zoo/metamodels/UEMLExtensionCapturingSocialEffects.bnf zoo/bulk/metamodels-UEMLExtensionCapturingSocialEffects.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/UEMLExtensionDynamicAspects/grammar.bgf > zoo/metamodels/UEMLExtensionDynamicAspects.bgf
	cp zoo/metamodels/UEMLExtensionDynamicAspects.bgf zoo/bulk/metamodels-UEMLExtensionDynamicAspects.bgf
	_dev/format zoo metamodels/UEMLExtensionDynamicAspects metamodels/UEMLExtensionDynamicAspects
	cp zoo/metamodels/UEMLExtensionDynamicAspects.bnf zoo/bulk/metamodels-UEMLExtensionDynamicAspects.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/UEMLExtensionModelingAspects/grammar.bgf > zoo/metamodels/UEMLExtensionModelingAspects.bgf
	cp zoo/metamodels/UEMLExtensionModelingAspects.bgf zoo/bulk/metamodels-UEMLExtensionModelingAspects.bgf
	_dev/format zoo metamodels/UEMLExtensionModelingAspects metamodels/UEMLExtensionModelingAspects
	cp zoo/metamodels/UEMLExtensionModelingAspects.bnf zoo/bulk/metamodels-UEMLExtensionModelingAspects.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/USECASE1/grammar.bgf > zoo/metamodels/USECASE1.bgf
	cp zoo/metamodels/USECASE1.bgf zoo/bulk/metamodels-USECASE1.bgf
	_dev/format zoo metamodels/USECASE1 metamodels/USECASE1
	cp zoo/metamodels/USECASE1.bnf zoo/bulk/metamodels-USECASE1.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/USECASE2/grammar.bgf > zoo/metamodels/USECASE2.bgf
	cp zoo/metamodels/USECASE2.bgf zoo/bulk/metamodels-USECASE2.bgf
	_dev/format zoo metamodels/USECASE2 metamodels/USECASE2
	cp zoo/metamodels/USECASE2.bnf zoo/bulk/metamodels-USECASE2.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/UnifiedOntologyLanguage/grammar.bgf > zoo/metamodels/UnifiedOntologyLanguage.bgf
	cp zoo/metamodels/UnifiedOntologyLanguage.bgf zoo/bulk/metamodels-UnifiedOntologyLanguage.bgf
	_dev/format zoo metamodels/UnifiedOntologyLanguage metamodels/UnifiedOntologyLanguage
	cp zoo/metamodels/UnifiedOntologyLanguage.bnf zoo/bulk/metamodels-UnifiedOntologyLanguage.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/UnixFS/grammar.bgf > zoo/metamodels/UnixFS.bgf
	cp zoo/metamodels/UnixFS.bgf zoo/bulk/metamodels-UnixFS.bgf
	_dev/format zoo metamodels/UnixFS metamodels/UnixFS
	cp zoo/metamodels/UnixFS.bnf zoo/bulk/metamodels-UnixFS.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/UsiXML-task/grammar.bgf > zoo/metamodels/UsiXML-task.bgf
	cp zoo/metamodels/UsiXML-task.bgf zoo/bulk/metamodels-UsiXML-task.bgf
	_dev/format zoo metamodels/UsiXML-task metamodels/UsiXML-task
	cp zoo/metamodels/UsiXML-task.bnf zoo/bulk/metamodels-UsiXML-task.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/WSDL/grammar.bgf > zoo/metamodels/WSDL.bgf
	cp zoo/metamodels/WSDL.bgf zoo/bulk/metamodels-WSDL.bgf
	_dev/format zoo metamodels/WSDL metamodels/WSDL
	cp zoo/metamodels/WSDL.bnf zoo/bulk/metamodels-WSDL.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/WebApplications_AbstractModel/grammar.bgf > zoo/metamodels/WebApplications_AbstractModel.bgf
	cp zoo/metamodels/WebApplications_AbstractModel.bgf zoo/bulk/metamodels-WebApplications_AbstractModel.bgf
	_dev/format zoo metamodels/WebApplications_AbstractModel metamodels/WebApplications_AbstractModel
	cp zoo/metamodels/WebApplications_AbstractModel.bnf zoo/bulk/metamodels-WebApplications_AbstractModel.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/WebApplications_ConceptualModel/grammar.bgf > zoo/metamodels/WebApplications_ConceptualModel.bgf
	cp zoo/metamodels/WebApplications_ConceptualModel.bgf zoo/bulk/metamodels-WebApplications_ConceptualModel.bgf
	_dev/format zoo metamodels/WebApplications_ConceptualModel metamodels/WebApplications_ConceptualModel
	cp zoo/metamodels/WebApplications_ConceptualModel.bnf zoo/bulk/metamodels-WebApplications_ConceptualModel.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/WfMC/grammar.bgf > zoo/metamodels/WfMC.bgf
	cp zoo/metamodels/WfMC.bgf zoo/bulk/metamodels-WfMC.bgf
	_dev/format zoo metamodels/WfMC metamodels/WfMC
	cp zoo/metamodels/WfMC.bnf zoo/bulk/metamodels-WfMC.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSOfficeWord_WordprocessingMLBasicDef/grammar.bgf > zoo/metamodels/MSOfficeWord_WordprocessingMLBasicDef.bgf
	cp zoo/metamodels/MSOfficeWord_WordprocessingMLBasicDef.bgf zoo/bulk/metamodels-MSOfficeWord_WordprocessingMLBasicDef.bgf
	_dev/format zoo metamodels/MSOfficeWord_WordprocessingMLBasicDef metamodels/MSOfficeWord_WordprocessingMLBasicDef
	cp zoo/metamodels/MSOfficeWord_WordprocessingMLBasicDef.bnf zoo/bulk/metamodels-MSOfficeWord_WordprocessingMLBasicDef.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSOfficeWord_WordprocessingMLSimplified/grammar.bgf > zoo/metamodels/MSOfficeWord_WordprocessingMLSimplified.bgf
	cp zoo/metamodels/MSOfficeWord_WordprocessingMLSimplified.bgf zoo/bulk/metamodels-MSOfficeWord_WordprocessingMLSimplified.bgf
	_dev/format zoo metamodels/MSOfficeWord_WordprocessingMLSimplified metamodels/MSOfficeWord_WordprocessingMLSimplified
	cp zoo/metamodels/MSOfficeWord_WordprocessingMLSimplified.bnf zoo/bulk/metamodels-MSOfficeWord_WordprocessingMLSimplified.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSOfficeWord_WordprocessingMLStyles/grammar.bgf > zoo/metamodels/MSOfficeWord_WordprocessingMLStyles.bgf
	cp zoo/metamodels/MSOfficeWord_WordprocessingMLStyles.bgf zoo/bulk/metamodels-MSOfficeWord_WordprocessingMLStyles.bgf
	_dev/format zoo metamodels/MSOfficeWord_WordprocessingMLStyles metamodels/MSOfficeWord_WordprocessingMLStyles
	cp zoo/metamodels/MSOfficeWord_WordprocessingMLStyles.bnf zoo/bulk/metamodels-MSOfficeWord_WordprocessingMLStyles.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/MSOfficeWord_WordprocessingMLTableElts/grammar.bgf > zoo/metamodels/MSOfficeWord_WordprocessingMLTableElts.bgf
	cp zoo/metamodels/MSOfficeWord_WordprocessingMLTableElts.bgf zoo/bulk/metamodels-MSOfficeWord_WordprocessingMLTableElts.bgf
	_dev/format zoo metamodels/MSOfficeWord_WordprocessingMLTableElts metamodels/MSOfficeWord_WordprocessingMLTableElts
	cp zoo/metamodels/MSOfficeWord_WordprocessingMLTableElts.bnf zoo/bulk/metamodels-MSOfficeWord_WordprocessingMLTableElts.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/WorkDefinitions/grammar.bgf > zoo/metamodels/WorkDefinitions.bgf
	cp zoo/metamodels/WorkDefinitions.bgf zoo/bulk/metamodels-WorkDefinitions.bgf
	_dev/format zoo metamodels/WorkDefinitions metamodels/WorkDefinitions
	cp zoo/metamodels/WorkDefinitions.bnf zoo/bulk/metamodels-WorkDefinitions.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/ASM/grammar.bgf > zoo/metamodels/ASM.bgf
	cp zoo/metamodels/ASM.bgf zoo/bulk/metamodels-ASM.bgf
	_dev/format zoo metamodels/ASM metamodels/ASM
	cp zoo/metamodels/ASM.bnf zoo/bulk/metamodels-ASM.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/XPDL-1.14/grammar.bgf > zoo/metamodels/XPDL-1.14.bgf
	cp zoo/metamodels/XPDL-1.14.bgf zoo/bulk/metamodels-XPDL-1.14.bgf
	_dev/format zoo metamodels/XPDL-1.14 metamodels/XPDL-1.14
	cp zoo/metamodels/XPDL-1.14.bnf zoo/bulk/metamodels-XPDL-1.14.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metamodels/XUL-Interactorl/grammar.bgf > zoo/metamodels/XUL-Interactorl.bgf
	cp zoo/metamodels/XUL-Interactorl.bgf zoo/bulk/metamodels-XUL-Interactorl.bgf
	_dev/format zoo metamodels/XUL-Interactorl metamodels/XUL-Interactorl
	cp zoo/metamodels/XUL-Interactorl.bnf zoo/bulk/metamodels-XUL-Interactorl.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/asf-sdf/grammar.bgf > zoo/metasyntax/asf-sdf.bgf
	cp zoo/metasyntax/asf-sdf.bgf zoo/bulk/metasyntax-asf-sdf.bgf
	_dev/format zoo metasyntax/asf-sdf metasyntax/asf-sdf
	cp zoo/metasyntax/asf-sdf.bnf zoo/bulk/metasyntax-asf-sdf.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/asfix-sdf/grammar.bgf > zoo/metasyntax/asfix-sdf.bgf
	cp zoo/metasyntax/asfix-sdf.bgf zoo/bulk/metasyntax-asfix-sdf.bgf
	_dev/format zoo metasyntax/asfix-sdf metasyntax/asfix-sdf
	cp zoo/metasyntax/asfix-sdf.bnf zoo/bulk/metasyntax-asfix-sdf.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/aterms-sdf/grammar.bgf > zoo/metasyntax/aterms-sdf.bgf
	cp zoo/metasyntax/aterms-sdf.bgf zoo/bulk/metasyntax-aterms-sdf.bgf
	_dev/format zoo metasyntax/aterms-sdf metasyntax/aterms-sdf
	cp zoo/metasyntax/aterms-sdf.bnf zoo/bulk/metasyntax-aterms-sdf.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/aterms-rascal/grammar.bgf > zoo/metasyntax/aterms-rascal.bgf
	cp zoo/metasyntax/aterms-rascal.bgf zoo/bulk/metasyntax-aterms-rascal.bgf
	_dev/format zoo metasyntax/aterms-rascal metasyntax/aterms-rascal
	cp zoo/metasyntax/aterms-rascal.bnf zoo/bulk/metasyntax-aterms-rascal.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/bnf-sdf/grammar.bgf > zoo/metasyntax/bnf-sdf.bgf
	cp zoo/metasyntax/bnf-sdf.bgf zoo/bulk/metasyntax-bnf-sdf.bgf
	_dev/format zoo metasyntax/bnf-sdf metasyntax/bnf-sdf
	cp zoo/metasyntax/bnf-sdf.bnf zoo/bulk/metasyntax-bnf-sdf.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/box-sdf/grammar.bgf > zoo/metasyntax/box-sdf.bgf
	cp zoo/metasyntax/box-sdf.bgf zoo/bulk/metasyntax-box-sdf.bgf
	_dev/format zoo metasyntax/box-sdf metasyntax/box-sdf
	cp zoo/metasyntax/box-sdf.bnf zoo/bulk/metasyntax-box-sdf.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/box-rascal/grammar.bgf > zoo/metasyntax/box-rascal.bgf
	cp zoo/metasyntax/box-rascal.bgf zoo/bulk/metasyntax-box-rascal.bgf
	_dev/format zoo metasyntax/box-rascal metasyntax/box-rascal
	cp zoo/metasyntax/box-rascal.bnf zoo/bulk/metasyntax-box-rascal.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/dtd/grammar.bgf > zoo/metasyntax/dtd.bgf
	cp zoo/metasyntax/dtd.bgf zoo/bulk/metasyntax-dtd.bgf
	_dev/format zoo metasyntax/dtd metasyntax/dtd
	cp zoo/metasyntax/dtd.bnf zoo/bulk/metasyntax-dtd.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/ebnf-bgf/grammar.bgf > zoo/metasyntax/ebnf-bgf.bgf
	cp zoo/metasyntax/ebnf-bgf.bgf zoo/bulk/metasyntax-ebnf-bgf.bgf
	_dev/format zoo metasyntax/ebnf-bgf metasyntax/ebnf-bgf
	cp zoo/metasyntax/ebnf-bgf.bnf zoo/bulk/metasyntax-ebnf-bgf.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/ebnf-iso-1/grammar.bgf > zoo/metasyntax/ebnf-iso-1.bgf
	cp zoo/metasyntax/ebnf-iso-1.bgf zoo/bulk/metasyntax-ebnf-iso-1.bgf
	_dev/format zoo metasyntax/ebnf-iso-1 metasyntax/ebnf-iso-1
	cp zoo/metasyntax/ebnf-iso-1.bnf zoo/bulk/metasyntax-ebnf-iso-1.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/ebnf-iso-2/grammar.bgf > zoo/metasyntax/ebnf-iso-2.bgf
	cp zoo/metasyntax/ebnf-iso-2.bgf zoo/bulk/metasyntax-ebnf-iso-2.bgf
	_dev/format zoo metasyntax/ebnf-iso-2 metasyntax/ebnf-iso-2
	cp zoo/metasyntax/ebnf-iso-2.bnf zoo/bulk/metasyntax-ebnf-iso-2.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/ebnf-iso-3/grammar.bgf > zoo/metasyntax/ebnf-iso-3.bgf
	cp zoo/metasyntax/ebnf-iso-3.bgf zoo/bulk/metasyntax-ebnf-iso-3.bgf
	_dev/format zoo metasyntax/ebnf-iso-3 metasyntax/ebnf-iso-3
	cp zoo/metasyntax/ebnf-iso-3.bnf zoo/bulk/metasyntax-ebnf-iso-3.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/ebnf-sdf/grammar.bgf > zoo/metasyntax/ebnf-sdf.bgf
	cp zoo/metasyntax/ebnf-sdf.bgf zoo/bulk/metasyntax-ebnf-sdf.bgf
	_dev/format zoo metasyntax/ebnf-sdf metasyntax/ebnf-sdf
	cp zoo/metasyntax/ebnf-sdf.bnf zoo/bulk/metasyntax-ebnf-sdf.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/lll-ldta/grammar.bgf > zoo/metasyntax/lll-ldta.bgf
	cp zoo/metasyntax/lll-ldta.bgf zoo/bulk/metasyntax-lll-ldta.bgf
	_dev/format zoo metasyntax/lll-ldta metasyntax/lll-ldta
	cp zoo/metasyntax/lll-ldta.bnf zoo/bulk/metasyntax-lll-ldta.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/lll-kort/grammar.bgf > zoo/metasyntax/lll-kort.bgf
	cp zoo/metasyntax/lll-kort.bgf zoo/bulk/metasyntax-lll-kort.bgf
	_dev/format zoo metasyntax/lll-kort metasyntax/lll-kort
	cp zoo/metasyntax/lll-kort.bnf zoo/bulk/metasyntax-lll-kort.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/pdg/grammar.bgf > zoo/metasyntax/pdg.bgf
	cp zoo/metasyntax/pdg.bgf zoo/bulk/metasyntax-pdg.bgf
	_dev/format zoo metasyntax/pdg metasyntax/pdg
	cp zoo/metasyntax/pdg.bnf zoo/bulk/metasyntax-pdg.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/rascal-new/grammar.bgf > zoo/metasyntax/rascal-new.bgf
	cp zoo/metasyntax/rascal-new.bgf zoo/bulk/metasyntax-rascal-new.bgf
	_dev/format zoo metasyntax/rascal-new metasyntax/rascal-new
	cp zoo/metasyntax/rascal-new.bnf zoo/bulk/metasyntax-rascal-new.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/rascal-types/grammar.bgf > zoo/metasyntax/rascal-types.bgf
	cp zoo/metasyntax/rascal-types.bgf zoo/bulk/metasyntax-rascal-types.bgf
	_dev/format zoo metasyntax/rascal-types metasyntax/rascal-types
	cp zoo/metasyntax/rascal-types.bnf zoo/bulk/metasyntax-rascal-types.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/rascal-adt-simple/grammar.bgf > zoo/metasyntax/rascal-adt-simple.bgf
	cp zoo/metasyntax/rascal-adt-simple.bgf zoo/bulk/metasyntax-rascal-adt-simple.bgf
	_dev/format zoo metasyntax/rascal-adt-simple metasyntax/rascal-adt-simple
	cp zoo/metasyntax/rascal-adt-simple.bnf zoo/bulk/metasyntax-rascal-adt-simple.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/relaxng/grammar.bgf > zoo/metasyntax/relaxng.bgf
	cp zoo/metasyntax/relaxng.bgf zoo/bulk/metasyntax-relaxng.bgf
	_dev/format zoo metasyntax/relaxng metasyntax/relaxng
	cp zoo/metasyntax/relaxng.bnf zoo/bulk/metasyntax-relaxng.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/sdf-sdf/grammar.bgf > zoo/metasyntax/sdf-sdf.bgf
	cp zoo/metasyntax/sdf-sdf.bgf zoo/bulk/metasyntax-sdf-sdf.bgf
	_dev/format zoo metasyntax/sdf-sdf metasyntax/sdf-sdf
	cp zoo/metasyntax/sdf-sdf.bnf zoo/bulk/metasyntax-sdf-sdf.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/sdf-rascal/grammar.bgf > zoo/metasyntax/sdf-rascal.bgf
	cp zoo/metasyntax/sdf-rascal.bgf zoo/bulk/metasyntax-sdf-rascal.bgf
	_dev/format zoo metasyntax/sdf-rascal metasyntax/sdf-rascal
	cp zoo/metasyntax/sdf-rascal.bnf zoo/bulk/metasyntax-sdf-rascal.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/s-expressions/grammar.bgf > zoo/metasyntax/s-expressions.bgf
	cp zoo/metasyntax/s-expressions.bgf zoo/bulk/metasyntax-s-expressions.bgf
	_dev/format zoo metasyntax/s-expressions metasyntax/s-expressions
	cp zoo/metasyntax/s-expressions.bnf zoo/bulk/metasyntax-s-expressions.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/txl/grammar.bgf > zoo/metasyntax/txl.bgf
	cp zoo/metasyntax/txl.bgf zoo/bulk/metasyntax-txl.bgf
	_dev/format zoo metasyntax/txl metasyntax/txl
	cp zoo/metasyntax/txl.bnf zoo/bulk/metasyntax-txl.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/xsd/tennison/grammar.bgf > zoo/metasyntax/xsd-tennison.bgf
	cp zoo/metasyntax/xsd-tennison.bgf zoo/bulk/metasyntax-xsd-tennison.bgf
	_dev/format zoo metasyntax/xsd-tennison xsd/tennison
	cp zoo/metasyntax/xsd-tennison.bnf zoo/bulk/metasyntax-xsd-tennison.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/xsd/guyard/grammar.bgf > zoo/metasyntax/xsd-guyard.bgf
	cp zoo/metasyntax/xsd-guyard.bgf zoo/bulk/metasyntax-xsd-guyard.bgf
	_dev/format zoo metasyntax/xsd-guyard xsd/guyard
	cp zoo/metasyntax/xsd-guyard.bnf zoo/bulk/metasyntax-xsd-guyard.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/yacc-sdf/grammar.bgf > zoo/metasyntax/yacc-sdf.bgf
	cp zoo/metasyntax/yacc-sdf.bgf zoo/bulk/metasyntax-yacc-sdf.bgf
	_dev/format zoo metasyntax/yacc-sdf metasyntax/yacc-sdf
	cp zoo/metasyntax/yacc-sdf.bnf zoo/bulk/metasyntax-yacc-sdf.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/metasyntax/yacc-txl/grammar.bgf > zoo/metasyntax/yacc-txl.bgf
	cp zoo/metasyntax/yacc-txl.bgf zoo/bulk/metasyntax-yacc-txl.bgf
	_dev/format zoo metasyntax/yacc-txl metasyntax/yacc-txl
	cp zoo/metasyntax/yacc-txl.bnf zoo/bulk/metasyntax-yacc-txl.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/modula/src-052/grammar.bgf > zoo/modula/src-052.bgf
	cp zoo/modula/src-052.bgf zoo/bulk/modula-src-052.bgf
	_dev/format zoo modula/src-052 modula/src-052
	cp zoo/modula/src-052.bnf zoo/bulk/modula-src-052.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/modula/sdf/grammar.bgf > zoo/modula/sdf.bgf
	cp zoo/modula/sdf.bgf zoo/bulk/modula-sdf.bgf
	_dev/format zoo modula/sdf modula/sdf
	cp zoo/modula/sdf.bnf zoo/bulk/modula-sdf.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/modula/dagenais-cordy/grammar.bgf > zoo/modula/dagenais-cordy.bgf
	cp zoo/modula/dagenais-cordy.bgf zoo/bulk/modula-dagenais-cordy.bgf
	_dev/format zoo modula/dagenais-cordy modula/dagenais-cordy
	cp zoo/modula/dagenais-cordy.bnf zoo/bulk/modula-dagenais-cordy.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/occam/srour/grammar.bgf > zoo/occam/srour.bgf
	cp zoo/occam/srour.bgf zoo/bulk/occam-srour.bgf
	_dev/format zoo occam/srour occam/srour
	cp zoo/occam/srour.bnf zoo/bulk/occam-srour.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/occam/mu-srour/grammar.bgf > zoo/occam/mu-srour.bgf
	cp zoo/occam/mu-srour.bgf zoo/bulk/occam-mu-srour.bgf
	_dev/format zoo occam/mu-srour occam/mu-srour
	cp zoo/occam/mu-srour.bnf zoo/bulk/occam-mu-srour.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/occam/mu-mitchell/grammar.bgf > zoo/occam/mu-mitchell.bgf
	cp zoo/occam/mu-mitchell.bgf zoo/bulk/occam-mu-mitchell.bgf
	_dev/format zoo occam/mu-mitchell occam/mu-mitchell
	cp zoo/occam/mu-mitchell.bnf zoo/bulk/occam-mu-mitchell.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/ocl/expressions/grammar.bgf > zoo/ocl/expressions.bgf
	cp zoo/ocl/expressions.bgf zoo/bulk/ocl-expressions.bgf
	_dev/format zoo ocl/expressions ocl/expressions
	cp zoo/ocl/expressions.bnf zoo/bulk/ocl-expressions.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/ocl/uml/grammar.bgf > zoo/ocl/uml.bgf
	cp zoo/ocl/uml.bgf zoo/bulk/ocl-uml.bgf
	_dev/format zoo ocl/uml ocl/uml
	cp zoo/ocl/uml.bnf zoo/bulk/ocl-uml.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/ocl/operations/grammar.bgf > zoo/ocl/operations.bgf
	cp zoo/ocl/operations.bgf zoo/bulk/ocl-operations.bgf
	_dev/format zoo ocl/operations ocl/operations
	cp zoo/ocl/operations.bnf zoo/bulk/ocl-operations.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/ocl/types/grammar.bgf > zoo/ocl/types.bgf
	cp zoo/ocl/types.bgf zoo/bulk/ocl-types.bgf
	_dev/format zoo ocl/types ocl/types
	cp zoo/ocl/types.bnf zoo/bulk/ocl-types.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/ocl/values/grammar.bgf > zoo/ocl/values.bgf
	cp zoo/ocl/values.bgf zoo/bulk/ocl-values.bgf
	_dev/format zoo ocl/values ocl/values
	cp zoo/ocl/values.bnf zoo/bulk/ocl-values.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/odf/opendoc-1.0/grammar.bgf > zoo/odf/opendoc-1.0.bgf
	cp zoo/odf/opendoc-1.0.bgf zoo/bulk/odf-opendoc-1.0.bgf
	_dev/format zoo odf/opendoc-1.0 odf/opendoc-1.0
	cp zoo/odf/opendoc-1.0.bnf zoo/bulk/odf-opendoc-1.0.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/odf/opendoc-1.0-strict/grammar.bgf > zoo/odf/opendoc-1.0-strict.bgf
	cp zoo/odf/opendoc-1.0-strict.bgf zoo/bulk/odf-opendoc-1.0-strict.bgf
	_dev/format zoo odf/opendoc-1.0-strict odf/opendoc-1.0-strict
	cp zoo/odf/opendoc-1.0-strict.bnf zoo/bulk/odf-opendoc-1.0-strict.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/odf/opendoc-1.0-manifest/grammar.bgf > zoo/odf/opendoc-1.0-manifest.bgf
	cp zoo/odf/opendoc-1.0-manifest.bgf zoo/bulk/odf-opendoc-1.0-manifest.bgf
	_dev/format zoo odf/opendoc-1.0-manifest odf/opendoc-1.0-manifest
	cp zoo/odf/opendoc-1.0-manifest.bnf zoo/bulk/odf-opendoc-1.0-manifest.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/odf/opendoc-1.1/grammar.bgf > zoo/odf/opendoc-1.1.bgf
	cp zoo/odf/opendoc-1.1.bgf zoo/bulk/odf-opendoc-1.1.bgf
	_dev/format zoo odf/opendoc-1.1 odf/opendoc-1.1
	cp zoo/odf/opendoc-1.1.bnf zoo/bulk/odf-opendoc-1.1.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/odf/opendoc-1.1-strict/grammar.bgf > zoo/odf/opendoc-1.1-strict.bgf
	cp zoo/odf/opendoc-1.1-strict.bgf zoo/bulk/odf-opendoc-1.1-strict.bgf
	_dev/format zoo odf/opendoc-1.1-strict odf/opendoc-1.1-strict
	cp zoo/odf/opendoc-1.1-strict.bnf zoo/bulk/odf-opendoc-1.1-strict.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/odf/opendoc-1.1-manifest/grammar.bgf > zoo/odf/opendoc-1.1-manifest.bgf
	cp zoo/odf/opendoc-1.1-manifest.bgf zoo/bulk/odf-opendoc-1.1-manifest.bgf
	_dev/format zoo odf/opendoc-1.1-manifest odf/opendoc-1.1-manifest
	cp zoo/odf/opendoc-1.1-manifest.bnf zoo/bulk/odf-opendoc-1.1-manifest.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/odf/opendoc-1.2/grammar.bgf > zoo/odf/opendoc-1.2.bgf
	cp zoo/odf/opendoc-1.2.bgf zoo/bulk/odf-opendoc-1.2.bgf
	_dev/format zoo odf/opendoc-1.2 odf/opendoc-1.2
	cp zoo/odf/opendoc-1.2.bnf zoo/bulk/odf-opendoc-1.2.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/odf/opendoc-1.2-manifest/grammar.bgf > zoo/odf/opendoc-1.2-manifest.bgf
	cp zoo/odf/opendoc-1.2-manifest.bgf zoo/bulk/odf-opendoc-1.2-manifest.bgf
	_dev/format zoo odf/opendoc-1.2-manifest odf/opendoc-1.2-manifest
	cp zoo/odf/opendoc-1.2-manifest.bnf zoo/bulk/odf-opendoc-1.2-manifest.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/odf/opendoc-1.2-dsig/grammar.bgf > zoo/odf/opendoc-1.2-dsig.bgf
	cp zoo/odf/opendoc-1.2-dsig.bgf zoo/bulk/odf-opendoc-1.2-dsig.bgf
	_dev/format zoo odf/opendoc-1.2-dsig odf/opendoc-1.2-dsig
	cp zoo/odf/opendoc-1.2-dsig.bnf zoo/bulk/odf-opendoc-1.2-dsig.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pascal/delphi/grammar.bgf > zoo/pascal/delphi.bgf
	cp zoo/pascal/delphi.bgf zoo/bulk/pascal-delphi.bgf
	_dev/format zoo pascal/delphi pascal/delphi
	cp zoo/pascal/delphi.bnf zoo/bulk/pascal-delphi.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pascal/delphipp/grammar.bgf > zoo/pascal/delphipp.bgf
	cp zoo/pascal/delphipp.bgf zoo/bulk/pascal-delphipp.bgf
	_dev/format zoo pascal/delphipp pascal/delphipp
	cp zoo/pascal/delphipp.bnf zoo/bulk/pascal-delphipp.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pascal/object/grammar.bgf > zoo/pascal/object.bgf
	cp zoo/pascal/object.bgf zoo/bulk/pascal-object.bgf
	_dev/format zoo pascal/object pascal/object
	cp zoo/pascal/object.bnf zoo/bulk/pascal-object.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pascal/bruneliere/grammar.bgf > zoo/pascal/bruneliere.bgf
	cp zoo/pascal/bruneliere.bgf zoo/bulk/pascal-bruneliere.bgf
	_dev/format zoo pascal/bruneliere pascal/bruneliere
	cp zoo/pascal/bruneliere.bnf zoo/bulk/pascal-bruneliere.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/php/cordy/grammar.bgf > zoo/php/cordy.bgf
	cp zoo/php/cordy.bgf zoo/bulk/php-cordy.bgf
	_dev/format zoo php/cordy php/cordy
	cp zoo/php/cordy.bnf zoo/bulk/php-cordy.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pico/sdf/grammar.bgf > zoo/pico/sdf.bgf
	cp zoo/pico/sdf.bgf zoo/bulk/pico-sdf.bgf
	_dev/format zoo pico/sdf pico/sdf
	cp zoo/pico/sdf.bnf zoo/bulk/pico-sdf.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pico/rascal/grammar.bgf > zoo/pico/rascal.bgf
	cp zoo/pico/rascal.bgf zoo/bulk/pico-rascal.bgf
	_dev/format zoo pico/rascal pico/rascal
	cp zoo/pico/rascal.bnf zoo/bulk/pico-rascal.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/pl1/bruneliere/grammar.bgf > zoo/pl1/bruneliere.bgf
	cp zoo/pl1/bruneliere.bgf zoo/bulk/pl1-bruneliere.bgf
	_dev/format zoo pl1/bruneliere pl1/bruneliere
	cp zoo/pl1/bruneliere.bnf zoo/bulk/pl1-bruneliere.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/python/indent-cordy/grammar.bgf > zoo/python/indent-cordy.bgf
	cp zoo/python/indent-cordy.bgf zoo/bulk/python-indent-cordy.bgf
	_dev/format zoo python/indent-cordy python/indent-cordy
	cp zoo/python/indent-cordy.bnf zoo/bulk/python-indent-cordy.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/python/sorochan-cordy/grammar.bgf > zoo/python/sorochan-cordy.bgf
	cp zoo/python/sorochan-cordy.bgf zoo/bulk/python-sorochan-cordy.bgf
	_dev/format zoo python/sorochan-cordy python/sorochan-cordy
	cp zoo/python/sorochan-cordy.bnf zoo/bulk/python-sorochan-cordy.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/saf/abstract/grammar.bgf > zoo/saf/abstract.bgf
	cp zoo/saf/abstract.bgf zoo/bulk/saf-abstract.bgf
	_dev/format zoo saf/abstract saf/abstract
	cp zoo/saf/abstract.bnf zoo/bulk/saf-abstract.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/saf/concrete/grammar.bgf > zoo/saf/concrete.bgf
	cp zoo/saf/concrete.bgf zoo/bulk/saf-concrete.bgf
	_dev/format zoo saf/concrete saf/concrete
	cp zoo/saf/concrete.bnf zoo/bulk/saf-concrete.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/slps/btf/grammar.bgf > zoo/slps/slps-btf.bgf
	cp zoo/slps/slps-btf.bgf zoo/bulk/slps-slps-btf.bgf
	_dev/format zoo slps/slps-btf slps/btf
	cp zoo/slps/slps-btf.bnf zoo/bulk/slps-slps-btf.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/slps/edd/grammar.bgf > zoo/slps/slps-edd.bgf
	cp zoo/slps/slps-edd.bgf zoo/bulk/slps-slps-edd.bgf
	_dev/format zoo slps/slps-edd slps/edd
	cp zoo/slps/slps-edd.bnf zoo/bulk/slps-slps-edd.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/slps/exbgf/grammar.bgf > zoo/slps/slps-exbgf.bgf
	cp zoo/slps/slps-exbgf.bgf zoo/bulk/slps-slps-exbgf.bgf
	_dev/format zoo slps/slps-exbgf slps/exbgf
	cp zoo/slps/slps-exbgf.bnf zoo/bulk/slps-slps-exbgf.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/slps/xbgf-xsd/grammar.bgf > zoo/slps/slps-xbgf-xsd.bgf
	cp zoo/slps/slps-xbgf-xsd.bgf zoo/bulk/slps-slps-xbgf-xsd.bgf
	_dev/format zoo slps/slps-xbgf-xsd slps/xbgf-xsd
	cp zoo/slps/slps-xbgf-xsd.bnf zoo/bulk/slps-slps-xbgf-xsd.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/slps/xbgf-adt/grammar.bgf > zoo/slps/slps-xbgf-adt.bgf
	cp zoo/slps/slps-xbgf-adt.bgf zoo/bulk/slps-slps-xbgf-adt.bgf
	_dev/format zoo slps/slps-xbgf-adt slps/xbgf-adt
	cp zoo/slps/slps-xbgf-adt.bnf zoo/bulk/slps-slps-xbgf-adt.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/slps/xldf/grammar.bgf > zoo/slps/slps-xldf.bgf
	cp zoo/slps/slps-xldf.bgf zoo/bulk/slps-slps-xldf.bgf
	_dev/format zoo slps/slps-xldf slps/xldf
	cp zoo/slps/slps-xldf.bnf zoo/bulk/slps-slps-xldf.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/xbgf/xoutcome/grammar.bgf > zoo/slps/xbgf-xoutcome.bgf
	cp zoo/slps/xbgf-xoutcome.bgf zoo/bulk/slps-xbgf-xoutcome.bgf
	_dev/format zoo slps/xbgf-xoutcome xbgf/xoutcome
	cp zoo/slps/xbgf-xoutcome.bnf zoo/bulk/slps-xbgf-xoutcome.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/slps/cbgf-xsd/grammar.bgf > zoo/slps/slps-cbgf-xsd.bgf
	cp zoo/slps/slps-cbgf-xsd.bgf zoo/bulk/slps-slps-cbgf-xsd.bgf
	_dev/format zoo slps/slps-cbgf-xsd slps/cbgf-xsd
	cp zoo/slps/slps-cbgf-xsd.bnf zoo/bulk/slps-slps-cbgf-xsd.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/slps/cbgf-adt/grammar.bgf > zoo/slps/slps-cbgf-adt.bgf
	cp zoo/slps/slps-cbgf-adt.bgf zoo/bulk/slps-slps-cbgf-adt.bgf
	_dev/format zoo slps/slps-cbgf-adt slps/cbgf-adt
	cp zoo/slps/slps-cbgf-adt.bnf zoo/bulk/slps-slps-cbgf-adt.bnf
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
	cp zoo/uml/uml2.bgf zoo/bulk/uml-uml2.bgf
	_dev/format zoo uml/uml2 uml/uml2
	cp zoo/uml/uml2.bnf zoo/bulk/uml-uml2.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/stereo/grammar.bgf > zoo/uml/stereo.bgf
	cp zoo/uml/stereo.bgf zoo/bulk/uml-stereo.bgf
	_dev/format zoo uml/stereo uml/stereo
	cp zoo/uml/stereo.bnf zoo/bulk/uml-stereo.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/uml-uc/grammar.bgf > zoo/uml/uml-uc.bgf
	cp zoo/uml/uml-uc.bgf zoo/bulk/uml-uml-uc.bgf
	_dev/format zoo uml/uml-uc uml/uml-uc
	cp zoo/uml/uml-uc.bnf zoo/bulk/uml-uml-uc.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/reuse/grammar.bgf > zoo/uml/reuse.bgf
	cp zoo/uml/reuse.bgf zoo/bulk/uml-reuse.bgf
	_dev/format zoo uml/reuse uml/reuse
	cp zoo/uml/reuse.bnf zoo/bulk/uml-reuse.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/oocm/grammar.bgf > zoo/uml/oocm.bgf
	cp zoo/uml/oocm.bgf zoo/bulk/uml-oocm.bgf
	_dev/format zoo uml/oocm uml/oocm
	cp zoo/uml/oocm.bnf zoo/bulk/uml-oocm.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/fragment/grammar.bgf > zoo/uml/fragment.bgf
	cp zoo/uml/fragment.bgf zoo/bulk/uml-fragment.bgf
	_dev/format zoo uml/fragment uml/fragment
	cp zoo/uml/fragment.bnf zoo/bulk/uml-fragment.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/extended/grammar.bgf > zoo/uml/extended.bgf
	cp zoo/uml/extended.bgf zoo/bulk/uml-extended.bgf
	_dev/format zoo uml/extended uml/extended
	cp zoo/uml/extended.bnf zoo/bulk/uml-extended.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/collab/grammar.bgf > zoo/uml/collab.bgf
	cp zoo/uml/collab.bgf zoo/bulk/uml-collab.bgf
	_dev/format zoo uml/collab uml/collab
	cp zoo/uml/collab.bnf zoo/bulk/uml-collab.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/umldi-2.0/grammar.bgf > zoo/uml/umldi-2.0.bgf
	cp zoo/uml/umldi-2.0.bgf zoo/bulk/uml-umldi-2.0.bgf
	_dev/format zoo uml/umldi-2.0 uml/umldi-2.0
	cp zoo/uml/umldi-2.0.bnf zoo/bulk/uml-umldi-2.0.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/umldi-ag/grammar.bgf > zoo/uml/umldi-ag.bgf
	cp zoo/uml/umldi-ag.bgf zoo/bulk/uml-umldi-ag.bgf
	_dev/format zoo uml/umldi-ag uml/umldi-ag
	cp zoo/uml/umldi-ag.bnf zoo/bulk/uml-umldi-ag.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/umldi-c/grammar.bgf > zoo/uml/umldi-c.bgf
	cp zoo/uml/umldi-c.bgf zoo/bulk/uml-umldi-c.bgf
	_dev/format zoo uml/umldi-c uml/umldi-c
	cp zoo/uml/umldi-c.bnf zoo/bulk/uml-umldi-c.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/umldi-mm/grammar.bgf > zoo/uml/umldi-mm.bgf
	cp zoo/uml/umldi-mm.bgf zoo/bulk/uml-umldi-mm.bgf
	_dev/format zoo uml/umldi-mm uml/umldi-mm
	cp zoo/uml/umldi-mm.bnf zoo/bulk/uml-umldi-mm.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/umldi-sm/grammar.bgf > zoo/uml/umldi-sm.bgf
	cp zoo/uml/umldi-sm.bgf zoo/bulk/uml-umldi-sm.bgf
	_dev/format zoo uml/umldi-sm uml/umldi-sm
	cp zoo/uml/umldi-sm.bnf zoo/bulk/uml-umldi-sm.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/umldi-uc/grammar.bgf > zoo/uml/umldi-uc.bgf
	cp zoo/uml/umldi-uc.bgf zoo/bulk/uml-umldi-uc.bgf
	_dev/format zoo uml/umldi-uc uml/umldi-uc
	cp zoo/uml/umldi-uc.bnf zoo/bulk/uml-umldi-uc.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/simple/grammar.bgf > zoo/uml/simple.bgf
	cp zoo/uml/simple.bgf zoo/bulk/uml-simple.bgf
	_dev/format zoo uml/simple uml/simple
	cp zoo/uml/simple.bnf zoo/bulk/uml-simple.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/statecharts/grammar.bgf > zoo/uml/statecharts.bgf
	cp zoo/uml/statecharts.bgf zoo/bulk/uml-statecharts.bgf
	_dev/format zoo uml/statecharts uml/statecharts
	cp zoo/uml/statecharts.bnf zoo/bulk/uml-statecharts.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/uml/yuml/grammar.bgf > zoo/uml/yuml.bgf
	cp zoo/uml/yuml.bgf zoo/bulk/uml-yuml.bgf
	_dev/format zoo uml/yuml uml/yuml
	cp zoo/uml/yuml.bnf zoo/bulk/uml-yuml.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/xml/rascal/grammar.bgf > zoo/xml/rascal.bgf
	cp zoo/xml/rascal.bgf zoo/bulk/xml-rascal.bgf
	_dev/format zoo xml/rascal xml/rascal
	cp zoo/xml/rascal.bnf zoo/bulk/xml-rascal.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/xml/zhang-cordy/grammar.bgf > zoo/xml/zhang-cordy.bgf
	cp zoo/xml/zhang-cordy.bgf zoo/bulk/xml-zhang-cordy.bgf
	_dev/format zoo xml/zhang-cordy xml/zhang-cordy
	cp zoo/xml/zhang-cordy.bnf zoo/bulk/xml-zhang-cordy.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/xml/rosendal/grammar.bgf > zoo/xml/rosendal.bgf
	cp zoo/xml/rosendal.bgf zoo/bulk/xml-rosendal.bgf
	_dev/format zoo xml/rosendal xml/rosendal
	cp zoo/xml/rosendal.bnf zoo/bulk/xml-rosendal.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/xpath/w3c-19991116/grammar.bgf > zoo/xpath/w3c-19991116.bgf
	cp zoo/xpath/w3c-19991116.bgf zoo/bulk/xpath-w3c-19991116.bgf
	_dev/format zoo xpath/w3c-19991116 xpath/w3c-19991116
	cp zoo/xpath/w3c-19991116.bnf zoo/bulk/xpath-w3c-19991116.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/xslt/clark/grammar.bgf > zoo/xslt/clark.bgf
	cp zoo/xslt/clark.bgf zoo/bulk/xslt-clark.bgf
	_dev/format zoo xslt/clark xslt/clark
	cp zoo/xslt/clark.bnf zoo/bulk/xslt-clark.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/xslt/rosendal/grammar.bgf > zoo/xslt/rosendal.bgf
	cp zoo/xslt/rosendal.bgf zoo/bulk/xslt-rosendal.bgf
	_dev/format zoo xslt/rosendal xslt/rosendal
	cp zoo/xslt/rosendal.bnf zoo/bulk/xslt-rosendal.bnf
	xsltproc _dev/label-fix.xslt ../slps/topics/grammars/xquery/rosendal/grammar.bgf > zoo/xquery/rosendal.bgf
	cp zoo/xquery/rosendal.bgf zoo/bulk/xquery-rosendal.bgf
	_dev/format zoo xquery/rosendal xquery/rosendal
	cp zoo/xquery/rosendal.bnf zoo/bulk/xquery-rosendal.bnf
	tar cfv zoo/bulk-bgf.tar zoo/bulk/*.bgf
	gzip zoo/bulk-bgf.tar
	tar cfv zoo/bulk-ebnf.tar zoo/bulk/*.bnf
	gzip zoo/bulk-ebnf.tar
	#rm -rf zoo/bulk
