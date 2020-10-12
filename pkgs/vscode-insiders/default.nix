{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1602500689";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/605bc4ec1eaf8dc1acd89a0c3c5743926ed0dc09/code-insider-x64-1602500689.tar.gz";
      sha256 = "0c80qg7155q4lg6hz4qswllb0fxrr7r6d82hng7acnfyx63dn0a6";
    };
  }
)
