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
    version = "1682055901";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/b19017cea80b6157aa8214c984a70022e77526f2/code-insider-x64-1682055901.tar.gz";
      sha256 = "07a4ym7a6slq1w7v0bqrxcp21bvgxiz0ybr1199jf92v6fwivnq4";
    };
  }
)
