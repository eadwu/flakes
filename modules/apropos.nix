{ config, pkgs, lib, ... }:

with lib;

let
  man-db = pkgs.man-db.overrideAttrs (oldAttrs: rec {
    postPatch = (oldAttrs.postPatch or "") + ''
      # Remove all mappings, none of these even need to exist for the system build
      sed -i 's/^MANPATH_MAP/# &/' src/man_db.conf.in
      sed -i 's/^MANDB_MAP/# &/' src/man_db.conf.in
    '';
  });

  db = pkgs.runCommand "manual-page-index-cache" {
    # https://github.com/NixOS/nixpkgs/blob/076860e0340a5e4a909b9a710e186508b14d1c90/nixos/modules/config/system-path.nix
    nativeBuildInputs = with pkgs; [ man-db xz gzip bzip2 ];
  } ''
    mkdir -p $out
    echo "MANPATH_MAP	${config.system.path}/bin	${config.system.path}/share/man" >> .manpath
    echo "MANDB_MAP	${config.system.path}/share/man	$out" >> .manpath
    mandb --create --config-file="$(pwd)/.manpath"
  '';
in {
  config = mkIf config.documentation.man.enable {
    systemd.tmpfiles.rules = [ "L+ /var/cache/man/nixos - - - - ${db}" ];
  };
}
