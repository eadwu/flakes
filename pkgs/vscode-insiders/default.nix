{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1594206348";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d5e9aa0227e057a60c82568bf31c04730dc15dcd/code-insider-1594206348.tar.gz";
      sha256 = "0665b4sd7a2n4xpmbrnbzd3hk1zak40qfdh6fm85ycis5f6dn76a";
    };
  }
)
