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
    version = "1634019043";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/284e0db6c4cac1e557a43cd6691babdaafc2e1a9/code-insider-x64-1634019043.tar.gz";
      sha256 = "1w51nmk2xzc5sg23fw9n66b2li36piffcmx0lkqnrcghrrhakb3j";
    };
  }
)
