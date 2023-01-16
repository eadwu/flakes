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
    version = "1673870063";

    src = fetchurl {
      url = "https://vscode.blob.core.windows.net/insider/7ef08adcc620ba1e4fcda7530c8bc907264acae9/code-insider-x64-1673870063.tar.gz";
      sha256 = "02i6m5c09kak5mnmfnjykvl31l469fg85iiszcq039qjrdy9gsp7";
    };
  }
)
