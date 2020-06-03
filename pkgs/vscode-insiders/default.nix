{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1591163211";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/595d2b9b916d063aadfc2c1a8c8f6df5b45572a8/code-insider-1591163211.tar.gz";
      sha256 = "1rz27xmiyxxr8j1zy62nny0i49bgzafzmk0n9i6rilrynr1g463c";
    };
  }
)
