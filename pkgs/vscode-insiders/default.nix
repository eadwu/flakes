{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1586843894";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c8826e4ff5246775ebee0fb932402de6af55ddc8/code-insider-1586843894.tar.gz";
      sha256 = "0mv5hpm4myvb1g1img6k09r6c741r88cb31n6c50ypwbqavz7v0b";
    };
  }
)
