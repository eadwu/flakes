{ pkgs, lib, ... }:

with lib;

let
  privacy-haters = pkgs.fetchgit {
    url = "git://r-36.net/privacy-haters";
    rev = "c78196804e19f6924784431d902a1a08bf4f3b09";
    sha256 = "1jrz0dg78l91x8hchk2zbs7140w9hndz0psi02kwalyg2cpxrl21";
  };
in {
  config = {
    # http://r-36.net/scm/privacy-haters/file/hosts-gen/05-hosts.block.html
    networking.hostFiles = [
      (privacy-haters + "/hosts-gen/05-hosts.block")
    ];
  };
}
