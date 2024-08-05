{ pkgs
, name
, tag
, installedPackages
, run ? ""
, env ? [ ]
, keepContentsDirlinks ? false
}:

let
  codeRunner =
    import ./rce_runner.nix { pkgs = pkgs; };

  commonPackages = [
    pkgs.bash
    pkgs.coreutils
  ];

  commonEnv = [
    "LANG=C.UTF-8"
  ];
in
pkgs.dockerTools.buildImage {
  name = name;
  tag = tag;
  created = "now";

  contents =
    pkgs.lib.concatLists [
      commonPackages
      installedPackages
    ];

  diskSize = 8192;
  keepContentsDirlinks = keepContentsDirlinks;

  runAsRoot = ''
    ${pkgs.stdenv.shell}
    ${pkgs.dockerTools.shadowSetup}
    ${pkgs.shadow}/bin/groupadd rce
    ${pkgs.shadow}/bin/useradd -d /home/rce -g rce -s /bin/bash rce
    ${run}
    mkdir -p /tmp
    chmod 0777 /tmp
  '';

  config = {
    Env =
      pkgs.lib.concatLists [
        commonEnv
        env
      ];

    Cmd = [ "${codeRunner}/bin/rce-runner" "--path" "/home/rce" ];

    Labels = {
      "org.opencontainers.image.authors" = "xosnrdev";
      "org.opencontainers.image.source" = "https://github.com/xosnrdev/rce-images";
      "org.opencontainers.image.version" = "edge";
      "org.opencontainers.image.description" = "runtime image";
    };
  };
}
