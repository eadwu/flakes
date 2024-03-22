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
    version = "1711086614";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/409da0445d397e37a790ce5d2499688955c3fcfa/code-insider-x64-1711086614.tar.gz";
      sha256 = "01yfq14gfrw8jv9ad0k34q2cjcbmd1qgwq9xr03334dpsj2ylv2r";
    };
  }
)
