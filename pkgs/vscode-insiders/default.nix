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
    version = "1740736032";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/4e6f06d1c7ad67cb14a654cee571518f8ead0ef2/code-insider-x64-1740736032.tar.gz";
      sha256 = "043svbdfxjq1j0487p35ssrgdqdzv8dyc2p4s7a85qbbx9x8kxqh";
    };
  }
)
