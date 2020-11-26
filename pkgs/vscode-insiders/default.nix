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
    version = "1606375471";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/0a80aacc7be1ab03ec0f94b8ac1a84949a83f35d/code-insider-x64-1606375471.tar.gz";
      sha256 = "1f92nkjmarpg50kb8j5vd2gncndlr8k6bgi2d0p9czq7v89r4ymh";
    };
  }
)
