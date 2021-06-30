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
    version = "1625031189";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/57930758db9e2c83f59b9ee1851400bd16192d32/code-insider-x64-1625031189.tar.gz";
      sha256 = "1f34357whjl9msl5nwjbxhv9yi0c0yzd39x6zqriqc53m9jaw01y";
    };
  }
)
