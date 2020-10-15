{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1602740818";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a522f37e37735c0cbe7244680250ef73d9054dd1/code-insider-x64-1602740818.tar.gz";
      sha256 = "0wvpkiyvw65l10wrg5zyxlp5zg08h65f19w23bl7xka97q924m2c";
    };
  }
)
