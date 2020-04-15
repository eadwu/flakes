{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1586888714";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/92ff20ac39c7507fdf4164e2bedfdfb700805fe1/code-insider-1586888714.tar.gz";
      sha256 = "05vm2bf4ysks4lli9kks6c0hccyn48gvb4k8kbfyppkkkcghhm0i";
    };
  }
)
