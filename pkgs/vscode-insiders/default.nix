{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1593414285";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/7923112cdd20575406ec547b55a99c289dd7d7e2/code-insider-1593414285.tar.gz";
      sha256 = "01qp3m0w9hz071wm3fbdzkks53qpqbb6fyc3z6z91gyyk4kcq02h";
    };
  }
)
