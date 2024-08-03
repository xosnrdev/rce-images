let
  nixpkgs =
    builtins.fetchGit {
      url = "https://github.com/NixOS/nixpkgs";
      ref = "release-24.05";
      rev = "a633d89c6dc9a2a8aae11813a62d7c58b2c0cc51";
    };

  pkgs =
    import nixpkgs {};
in
pkgs