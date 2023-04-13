inputs:

{ pkgs, lib, ... }:

with lib;

{
  config = {
    # http://r-36.net/scm/privacy-haters/file/hosts-gen/05-hosts.block.html
    networking.blacklistFiles = [
      (inputs.privacy-haters + "/hosts-gen/05-hosts.block")
    ];

    # http://r-36.net/scm/privacy-haters/file/thunderbird/user.js.html
    # nixpkgs.overlays = []
  };
}
