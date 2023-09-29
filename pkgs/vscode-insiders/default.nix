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
    version = "1695953113";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/ba36ae4dcca57ba64a9b61e5f4eca88b6e0bc4db/code-insider-x64-1695953113.tar.gz";
      sha256 = "1h0i5xhcirmb6wi60dcbvqcbyf447z9f9ahfdg8zzx3ikr4ysfwi";
    };
  }
)
