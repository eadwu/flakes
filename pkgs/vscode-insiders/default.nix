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
    version = "1680759736";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/3e0b354932b8ddeb099c68ed3b7dfac25350dde2/code-insider-x64-1680759736.tar.gz";
      sha256 = "1d4wqj64c1bj9hif4vg13pfny78phv0fpmwln1rkvb5mh5df358n";
    };
  }
)
