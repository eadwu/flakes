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
    version = "1653284406";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/c0769274fa136b45799edeccc0d0a2f645b75caf/code-insider-x64-1653284406.tar.gz";
      sha256 = "17chrsyb1gdqa1j3xq48l4srl13j9m3adxaw1mbpjk9f2nxy67lf";
    };

    postPatch = "";
  }
)
