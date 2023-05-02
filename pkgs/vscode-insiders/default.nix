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
    version = "1683027787";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/657bb89984f37b810b250955570593cde0cd62eb/code-insider-x64-1683027787.tar.gz";
      sha256 = "1my8jpj2fly3v6vzsz7sll0162h6wnb28lkwjvf7anfq94pqsyam";
    };
  }
)
