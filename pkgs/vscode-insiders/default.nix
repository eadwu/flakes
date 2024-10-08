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
    version = "1728366487";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/6263ec2c6ebedf49236c02ad9fd329f975fca5f6/code-insider-x64-1728366487.tar.gz";
      sha256 = "17mg1z7yvilyghcvjm27s3kzd8fnmm2wx0zn8mckw24r223p5k34";
    };
  }
)
