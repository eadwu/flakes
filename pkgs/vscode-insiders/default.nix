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
    version = "1634621872";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d817eda05fc021eefb82d24e4d95554c043b6ec7/code-insider-x64-1634621872.tar.gz";
      sha256 = "144q7jrphjp7yzl898fcs9qgy0dpb5rzk1a3ybcljzai054zbcb1";
    };
  }
)
