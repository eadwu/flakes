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
    version = "1615872571";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/892a1083cb2b9b3987ff7edc85376b5d9764433d/code-insider-x64-1615872571.tar.gz";
      sha256 = "0xd10sagb24fx7bdrl1mmig670z4p979fs7mcdhc8wl0wrbagvlw";
    };
  }
)
