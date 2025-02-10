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
    version = "1739166957";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/32a41e158d04c9777522dc567574f2a74b8f2bf9/code-insider-x64-1739166957.tar.gz";
      sha256 = "0hmkjhyglsln4xm6fgjb5mc1h26wcdncq5jzwp1nmjm7gyanhg0w";
    };
  }
)
