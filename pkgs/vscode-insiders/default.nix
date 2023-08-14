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
    version = "1691991224";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2d9cc42045edf3458acbddf3d645bba993f82696/code-insider-x64-1691991224.tar.gz";
      sha256 = "19m22d6pr3fq5swwrzcb1ywyw4j19b2xd241jam5ljlgyf1mxv76";
    };
  }
)
