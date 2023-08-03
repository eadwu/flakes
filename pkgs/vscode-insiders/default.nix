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
    version = "1691082565";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e8b1e2bea88d34a813405a176148dd9fd17cbb1f/code-insider-x64-1691082565.tar.gz";
      sha256 = "04h9x0llymcqw40r5h4y6r8pqxjsrp5ki9qdmlzi7vj7paawrg0r";
    };
  }
)
