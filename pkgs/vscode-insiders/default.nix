{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1598940267";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b6d4fec3714ff897f72c1dab8cc02b7421a8f131/code-insider-1598940267.tar.gz";
      sha256 = "124qfz4hv5591lj3gj5vdxkzw9cmisbgaq38jmqif0an16vn2arx";
    };
  }
)
