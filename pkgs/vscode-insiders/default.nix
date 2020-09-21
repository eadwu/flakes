{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1600666071";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ed3df6e1ea22603fe348c83b1ce4b4179c2d8fb3/code-insider-x64-1600666071.tar.gz";
      sha256 = "0ackb1lasid7zgfzami1kivqkyhni9qd7i3k4b050nc6djw5aspy";
    };
  }
)
