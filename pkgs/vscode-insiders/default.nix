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
    version = "1613107737";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6ac9a3ecb3698e82bf901f11bbb5940f6bc3c197/code-insider-x64-1613107737.tar.gz";
      sha256 = "0sjjwaylv4dw8nrpnxd3k00dm9wzdaagfr8drlkn5nn7ldqm3i13";
    };
  }
)
