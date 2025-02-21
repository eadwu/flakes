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
    version = "1740029089";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/f23861839fb21c44102dac215998647b4cd02840/code-insider-x64-1740029089.tar.gz";
      sha256 = "13p9a7lr398i9hzw9xjpwdlwvir94xdkmjrj5lrpbx1j6058j4vs";
    };
  }
)
