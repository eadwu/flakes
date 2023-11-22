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
    version = "1700544903";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/05cd2640ec8a106a4ee99cb38e6ee34fbec04f11/code-insider-x64-1700544903.tar.gz";
      sha256 = "0mwmmrgm7vasp03yp3k303qizjq9gi0y9815f6kn87z0w5nj7xb2";
    };
  }
)
