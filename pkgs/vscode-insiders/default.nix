{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1601992581";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2ccf79510abf8f5129c18a37432d295278525157/code-insider-x64-1601992581.tar.gz";
      sha256 = "1lminln6yx764mrdb03i237cb2wrniwn13wsqayzwzansdgdk3yi";
    };
  }
)
