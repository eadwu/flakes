{ config, pkgs, lib, ... }:

with lib;

let
  man-db = pkgs.man-db.overrideAttrs (oldAttrs: rec {
    postPatch = (oldAttrs.postPatch or "") + ''
      # Remove all mappings, none of these even need to exist for the system build
      sed -i 's/^MANPATH_MAP/# &/' src/man_db.conf.in
      sed -i 's/^MANDB_MAP/# &/' src/man_db.conf.in

      echo "MANPATH_MAP	${config.system.path}/bin	${config.system.path}/share/man" >> src/man_db.conf.in
      echo "MANPATH_MAP	/run/wrappers/bin	${config.system.path}/share/man" >> src/man_db.conf.in
    '';

    # https://github.com/NixOS/nixpkgs/blob/076860e0340a5e4a909b9a710e186508b14d1c90/nixos/modules/config/system-path.nix
    buildInputs = (oldAttrs.buildInputs or [])
      ++ (with pkgs; [ xz gzip bzip2 ]);
  });

  db = pkgs.runCommand "manual-page-index-cache" {
    nativeBuildInputs = [ man-db ];
  } ''
    mkdir -p $out/man
    echo "MANDB_MAP	${config.system.path}/share/man	$out/man" >> .manpath
    mandb --create --config-file="$(pwd)/.manpath"
  '';
in {
  config = mkIf config.documentation.man.enable {
    systemd.tmpfiles.rules = [ "L+ /var/cache/man - - - - ${db}/man" ];
  };
}
