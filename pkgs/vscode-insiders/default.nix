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
    version = "1663911843";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/1f148906f1ece5c83a60ed8e211c9f387188dca3/code-insider-x64-1663911843.tar.gz";
      sha256 = "1h3ilpf0q3a803x7w9561rvrs0hrxava9ik8c0h9i2ir4n4ily11";
    };
  }
)
