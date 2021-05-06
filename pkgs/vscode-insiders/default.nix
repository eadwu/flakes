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
    version = "1620279117";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/fe23c2041f848d6c2f6bd27875112a37bcc82f84/code-insider-x64-1620279117.tar.gz";
      sha256 = "00avc0czj2jnai738j5zdg6cqrk9z0d975k5f2y1awsqghl3a1q2";
    };
  }
)
