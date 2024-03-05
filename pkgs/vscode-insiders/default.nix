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
    version = "1709617639";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/d73fa8b14a6c873958d00a7d7ad13fcb540a052c/code-insider-x64-1709617639.tar.gz";
      sha256 = "0fmizkc3hchh1qc3l37y2igj0994cwdj6gwd5diifyhza41vv6mp";
    };
  }
)
