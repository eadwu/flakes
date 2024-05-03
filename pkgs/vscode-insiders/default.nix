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
    version = "1714715530";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/a1f2ea3162c704a5890c35dde4df6ee46283d957/code-insider-x64-1714715530.tar.gz";
      sha256 = "1p7pjkh4i417hik3mplgpk51ma8dy3xlzvq6k27q88b3338nrn9c";
    };
  }
)
