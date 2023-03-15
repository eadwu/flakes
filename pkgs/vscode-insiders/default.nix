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
    version = "1678859143";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/215351a4cf2bada6f5be0857e716e5386a21cb1b/code-insider-x64-1678859143.tar.gz";
      sha256 = "0xnl71l06bibw8fnji3bxpfcj68lsh910hz0gx5cxmv1fsaj3cr5";
    };
  }
)
