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
    version = "1741071350";

    src = fetchurl {
      url = "https://vscode.download.prss.microsoft.com/dbazure/download/insider/21d13f4350b0651abfae76b98651d7c72551dff1/code-insider-x64-1741071350.tar.gz";
      sha256 = "1mcvhf5cxllm5d4vfb14930aqwi1c2vfkc6mqbjips5q96mbssnp";
    };
  }
)
