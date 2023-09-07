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
    version = "1693988050";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/16e9205452dd417e32f164325b589b94892846b4/code-insider-x64-1693988050.tar.gz";
      sha256 = "1qs1z4gvw6y8idh9lmcrv5k9fcg7agc6vgccs4rbqy0k0i9r2fqb";
    };
  }
)
