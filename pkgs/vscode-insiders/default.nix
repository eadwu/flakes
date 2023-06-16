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
    version = "1686910163";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/61ba389b0a7108af0411c73ab30c7e4350051645/code-insider-x64-1686910163.tar.gz";
      sha256 = "0f33l7xj5ij07w9bfkflbhycmqn5r9wx359jbqax1bvax4v0p6rc";
    };
  }
)
