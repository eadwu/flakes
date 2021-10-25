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
    version = "1635140575";

    src = fetchurl {
      url = "https://az764295.vo.msecnd.net/insider/45fdad3a10d437fb0a45cc008eecca7c35021fb2/code-insider-x64-1635140575.tar.gz";
      sha256 = "0z31wb58r6liggks1sz5a2chi6dfkhhif97hvlkanc4mwj2w1sqp";
    };
  }
)
