{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1603086890";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/74ef0a92fe8be7034d7d5f513e31262ab77d3bf1/code-insider-x64-1603086890.tar.gz";
      sha256 = "1mssbqzrplsi21mwrlml7q40a7z9f1mgvx53alknv7cgasnkzfsz";
    };
  }
)
