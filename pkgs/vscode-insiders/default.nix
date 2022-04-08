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
    version = "1649396692";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6ea335e334b90a9aca753d558dec1d14741eff1e/code-insider-x64-1649396692.tar.gz";
      sha256 = "0fng80n4v9skxw1rygxxr96m940zm4nrqc03g346bjy2vmy9n6z4";
    };

    postPatch = "";
  }
)
