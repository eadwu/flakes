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
    version = "1676674088";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/96a795cc0b1cd62f9ff66c347637f917c6dde3da/code-insider-x64-1676674088.tar.gz";
      sha256 = "18kdlfr4iaz83mympc4cwsbh84ig437jgfzbss672cg1rcczhbmy";
    };
  }
)
