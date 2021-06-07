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
    version = "1623070411";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/bf84ee619e0b67443d0307c04348fa575bc3c363/code-insider-x64-1623070411.tar.gz";
      sha256 = "01mjbhpvmqvdyyg3plfyvd8nq37jwhjbzvpjr8p0z50qsrx7z2wn";
    };
  }
)
