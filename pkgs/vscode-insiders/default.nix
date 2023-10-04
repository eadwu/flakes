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
    version = "1696440813";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/4a0e77678c0295b518151ae2d706436bab96ef4f/code-insider-x64-1696440813.tar.gz";
      sha256 = "08gsa358i1f5cdz0dksmmqy49r889s4dcnrbav97w2f5yy7frdll";
    };
  }
)
