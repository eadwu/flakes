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
    version = "1739301478";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/aecf1746ff98f0554a9c73aa98031c8740411bb5/code-insider-x64-1739301478.tar.gz";
      sha256 = "12k4xs90qzw2jxv58wlma59r1fig4jb5a3qrgah5ljjkb6l0sqdb";
    };
  }
)
