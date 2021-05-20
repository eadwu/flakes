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
    version = "1621488399";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/29c61570a5b9a669f777bb28b5acd5c37d99edbe/code-insider-x64-1621488399.tar.gz";
      sha256 = "1wac0g2p00qj2qdnqqqchbhmpqi1xsfab2ri75wqz4pzvyi7inry";
    };
  }
)
