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
    version = "1646192394";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b5205cc8eb4fbaa726835538cd82372cc0222d43/code-insider-x64-1646192394.tar.gz";
      sha256 = "0ghsb1wxqrbc12fd7h6hfpnj8grdbr9wf1ajrgfw7ayqmrhw4kvh";
    };

    postPatch = "";
  }
)
