{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1590510673";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b26e0bcf39c1b8faaf770265391b5a387d1d9172/code-insider-1590510673.tar.gz";
      sha256 = "0g1pz1cn0h8n8rxd3qardk25sd2a25y4k9a3wk5g6pc2b6isqvkh";
    };
  }
)
