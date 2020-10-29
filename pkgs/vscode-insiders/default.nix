{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1603951320";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2ee8b8c645ec8ab54304bacae7aa979c1d9c647a/code-insider-x64-1603951320.tar.gz";
      sha256 = "0nl3h7gllw5nljn825s5sjdz7k83j5wp0bh712by11c5vr23p09i";
    };
  }
)
