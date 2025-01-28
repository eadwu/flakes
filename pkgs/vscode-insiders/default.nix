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
    version = "1738085822";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/7f434da1e8fd624b835c03f0cd878f124b2322d7/code-insider-x64-1738085822.tar.gz";
      sha256 = "0g5gnx72d4a0nqb0piz7arzgacjwsr7fxg1h9s38c6z77030rga0";
    };
  }
)
