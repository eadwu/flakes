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
    version = "1628640417";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/1c445fe4c7c540d323a206f2f7cb8df9aa99d60e/code-insider-x64-1628640417.tar.gz";
      sha256 = "0g6rvpz3xnjf3ixwpqpzxc9hvnmgk9c81pl2m9bvqs5jkldqbkxi";
    };
  }
)
