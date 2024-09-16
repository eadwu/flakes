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
    version = "1726465478";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/e34ecab75b0c379c17921f759a77eebaf24bebf2/code-insider-x64-1726465478.tar.gz";
      sha256 = "07bxs6jgcdvisky3x7bxdvb3pd8bs8mz2p5k5722g2zsvjilss01";
    };
  }
)
