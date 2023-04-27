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
    version = "1682574328";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d6290ef6582acecbf3bca1558111f2ee64375801/code-insider-x64-1682574328.tar.gz";
      sha256 = "10y4nmi1hmmcc2vrgiji1wyf3aajp38hih5srjj646qm3mhl43rd";
    };
  }
)
