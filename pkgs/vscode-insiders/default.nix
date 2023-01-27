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
    version = "1674799067";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/acbbdaa41a459aab86072e8d97255cd2ea1d9529/code-insider-x64-1674799067.tar.gz";
      sha256 = "1b9lzkmch2nz3rmb1vgky7h69vmmfb8xlm9bi8jrchfr0lvl5jgz";
    };
  }
)
