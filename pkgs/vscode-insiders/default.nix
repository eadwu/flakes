{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1593508336";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/04203498480e48be84d86f5763e126c7c5bf22e0/code-insider-1593508336.tar.gz";
      sha256 = "0h1cmpp1121cvsgydfsfz8qg7w6gbm3qj0pz9y51dpvs30di0ayk";
    };
  }
)
