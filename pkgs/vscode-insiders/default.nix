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
    version = "1608021427";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f3e95ede9e4b9818c29a5bca3564d6fd162fb210/code-insider-x64-1608021427.tar.gz";
      sha256 = "05f2msmrpyya1h7hpsqx69bzayyyd9i5bvbhdfkwp9vva06pl6mw";
    };
  }
)
