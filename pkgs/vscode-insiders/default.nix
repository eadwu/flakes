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
    version = "1704432932";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/d2028ff9c7678834f810cad53f10a35718f3fcba/code-insider-x64-1704432932.tar.gz";
      sha256 = "1gf57af1q5xr2kplqq2rl16dqd37v8hw8m0x9rqgnl15nh79d41n";
    };
  }
)
