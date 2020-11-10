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
    version = "1604995637";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/65f805d98e798b979901b74d4c8810c05455b792/code-insider-x64-1604995637.tar.gz";
      sha256 = "07c0508lszz0n2fwbknkpcbybj1v4q45w57mxqsya1dn5zap65hq";
    };
  }
)
