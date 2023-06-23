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
    version = "1687500772";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a5727468f373af49f785a94e13e7a2890a1097af/code-insider-x64-1687500772.tar.gz";
      sha256 = "0r50wpvpdg5h3nb6ibp5p66n9abbj4pxv1lylbrdjppf2gljj7vm";
    };
  }
)
