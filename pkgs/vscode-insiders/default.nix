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
    version = "1657604772";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/112b2d050c8398e74360fcb2219af76ad51e8aa5/code-insider-x64-1657604772.tar.gz";
      sha256 = "0574jysldsfzw8l1m59ab3m5inp9ad109r4y9ixrnz2kmqcnc8za";
    };
  }
)
