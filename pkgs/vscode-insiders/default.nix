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
    version = "1698212126";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/18b7f75a9fab40499744c2e9c6ba9af64d5c6744/code-insider-x64-1698212126.tar.gz";
      sha256 = "116jcxmazml5frhix90l5nfd2syy1x5803ywy9cjjd72lkk3c1b9";
    };
  }
)
