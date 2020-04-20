{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1587363146";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ec0d19789f89d4c25895f4a0cf364276cfb0c6ed/code-insider-1587363146.tar.gz";
      sha256 = "1vcvazx1zv0gd0lj6fn06ifslbkf26s9dlgrq4z2cfyl4d5qifj5";
    };
  }
)
