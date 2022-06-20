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
    version = "1655709635";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/4c72dedb4ad283a569f83a7389468c3ae2c642c3/code-insider-x64-1655709635.tar.gz";
      sha256 = "1svajs0wg147hq1p77iyk7fr0irqf7p752kynf3mkqf4fwry7ks3";
    };
  }
)
