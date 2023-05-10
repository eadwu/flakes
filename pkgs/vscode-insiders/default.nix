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
    version = "1683736021";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/d0ca6131bfe1936153df2f8a11f85e3790ec1f4b/code-insider-x64-1683736021.tar.gz";
      sha256 = "1nz0lw5v3pwz3llbhfdi05krgb5rqgm2v4p4f31a6m1zjn5wcx8d";
    };
  }
)
