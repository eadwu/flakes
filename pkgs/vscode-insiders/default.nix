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
    version = "1663089269";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/17c77dd9bc6af406be11e45e11627b72fba507e7/code-insider-x64-1663089269.tar.gz";
      sha256 = "11jmsd6a5cd82dhwg7fk8iwg3li7hlmzqshcmzmzdjjbjxch7r3d";
    };
  }
)
