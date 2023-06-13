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
    version = "1686635025";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/79c4092768e41b16fd823e80c874dbfafdc08f55/code-insider-x64-1686635025.tar.gz";
      sha256 = "1myw60mknpp0k0r6dxy0bbjqg28aibqzrzgv26x230yjnnyw686p";
    };
  }
)
