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
    version = "1620970058";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/7771be8b981d4fff2c6de123dad953517253c395/code-insider-x64-1620970058.tar.gz";
      sha256 = "06fqk2cgmqvir1zz9majkxq8ajnjcbsanmhkvf1fkrd49izg6djf";
    };
  }
)
