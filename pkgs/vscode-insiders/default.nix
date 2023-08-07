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
    version = "1691433095";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/39e5dafcd66adab6f2d2ba65f6d6bde5eeb3767e/code-insider-x64-1691433095.tar.gz";
      sha256 = "1sx1arjg4lxgxj9hiq0j28xwdy92vivf808bz340gja3g7pk501c";
    };
  }
)
