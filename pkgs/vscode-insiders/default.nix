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
    version = "1666244770";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/266ff5b78fc4a128994194e828e55b2bbeb0acbe/code-insider-x64-1666244770.tar.gz";
      sha256 = "0s5gaczq91dhi4mqr6g291cxvjay7afr52agxzkj4a0bigl0ymsk";
    };
  }
)
