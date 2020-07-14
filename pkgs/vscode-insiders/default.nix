{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1594705955";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c828a5339bca7222fd8f56ab98361a98f736d185/code-insider-1594705955.tar.gz";
      sha256 = "0hzy0mlcl8a4xl99mk1d6b1z0s5z4f5bzimpf4z1h5pz2jb0p2hg";
    };
  }
)
