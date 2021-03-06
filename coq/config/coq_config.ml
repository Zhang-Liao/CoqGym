(* DO NOT EDIT THIS FILE: automatically generated by ../configure *)
(* Exact command that generated this file: *)
(* ./configure.ml -local -flambda-opts -O3 -unbox-closures *)

let local = true
let vmbyteflags = ["-dllib";"-lcoqrun";"-dllpath";"/home/zhangliao/Documents/Similar/CoqGym/coq/kernel/byterun";]
let coqlib = "/home/zhangliao/Documents/Similar/CoqGym/coq"
let configdir = "/home/zhangliao/Documents/Similar/CoqGym/coq/ide"
let datadir = "/home/zhangliao/Documents/Similar/CoqGym/coq/ide"
let docdir = "/home/zhangliao/Documents/Similar/CoqGym/coq/doc"
let coqlibsuffix = ""
let configdirsuffix = "ide"
let datadirsuffix = "ide"
let docdirsuffix = "doc"
let ocaml = "/home/zhangliao/.opam/4.07.1+flambda/bin//ocaml"
let ocamlfind = "/home/zhangliao/.opam/4.07.1+flambda/bin/ocamlfind"
let ocamllex = "/home/zhangliao/.opam/4.07.1+flambda/bin//ocamllex"
let camlbin = "/home/zhangliao/.opam/4.07.1+flambda/bin/"
let camllib = "/home/zhangliao/.opam/4.07.1+flambda/lib/ocaml"
let camlp5o = "/home/zhangliao/.opam/4.07.1+flambda/bin/camlp5o"
let camlp5bin = "/home/zhangliao/.opam/4.07.1+flambda/bin"
let camlp5lib = "/home/zhangliao/.opam/4.07.1+flambda/lib/camlp5"
let camlp5compat = "-loc loc"
let cflags = "-Wall -Wno-unused -g -O2"
let caml_flags = "-thread -rectypes -w +a-4-9-27-41-42-44-45-48-50-58-59   -safe-string -strict-sequence"
let best = "opt"
let version = "8.9.0"
let caml_version = "4.07.1"
let caml_version_nums = [4;7;1]
let date = "September 2020"
let compile_date = "Sep 28 2020 23:56:53"
let arch = "Linux"
let arch_is_win32 = false
let exec_extension = ""
let coqideincl = ""
let has_coqide = "no"
let gtk_platform = `X11
let has_natdynlink = true
let natdynlinkflag = "true"
let flambda_flags = ["-O3";"-unbox-closures"]
let vo_magic_number = 8900
let state_magic_number = 58900
let browser = "firefox -remote \"OpenURL(%s,new-tab)\" || firefox %s &"
let wwwcoq = "http://coq.inria.fr/"
let wwwbugtracker = "http://coq.inria.fr/bugs/"
let wwwrefman = "http://coq.inria.fr/distrib/V8.9.0/refman/"
let wwwstdlib = "http://coq.inria.fr/distrib/V8.9.0/stdlib/"
let localwwwrefman = "file://home/zhangliao/Documents/Similar/CoqGym/coq/doc/html/refman"
let bytecode_compiler = true
let native_compiler = true

let core_src_dirs = [
  "config";
  "dev";
  "lib";
  "clib";
  "kernel";
  "library";
  "engine";
  "pretyping";
  "interp";
  "parsing";
  "proofs";
  "tactics";
  "toplevel";
  "printing";
  "grammar";
  "ide";
  "stm";
  "vernac";
]

let plugins_dirs = [
  "plugins/btauto";
  "plugins/cc";
  "plugins/derive";
  "plugins/extraction";
  "plugins/firstorder";
  "plugins/funind";
  "plugins/ltac";
  "plugins/micromega";
  "plugins/nsatz";
  "plugins/omega";
  "plugins/quote";
  "plugins/romega";
  "plugins/rtauto";
  "plugins/setoid_ring";
  "plugins/ssr";
  "plugins/ssrmatching";
  "plugins/syntax";
  "plugins/xml";
]

let all_src_dirs = core_src_dirs @ plugins_dirs
