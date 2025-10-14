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
    version = "1760470309";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/359fa23b39bb37e5157e99c2bc5fc81088dd8431/code-insider-x64-1760470309.tar.gz";
      sha256 = "12qsv41vmdqpfgwjxkplmj3irjhslzks8pi3f2j1r96sw26sffm0";
    };
  }
)
