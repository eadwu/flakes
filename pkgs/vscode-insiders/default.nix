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
    version = "1702359396";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/72cb92fdc5d08101d65d59e4b1c046d397896dd2/code-insider-x64-1702359396.tar.gz";
      sha256 = "1bl7m8xbzik73axybfy43239vwj1j2hrrc556h4qrcdnay77wxk4";
    };
  }
)
