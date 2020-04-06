{ config, pkgs, lib, ... }:

with lib;
let
  db = pkgs.runCommand "manual-page-index-cache" {
    # https://github.com/NixOS/nixpkgs/blob/076860e0340a5e4a909b9a710e186508b14d1c90/nixos/modules/config/system-path.nix
    # Only include the compressors included by default
    nativeBuildInputs = with pkgs; [ man-db xz gzip bzip2 ];
  } ''
    mkdir -p $out
    echo "MANPATH_MAP	${config.system.path}/bin	${config.system.path}/share/man" >> .manpath
    echo "MANDB_MAP	${config.system.path}/share/man	$out" >> .manpath
    mandb --create --user-db --config-file="$(pwd)/.manpath"
  '';
in
{
  config = mkIf config.documentation.man.enable {
    systemd.tmpfiles.rules = [ "L+ /var/cache/man/nixos - - - - ${db}" ];
  };
}
