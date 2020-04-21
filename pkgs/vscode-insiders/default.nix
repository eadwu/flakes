{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1587447851";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b83339a3a7bd8e3ec8a8b79deda9c37e0d91f094/code-insider-1587447851.tar.gz";
      sha256 = "0hl1z4r506ln8q3wgl43dc4v80y1bvc091jkjv9rmrqqs8l72xna";
    };
  }
)
