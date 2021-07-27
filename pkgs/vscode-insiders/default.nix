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
    version = "1627399835";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c3b4df8f5d9c14aa4cfddb587231d0d52e72e5a2/code-insider-x64-1627399835.tar.gz";
      sha256 = "09lnvap11cbmnyklkvgw0myr6r1c5mpqh3kgj6vk64jh11vsga24";
    };
  }
)
