{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1603439421";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/7a3bdf4ee9588755d447aa1c3b5db4a123fc11a9/code-insider-x64-1603439421.tar.gz";
      sha256 = "05av8ywk5csghjy0gvwk769axk74cqfp6flq5fkqhgbb3r79877n";
    };
  }
)
