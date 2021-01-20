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
    version = "1611173692";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/5717c0396ad20e002edebdc23f4c23cba44fb3cc/code-insider-x64-1611173692.tar.gz";
      sha256 = "147bsxqsmklcsdxiwaj72v3f97sa43sgr9chgcqdgf41j1lv7ik4";
    };
  }
)
