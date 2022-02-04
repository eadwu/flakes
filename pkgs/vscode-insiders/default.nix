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
    version = "1643976479";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/62de8dc3f78b8bef1eb62deeb093164a8d76c254/code-insider-x64-1643976479.tar.gz";
      sha256 = "1851hcq0i4v6hmxn84966mxbfa268bjfhjjj19989aqc2788ifls";
    };

    postPatch = "";
  }
)
