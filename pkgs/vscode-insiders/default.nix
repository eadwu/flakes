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
    version = "1707739608";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/420099cb092f0994ecb1e7af4c679dc0ffe57fa3/code-insider-x64-1707739608.tar.gz";
      sha256 = "1rhdc7w8kvrsqbawiiaazj8wa3zh8wkcmklq24kp59wh1f8zzj3c";
    };
  }
)
