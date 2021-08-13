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
    version = "1628833345";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/58454f7bec838f79fe2422ab5914419147d82e40/code-insider-x64-1628833345.tar.gz";
      sha256 = "07rr77q0dd5yhy1br24a863mj9lmwi8vrqnwxwyx8m5ligz3lpsp";
    };
  }
)
