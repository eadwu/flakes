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
    version = "1621024259";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/40d5e6796fbc32d67dd0009e5b0027003803fd7e/code-insider-x64-1621024259.tar.gz";
      sha256 = "1yhvf4sis5cd03dd0dvcfyyfhindscfmjr4dyznhkj70mchybaq0";
    };
  }
)
