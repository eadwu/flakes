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
    version = "1648705290";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/95e8ecaa65bf2d790a4e3b586e843435fc5c0f77/code-insider-x64-1648705290.tar.gz";
      sha256 = "030zf7rc6kxdlgild0mgjldij3x48lxnayl64hb7fm5w6r0jni1f";
    };

    postPatch = "";
  }
)
