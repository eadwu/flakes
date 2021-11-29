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
    version = "1638210217";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8c56f0cae849839138fbd83fe4d5c7219c7ff806/code-insider-x64-1638210217.tar.gz";
      sha256 = "0v9a5rvqvwyfjw993j0r4qph5j06kxkvqw9781v20macqcw0ikg1";
    };

    postPatch = "";
  }
)
