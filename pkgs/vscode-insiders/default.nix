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
    version = "1697608011";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/58bdf2c7c40be6f4494ae35a09528708832cf357/code-insider-x64-1697608011.tar.gz";
      sha256 = "082b28vjyi7bq643bdp1m4a6hcf3i16w37kxv95dg38i8abbxnva";
    };
  }
)
