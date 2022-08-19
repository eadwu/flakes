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
    version = "1660887980";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/28f604dec81b609dd7e69362585f7a99d4c48f88/code-insider-x64-1660887980.tar.gz";
      sha256 = "1zypkhw6dld9cdrhfzcj2an6d7a17d2f21a8058d9xp1j32qnjww";
    };
  }
)
