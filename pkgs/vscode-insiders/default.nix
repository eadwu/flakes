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
    version = "1653025082";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/17c75e11805103026b943c8dc4d50a35f245f76f/code-insider-x64-1653025082.tar.gz";
      sha256 = "1qb3zw86swchlc51j20j674ba1vpv27z2kg494bivwrf2mvrpp42";
    };

    postPatch = "";
  }
)
