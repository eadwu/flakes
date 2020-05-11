{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs
  (
    _: rec {
      pname = "vscode-insiders";
      version = "1589192049";

      src = fetchurl {
        url = "https://az764295.vo.msecnd.net/insider/2b472d1e4aaaecdda5ca96289869f90ae82de3a1/code-insider-1589192049.tar.gz";
        sha256 = "1dqkr7aajijcvn688wjavsq94dlrdhfa1pjw595dzjcb7gqz0v45";
      };
    }
  )
