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
    version = "1627277758";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/955a1aca9a2e4473eec4f4bdc70506a3a7c43ca7/code-insider-x64-1627277758.tar.gz";
      sha256 = "0y7snmw2a4l45alzximi0h1cmaw47gvgcz5i1zgpqwk8zyc4xrby";
    };
  }
)
