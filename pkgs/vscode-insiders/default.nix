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
    version = "1681212140";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/079272e4a37ceecd22dcebc3566bb46c8580a13c/code-insider-x64-1681212140.tar.gz";
      sha256 = "1s1kf875bi6nv6s7z0lhhnmb4kssdid0d4fj6jpd884hi8yfg9hp";
    };
  }
)
