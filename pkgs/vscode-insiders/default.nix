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
    version = "1723700963";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/27f650ea2366a6b99b4727b2bec9731904d52ac5/code-insider-x64-1723700963.tar.gz";
      sha256 = "19fq714nbwjxiaq6584is5nf9p5lbgbai5alx2pffgp39vxjfybz";
    };
  }
)
