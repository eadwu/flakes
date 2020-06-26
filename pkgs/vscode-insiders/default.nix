{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1593198709";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9bf6af04dcb5c2e531cedca83cd188939ca1b0db/code-insider-1593198709.tar.gz";
      sha256 = "1hmcwrzdlk7j38id40n8paqd7lrvgwvq44wiggshhm1acvakh8r1";
    };
  }
)
