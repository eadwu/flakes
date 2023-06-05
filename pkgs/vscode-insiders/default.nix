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
    version = "1686003372";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a8e719eeed4dac1f59fc2e48ed00545c0acafc42/code-insider-x64-1686003372.tar.gz";
      sha256 = "1fnmhjgzik5r71fmkvxaf7j11lhzw9h5mcyglw3i9vmhsv25jpzx";
    };
  }
)
