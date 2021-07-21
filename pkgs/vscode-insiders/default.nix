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
    version = "1626845921";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/818c6613f765dd54bb29e77b4f7094a37cf67d08/code-insider-x64-1626845921.tar.gz";
      sha256 = "1xkz1d0jqan9gnbx1icjk63gs286bvscxvdp767sm2mm3p44180a";
    };
  }
)
