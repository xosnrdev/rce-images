{ pkgs }:

let
  rceRunnerSrc =
    builtins.fetchGit {
      url = "https://github.com/xosnrdev/rce-runner.git";
      ref = "master";
      rev = "5aad0f577b576f21ac94b0c89e374886326e8b83";
    };

  rceRunner =
    import "${rceRunnerSrc}/Cargo.nix" { pkgs = pkgs; };
in
rceRunner.rootCrate.build
