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
    version = "1646631609";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e80a0ca648fe9bef07070e4f7fb04e67f2243252/code-insider-x64-1646631609.tar.gz";
      sha256 = "1krcy960l3xdy283x05i74ncqjy49n98p04blf349mrw5d9j2bkd";
    };

    postPatch = "";
  }
)
