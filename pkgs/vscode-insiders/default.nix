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
    version = "1724398549";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/36e4ddb4dbdf5d41bbeedfce2db4834085de2b87/code-insider-x64-1724398549.tar.gz";
      sha256 = "0hnk9x79f05rh11y4yjgrr7gk2y0rk5ildrvhjqg0wkr39ih4v01";
    };
  }
)
