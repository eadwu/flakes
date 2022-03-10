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
    version = "1646890814";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/f407da25ec62fc82d8f038eb4ae0df1fe8ff246a/code-insider-x64-1646890814.tar.gz";
      sha256 = "1ldw392ikawyqfdaqa34d71zrzqf26ci0vdl2z43pym37gk7zk6j";
    };

    postPatch = "";
  }
)
