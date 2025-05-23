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
    version = "1747983148";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/747d0bd66a4699a53e720cf7a61dcd10f664e667/code-insider-x64-1747983148.tar.gz";
      sha256 = "05v2ikfhxny003lb48cnz1pnkbc2zzj40mbkf2ymj7gibmzh40ns";
    };
  }
)
