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
    version = "1739426165";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/984a65113ef245fa4a0e4184621272da0b031f5f/code-insider-x64-1739426165.tar.gz";
      sha256 = "11jkj1s4dwgwvkwix1inv0lqhbpg4bgk21791f2gpj03zrpsdp4g";
    };
  }
)
