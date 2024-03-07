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
    version = "1709790528";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/cc1f5e3acfad98ed519befc1ebfd199777d135f4/code-insider-x64-1709790528.tar.gz";
      sha256 = "02hz1a684nabiqg70w7cqx4glbl9vq8h8g07s73z33zm2amng2lj";
    };
  }
)
