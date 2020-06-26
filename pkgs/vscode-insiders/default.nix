{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1593150538";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6c235c723cb2d8defb840f732eac620f54aa8b9d/code-insider-1593150538.tar.gz";
      sha256 = "1vfni2y4v9zd8wsbj6rfqbbkp24agqq9f3ckjvsif1gaii4siz45";
    };
  }
)
