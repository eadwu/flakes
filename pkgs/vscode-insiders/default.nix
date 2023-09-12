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
    version = "1694530889";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/03671d332bf6a34782d5adc64086bc8e083a1590/code-insider-x64-1694530889.tar.gz";
      sha256 = "1f06mw4jx21rxh8cak7cfvaqzgrz502c21g4frcpdc3fjri2rwj7";
    };
  }
)
