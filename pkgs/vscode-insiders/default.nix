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
    version = "1727156784";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/f35c3823e3b7ea4c52f7fee4659bcce39b42ce9e/code-insider-x64-1727156784.tar.gz";
      sha256 = "1kw5mj95hgcqw5zmshqvjgyh5mgsv1qgpbdk47bmfwv4jw3fki1z";
    };
  }
)
