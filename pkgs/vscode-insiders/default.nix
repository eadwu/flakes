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
    version = "1668145598";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ef415578d1b1019db585718968a303eeca4b8979/code-insider-x64-1668145598.tar.gz";
      sha256 = "1gqzy75cbkqy98wd4zbj4r2c3c7y4ndc98dfwm6bbp53dl6ynz8p";
    };
  }
)
