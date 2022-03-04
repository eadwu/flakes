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
    version = "1646372382";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6dca4c1a1f7bb3529074601eb32938526fa9ecc7/code-insider-x64-1646372382.tar.gz";
      sha256 = "0p965ny48brgj7r20nlhrnchq8dy3fxnrd3hzc33g4r1j619y04i";
    };

    postPatch = "";
  }
)
