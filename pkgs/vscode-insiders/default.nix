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
    version = "1624026124";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/7dea6d7402b55671410a129661cad24b55aed9f4/code-insider-x64-1624026124.tar.gz";
      sha256 = "1000p4k58xa6fp8xwxij54bpb54n8qg444dxplmlfxzdwjy2f9k8";
    };
  }
)
