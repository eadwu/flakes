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
    version = "1738698068";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/33fc5a94a3f99ebe7087e8fe79fbe1d37a251016/code-insider-x64-1738698068.tar.gz";
      sha256 = "13lcjxdcj8xxc92riar4b5s8akrv9xwx4vxh321d30qilz2dam0q";
    };
  }
)
