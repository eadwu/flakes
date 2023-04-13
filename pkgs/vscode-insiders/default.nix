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
    version = "1681364977";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c9df8ee8e8c316f38dcc75a894ba150024ce3718/code-insider-x64-1681364977.tar.gz";
      sha256 = "1iyf6022dj26f8p4wp49m1w9xz5x72ynxmhpjzhdpjfgfkd6g6wq";
    };
  }
)
