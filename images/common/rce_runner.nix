{ pkgs }:

let
  rceRunnerSrc =
    builtins.fetchGit {
      url = "https://github.com/xosnrdev/rce-runner.git";
      ref = "master";
      rev = "69af9115890728892815a1e12e37c685ed679bf3";
    };

  rceRunner =
    import "${rceRunnerSrc}/Cargo.nix" { pkgs = pkgs; };
in
rceRunner.rootCrate.build
