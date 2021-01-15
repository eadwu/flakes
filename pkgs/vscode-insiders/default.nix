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
    version = "1610688474";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/1a6eef3170be2a11751ee50d450328d458f7bfac/code-insider-x64-1610688474.tar.gz";
      sha256 = "1hvpc2pnw7mfjak7l1xdh4cyk055pj2xik7yf6qyng4293dlsikb";
    };
  }
)
