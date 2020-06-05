{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1591360594";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b1ef2bf05f90dd0e6438782411ab84756f97d8f1/code-insider-1591360594.tar.gz";
      sha256 = "0h007lxy74xk2xknhy90qwb3jsk8vq4q6m8yz626dg11xm3vd9ly";
    };
  }
)
