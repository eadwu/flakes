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
    version = "1618904477";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b4816cfd1f4161a3bb272354d181a9947760ee26/code-insider-x64-1618904477.tar.gz";
      sha256 = "0mjl564h4x0nfb3md0dvg7ad9mf5jr750i17lx2sn1z2pivjqsff";
    };
  }
)
