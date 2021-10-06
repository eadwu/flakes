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
    version = "1633509964";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/2dc8b9580809148e312356852affc4b8d4feb7da/code-insider-x64-1633509964.tar.gz";
      sha256 = "0vwj6362jqck292m856x8c81xrmi4mx7ylz060pqz715i4b8qqqj";
    };
  }
)
