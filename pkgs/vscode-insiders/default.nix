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
    version = "1654234940";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/40840d1d58f4a84b0b3cb6ab5433124274bf3ca1/code-insider-x64-1654234940.tar.gz";
      sha256 = "0ldyhy8vvgj0n1bw46if9xmzd5pax4r12h8rzg4rs7zh2b3r7csf";
    };

    postPatch = "https://az764295.vo.msecnd.net/insider/40840d1d58f4a84b0b3cb6ab5433124274bf3ca1/code-insider-x64-1654234940.tar.gz";
  }
)
