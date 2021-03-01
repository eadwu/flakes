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
    version = "1614634051";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e7989863202eac0ec4e66ca82733d968bca7527a/code-insider-x64-1614634051.tar.gz";
      sha256 = "1bjpcrjyp509izq949p8bagi05bisrja6hpl0cg8j8xsfg6kxwal";
    };
  }
)
