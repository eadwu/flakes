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
    version = "1610440559";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e17aea136d32fdb06d9b32184b04ccd36bb51e9c/code-insider-x64-1610440559.tar.gz";
      sha256 = "0igw6z98lmi6apl3s6sslywigqpr638fmsc4hspfh4n17zk9jiyv";
    };
  }
)
