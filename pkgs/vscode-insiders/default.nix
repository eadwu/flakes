{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1600414206";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/403a6895f401c397933ec5c4f7d89432a33509b6/code-insider-x64-1600414206.tar.gz";
      sha256 = "1m7z1cn4rjnvzpivwdzand5yay8kgc7jwxpi2pkif9al0cwxzamd";
    };
  }
)
