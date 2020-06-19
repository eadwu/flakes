{ fetchurl, vscode }:

(
  vscode.override {
    isInsiders = true;
  }
).overrideAttrs (
  _: rec {
    pname = "vscode-insiders";
    version = "1592545553";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/8cd3fe080bee38d28ba01d0d71713d6ec22b254e/code-insider-1592545553.tar.gz";
      sha256 = "0ljryc35a374ivbfqg2194fg4vqfhvjzh24wdg5g1fdp9l8lr0m8";
    };
  }
)
