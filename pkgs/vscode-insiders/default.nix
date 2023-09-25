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
    version = "1695620043";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ca9da6c177fc4cf7429e1d0c1c52f710d6d953c6/code-insider-x64-1695620043.tar.gz";
      sha256 = "09iwl5imz37cia2w3p1n5nkaxs83551c6rbggqhpk9wxh4nkc7dz";
    };
  }
)
