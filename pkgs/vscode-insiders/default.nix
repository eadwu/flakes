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
    version = "1683179082";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f5d658848a7d39546e48b9393690b5ff18473a7b/code-insider-x64-1683179082.tar.gz";
      sha256 = "08mjfcqzdr3kh9gx7mrqhj0qhlb48lc8svdlnv293557j2f4ci4f";
    };
  }
)
