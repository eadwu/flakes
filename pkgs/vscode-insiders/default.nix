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
    version = "1677825946";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/06ce7933733b1ab05e410e46a6a622dfffb31927/code-insider-x64-1677825946.tar.gz";
      sha256 = "06bg9mammffvbsg3gq6kd07f5f3zgmag29b2bdg7d3k8p8fvcjvz";
    };
  }
)
