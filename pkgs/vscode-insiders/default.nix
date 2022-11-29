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
    version = "1669707077";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8b9891739b703b50547f506a7e2bc9565e52beff/code-insider-x64-1669707077.tar.gz";
      sha256 = "06nhvz6j9hh1bkdly3b2hpcvr01q4lm4n8y9ivkj1210wirnkcsp";
    };
  }
)
