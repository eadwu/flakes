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
    version = "1656481506";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0e3304bca9e862eddc7e437e2bab8a4a4a4f33c9/code-insider-x64-1656481506.tar.gz";
      sha256 = "0vm6gc4z4wvnfg8s5hw2cwac43s2b230r86q50chri173pjx2gv5";
    };
  }
)
