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
    version = "1697784943";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8e11b537e3b091a8b52c7179fb623ecdeecaf4ea/code-insider-x64-1697784943.tar.gz";
      sha256 = "02j26caiyr8ldyrc3vyv6yh2rlr21dqb0ghzmcl8sqg4v96wfsms";
    };
  }
)
