{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1593772228";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/376d9d9d785ccca128fdbb16f001446d0ad64d32/code-insider-1593772228.tar.gz";
      sha256 = "1zz5k9va53vaqcjpvzz20lqdsm5n4cbv93gz11bn8ihiiaxd5g7n";
    };
  }
)
