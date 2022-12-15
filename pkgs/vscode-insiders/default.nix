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
    version = "1671083406";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/1a908707b491de77cc8408ca6d5bf626cf435736/code-insider-x64-1671083406.tar.gz";
      sha256 = "0mnc8spdclnaspcg56mcf08r7w92h2j2fablk0898j743a8xz404";
    };
  }
)
