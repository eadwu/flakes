{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs
  (
    _: rec {
      pname = "vscode-insiders";
      version = "1589521400";

      src = fetchurl {
        url = "https://az764295.vo.msecnd.net/insider/6849775440496504e0677ffcf2a46d47ad9130f5/code-insider-1589521400.tar.gz";
        sha256 = "1d16jmm3h12hrvlmknh6jpcs1mg0vy2bhmbphrmzk6kjqz98cgz1";
      };
    }
  )
