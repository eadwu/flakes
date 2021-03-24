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
    version = "1616574691";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8437d38d364ba93b53c1e659c20b1c86f710ec28/code-insider-x64-1616574691.tar.gz";
      sha256 = "0m3s9vs5168alz3a73myxif7f0g758fhhayj4bmnwadnkyq29gxl";
    };
  }
)
