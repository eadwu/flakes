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
    version = "1663307112";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6a5e3aad96929a7d35e09ed8d22e87a72bd16ff6/code-insider-x64-1663307112.tar.gz";
      sha256 = "0j8krq2vynmh837jf17vwm323s4vmrwz4zfymyjx7hvj1wnrnc9q";
    };
  }
)
