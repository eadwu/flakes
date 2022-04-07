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
    version = "1649309953";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/a3d53f76790d8c88f835afe85225ff6442703409/code-insider-x64-1649309953.tar.gz";
      sha256 = "1jfknhc7p7vjb9r2m8y25r1mj4q24xvyiahhlj8w7fbvf0bir5xr";
    };

    postPatch = "";
  }
)
