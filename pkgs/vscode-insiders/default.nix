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
    version = "1636638553";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c1096372119bcf83b9bd8ccee96dcf266f35de76/code-insider-x64-1636638553.tar.gz";
      sha256 = "0i84qly94q89gxcnzfbn3r7nsr921xalpnga5sfl1dl7kqvy9m5h";
    };
  }
)
