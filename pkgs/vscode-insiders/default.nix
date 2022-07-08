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
    version = "1657259011";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/3104db414c8fedcf6e4493f14da7df0b7413853a/code-insider-x64-1657259011.tar.gz";
      sha256 = "0z8cvzb2sf58yxmz2ihvz2fp3n2a4cc86ghmwa4x9i6yr666pqnp";
    };
  }
)
