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
    version = "1702618611";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/37fe2d06d65db4b50303c5f5e8ca589a50f2287a/code-insider-x64-1702618611.tar.gz";
      sha256 = "0cyj0lrvpcvskmn1vx5aihsh9270vl9fszwn0sfsv0x8f7jb1afa";
    };
  }
)
