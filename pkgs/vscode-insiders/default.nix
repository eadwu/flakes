{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1591603176";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/24ebced0aba496bd7bdacd432aa9e877181bcf63/code-insider-1591603176.tar.gz";
      sha256 = "139hpkyyj42mz84lhc5r3rk8jn54wwgdz0acqaz264yj6y48ldy9";
    };
  }
)
