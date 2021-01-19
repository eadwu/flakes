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
    version = "1611037349";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/32b28f6f8f9dfe36efad102cc460e14a84ba756a/code-insider-x64-1611037349.tar.gz";
      sha256 = "0y4583m56dx1qkhd1x0alzayh6j86v1hds451wf7p85yd3z5i9sz";
    };
  }
)
