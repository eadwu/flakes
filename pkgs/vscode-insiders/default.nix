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
    version = "1667822886";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6933e6fcef4b9b8e373130082bb6da0f2bb2b68b/code-insider-x64-1667822886.tar.gz";
      sha256 = "1pyp11wy3xda2vzn9rbvzbdd8csjh0q7rw41ya3l4pjxgwzawmzz";
    };
  }
)
