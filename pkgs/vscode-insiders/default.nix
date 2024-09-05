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
    version = "1725515449";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/4c94dbdf0c1ce60b7c63ad74dc8e6740b0f2de04/code-insider-x64-1725515449.tar.gz";
      sha256 = "1ys9lf79wajd793jdv7iabiw4d557jy7fh4dk9j1imaskm5iaj64";
    };
  }
)
