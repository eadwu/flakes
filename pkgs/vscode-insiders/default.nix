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
    version = "1669182647";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/58e7c7b8865e3c3ea77055461ffb5d656a7a46af/code-insider-x64-1669182647.tar.gz";
      sha256 = "1p5f4mbh31j84b77m59rszs2dd4j7p1nniwkj1qldwf9hcs3a6in";
    };
  }
)
