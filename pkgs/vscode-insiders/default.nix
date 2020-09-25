{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1601012849";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ddc98c3f620ab1d2ecad5942ebf4736060403d67/code-insider-x64-1601012849.tar.gz";
      sha256 = "0pzqh9fna0hwsimi75zgls7jrjp2fpj87ql0iq1big27267k5agx";
    };
  }
)
