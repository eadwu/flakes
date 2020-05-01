{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs
  (
    _: rec {
      pname = "vscode-insiders";
      version = "1588327146";

      src = fetchurl {
        url = "https://az764295.vo.msecnd.net/insider/ece7aaee861d7261a728d52ce436c667030ce17d/code-insider-1588327146.tar.gz";
        sha256 = "0hcmp7xk4gi6pqsxd3x47v7cnrrkmc4cqz27248i49xli32isyzi";
      };
    }
  )
