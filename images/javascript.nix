let
  pkgs =
    import ./common/nixpkgs.nix;

  build_image =
    import ./common/build_image.nix;

  rceNodeModules =
    import ./javascript/rce-node-modules/default.nix { pkgs = pkgs; };
in
build_image {
  pkgs = pkgs;
  name = "rce-images/javascript";
  tag = "latest";
  installedPackages = [
    pkgs.nodejs
  ];
  env = [
    "PATH=${pkgs.nodejs}/bin/:${rceNodeModules}/libexec/rce-node-modules/node_modules/.bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin"
    "NODE_PATH=${rceNodeModules}/libexec/rce-node-modules/node_modules"
  ];
}
