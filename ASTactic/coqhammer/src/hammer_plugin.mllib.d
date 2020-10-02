src/hammer_plugin_MLLIB_DEPENDENCIES:=src/hammer_errors src/hhlib src/hh_term src/msg src/timeout src/coq_transl_opts src/coqterms src/defhash src/coq_typing src/hashing src/coq_convert src/tptp_out src/coq_transl src/opt src/parallel src/features src/provers src/partac src/hammer
src/hammer_plugin.cma:$(addsuffix .cmo,$(src/hammer_plugin_MLLIB_DEPENDENCIES))
src/hammer_plugin.cmxa:$(addsuffix .cmx,$(src/hammer_plugin_MLLIB_DEPENDENCIES))
