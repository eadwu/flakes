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
    version = "1670447911";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/1cf6a0823e31e26b55882af02afd41c650d461b8/code-insider-x64-1670447911.tar.gz";
      sha256 = "0pg715nxssiwxzl6hzd106m40jc7saq9dixhrc84q6q509a967l4";
    };
  }
)
