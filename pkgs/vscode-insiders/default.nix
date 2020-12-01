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
    version = "1606819543";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/bf21395291146c014220eb70b54fdfc0a15956b5/code-insider-x64-1606819543.tar.gz";
      sha256 = "0nyl7axjgbwc3zxdp1w8jlyn4r7pm04b6h6pnjd32mpdgwfyq6n5";
    };
  }
)
