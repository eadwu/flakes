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
    version = "1612284445";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8d779a4fadaadec06b44b8875a1d3c4adba8e380/code-insider-x64-1612284445.tar.gz";
      sha256 = "0vi9awdp8ypkvscigllyacmjgzx0hk682mkx4sfnxiqqa167kbfg";
    };
  }
)
