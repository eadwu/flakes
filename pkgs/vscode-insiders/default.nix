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
    version = "1628660186";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/7c25c174726ab969db3f99058cdf24bcfae1cfbe/code-insider-x64-1628660186.tar.gz";
      sha256 = "1xnssl3hp2p90rhgcb0d0716ncn8dywkznx3vhnv67x88p38ykqz";
    };
  }
)
