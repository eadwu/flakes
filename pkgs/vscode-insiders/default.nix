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
    version = "1623822196";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/3e0c442a8ee9fdc037d627d70fe291f72af04cfd/code-insider-x64-1623822196.tar.gz";
      sha256 = "1j0p1pd9zljbsp2qsi8pcp9c777x4vcdpf5y1jxl8iawwyi06xdn";
    };
  }
)
