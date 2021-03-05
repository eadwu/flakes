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
    version = "1614959700";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/04770364fdc1bebeca9d1a257df2cacce06b35d6/code-insider-x64-1614959700.tar.gz";
      sha256 = "1irmdv1lxrzdv6v9rzqp9qilibxrq38cwzrh4cp6ny1n0lqn4y9i";
    };
  }
)
