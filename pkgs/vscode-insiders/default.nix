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
    version = "1686734655";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f3aa9a201b2455e6556797e8ffb7145d77adb792/code-insider-x64-1686734655.tar.gz";
      sha256 = "0i3h2p5l1ibfkidwgmg9ih7fsvi1xl4l6bizhsa33myihr91gaaz";
    };
  }
)
