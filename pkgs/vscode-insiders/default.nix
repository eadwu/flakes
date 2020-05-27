{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1590558881";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/876f2e70f9a2e1988887f8ca82294418afac15a2/code-insider-1590558881.tar.gz";
      sha256 = "1p9q55209jsr0avndf9dmgdk2zay2idlv1icpbp84rba0yz7z063";
    };
  }
)
