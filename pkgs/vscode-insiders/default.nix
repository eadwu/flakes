{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1598428327";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/7df29b1236ecf8a21af9fe19a52923f6d69e0577/code-insider-1598428327.tar.gz";
      sha256 = "08ixs5k2hjjd5yxlgda62c79zx84vark1haslxrp10ljvzw5fkxx";
    };
  }
)
