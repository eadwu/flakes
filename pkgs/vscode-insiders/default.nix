{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1586497631";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c12bd56a8886f31e353a45f5846f0a35a52f908e/code-insider-1586497631.tar.gz";
      sha256 = "1f7xvc110lxakgpgkz3nkp3acd5439g6kriy5xpj4mdd0k3g41cx";
    };
  }
)
