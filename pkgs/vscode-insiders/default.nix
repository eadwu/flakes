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
    version = "1604434258";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a5dfd9dcf83620a3b50dd56dc0117f83415c2ca8/code-insider-x64-1604434258.tar.gz";
      sha256 = "08gcihgy65dykp5bibgkr6237a8nmihc81gh2wk4jnwqfiyilv8c";
    };
  }
)
