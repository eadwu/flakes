{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1600061057";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/cca20eba8974b1d6b6a9b71bf4e60a29c8f26648/code-insider-x64-1600061057.tar.gz";
      sha256 = "01fa35swxshk1aq7gny6nrqmbhlxf8pdf9hlcp1dsaczhjv9km63";
    };
  }
)
