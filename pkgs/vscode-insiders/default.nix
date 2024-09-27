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
    version = "1727386239";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/d445ba063ecfa7523bb84349ab8eb8ab581375dc/code-insider-x64-1727386239.tar.gz";
      sha256 = "0pd5dgql565rzs3cn8fqn5px0j8rbgvngnybzskr7jbsvivcx3im";
    };
  }
)
