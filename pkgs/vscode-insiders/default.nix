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
    version = "1733223321";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/a40fbb1ac10ad5c797d331eb75d1d99332ef9cbe/code-insider-x64-1733223321.tar.gz";
      sha256 = "0mrpjx3q1z597vz8bn7jd2z93bn3rgcmz890bqfc4x36pj8qdxbg";
    };
  }
)
