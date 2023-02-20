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
    version = "1676872006";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/4e3219683563939873497516a235691aa2731274/code-insider-x64-1676872006.tar.gz";
      sha256 = "0dzw4cb86vrkm01i41kxpwqzg850j1hkxilq5jwlv0z40bgdyh2d";
    };
  }
)
