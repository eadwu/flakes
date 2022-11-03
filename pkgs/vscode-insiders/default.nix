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
    version = "1667455331";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/86f0f9bfa268fe21af7efae37d8f0da1dba8137f/code-insider-x64-1667455331.tar.gz";
      sha256 = "1dn04h5badbdw37y7z5ami59kjqa795gcpz8a1m2lp5342hmwxjq";
    };
  }
)
