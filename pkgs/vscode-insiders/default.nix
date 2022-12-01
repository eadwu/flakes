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
    version = "1669873651";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c87fa19f7932cefa1abeac4dd85ade3983780e14/code-insider-x64-1669873651.tar.gz";
      sha256 = "1wmy34msz43qqic5r7iwk60726pz80k5kpnnxmygk6y4wcwpn5r7";
    };
  }
)
