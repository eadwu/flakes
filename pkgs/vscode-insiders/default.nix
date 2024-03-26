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
    version = "1711482752";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/3e41bfbe49c8ba3165dfcd3ab54db75430950774/code-insider-x64-1711482752.tar.gz";
      sha256 = "0cf21mndcy0v4pj5796sqsg9caf89xn55y7hjw2rpk0qh3pwks0q";
    };
  }
)
