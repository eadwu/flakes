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
    version = "1686808644";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/6545c4c2671127c323182225963fcd732e1fbcc5/code-insider-x64-1686808644.tar.gz";
      sha256 = "0dlwyrvh1vwrid5slsv1h55xq7vgq9ih9ral97sz28i10n90harz";
    };
  }
)
