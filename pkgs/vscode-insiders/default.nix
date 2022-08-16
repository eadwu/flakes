{ fetchurl, vscode }:
let
  vscode-unwrapped = vscode.unwrapped or vscode;
in
(
  vscode-unwrapped.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1660628800";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8e42bda5487a953d59fab7792eedd4ca209cabba/code-insider-x64-1660628800.tar.gz";
      sha256 = "08fwyq3jk1cwblr3h4sasy4ccr78b3xai4x8f7nxidy4cw0p8777";
    };
  }
)
