{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1603346962";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9f7a586124ca121bba906b44eb8356691617957e/code-insider-x64-1603346962.tar.gz";
      sha256 = "1da2g7gl2lgxj6wij9m352ic3lv7ljkx194ayss2lnxyk7k5arqf";
    };
  }
)
