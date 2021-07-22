{ fetchurl, vscode }:
let
  vscode-unwrapped = vscode.unwrapped or vscode;
in
(
  vscode-unwrapped.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1626932424";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/e8a59bc6f920e731b47f0bc72263e82aba8b796e/code-insider-x64-1626932424.tar.gz";
      sha256 = "006sj56fqla6am8k9ghanx6lg16x5chwwxrxnqkn9rmkvvxfpg12";
    };
  }
)
