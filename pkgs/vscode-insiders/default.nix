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
    version = "1611898074";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/5a52bc29d5e9bc419077552d336ea26d904299fa/code-insider-x64-1611898074.tar.gz";
      sha256 = "0vllr5adsa4wpsqmsngd18w0qx78vm3yzisa3a0f471pvqrcai4p";
    };
  }
)
