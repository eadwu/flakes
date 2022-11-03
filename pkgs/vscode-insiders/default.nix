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
    version = "1667502998";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e8eb39bac26ddc87f27ed69fa06c54cd230d18f9/code-insider-x64-1667502998.tar.gz";
      sha256 = "0dms2j1z55x35wsggnc3wpnxv7f3ynkh747sfrha7yykz12g3j9n";
    };
  }
)
