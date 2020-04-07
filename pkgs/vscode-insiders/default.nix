{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1586211241";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/15297a9a4ee8d611d37f48cb59c33b3cb6145c70/code-insider-1586211241.tar.gz";
      sha256 = "0mm21qjbasbmwy8p7c5xcarl7myys1h7kwynml82b7h0k999iz3i";
    };
  }
)
