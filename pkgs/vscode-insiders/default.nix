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
    version = "1651124689";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/7fc8af4e2d8f50a3950b809b9beab86fa5135f29/code-insider-x64-1651124689.tar.gz";
      sha256 = "1ih5ywd2jl1nb41c1w9hs9z7gbfmrqmhgcvrgrly3ihlph9g48bl";
    };

    postPatch = "";
  }
)
