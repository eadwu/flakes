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
    version = "1625300141";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/9056b400b527c562871093916081c3e6df2691dd/code-insider-x64-1625300141.tar.gz";
      sha256 = "1i2l4hk2k6k89908kx13m2bcs3xrsilblxlmrn0jp8rlbyz7k09j";
    };
  }
)
