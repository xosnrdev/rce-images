#!/usr/bin/env bash
set -e

mkdir -p result
nix-build --out-link result/rce-images-assembly images/assembly.nix
nix-build --out-link result/rce-images-ats images/ats.nix
nix-build --out-link result/rce-images-bash images/bash.nix
nix-build --out-link result/rce-images-cobol images/cobol.nix
nix-build --out-link result/rce-images-coffeescript images/coffeescript.nix
nix-build --out-link result/rce-images-clang images/clang.nix
nix-build --out-link result/rce-images-clisp images/clisp.nix
nix-build --out-link result/rce-images-clojure images/clojure.nix
nix-build --out-link result/rce-images-crystal images/crystal.nix
nix-build --out-link result/rce-images-dlang images/dlang.nix
nix-build --out-link result/rce-images-dart images/dart.nix
nix-build --out-link result/rce-images-elixir images/elixir.nix
nix-build --out-link result/rce-images-elm images/elm.nix
nix-build --out-link result/rce-images-erlang images/erlang.nix
nix-build --out-link result/rce-images-golang images/golang.nix
nix-build --out-link result/rce-images-groovy images/groovy.nix
nix-build --out-link result/rce-images-guile images/guile.nix
nix-build --out-link result/rce-images-hare images/hare.nix
nix-build --out-link result/rce-images-haskell images/haskell.nix
nix-build --out-link result/rce-images-idris images/idris.nix
nix-build --out-link result/rce-images-java images/java.nix
nix-build --out-link result/rce-images-javascript images/javascript.nix
nix-build --out-link result/rce-images-julia images/julia.nix
nix-build --out-link result/rce-images-kotlin images/kotlin.nix
nix-build --out-link result/rce-images-lua images/lua.nix
nix-build --out-link result/rce-images-mercury images/mercury.nix
nix-build --out-link result/rce-images-csharp images/csharp.nix
nix-build --out-link result/rce-images-fsharp images/fsharp.nix
nix-build --out-link result/rce-images-nim images/nim.nix
nix-build --out-link result/rce-images-nix images/nix.nix
nix-build --out-link result/rce-images-ocaml images/ocaml.nix
nix-build --out-link result/rce-images-pascal images/pascal.nix
nix-build --out-link result/rce-images-perl images/perl.nix
nix-build --out-link result/rce-images-php images/php.nix
nix-build --out-link result/rce-images-python images/python.nix
nix-build --out-link result/rce-images-raku images/raku.nix
nix-build --out-link result/rce-images-ruby images/ruby.nix
nix-build --out-link result/rce-images-rust images/rust.nix
nix-build --out-link result/rce-images-sac images/sac.nix
nix-build --out-link result/rce-images-scala images/scala.nix
nix-build --out-link result/rce-images-swift images/swift.nix
nix-build --out-link result/rce-images-mercury images/mercury.nix
nix-build --out-link result/rce-images-typescript images/typescript.nix
nix-build --out-link result/rce-images-zig images/zig.nix
