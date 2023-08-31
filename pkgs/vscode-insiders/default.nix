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
    version = "1693503281";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/3cd6f481266dcbd2ca2fcff43b4465d747c78e2f/code-insider-x64-1693503281.tar.gz";
      sha256 = "0mm9pldyrg88cp32g8pjr1i16zvfyv6gsx8k8rh19kg2lfq274bn";
    };
  }
)
