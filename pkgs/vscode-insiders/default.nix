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
    version = "1683154723";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/70dcd62d397867fe03626f938139b834950a985c/code-insider-x64-1683154723.tar.gz";
      sha256 = "1mk0an3mp7zz6ci2h0l3ibp426izg61idlgyl5sdaal7rmi2yhcy";
    };
  }
)
